`timescale 1ns / 1ps

//When the blocks innevitably breaks and I need to refresh it
//clear the output products and run:
//update_module_reference [get_bd_cells main]

module main(
        //Main
        input wire clk,
        input wire rst,

        //The output of the multiplier
        input wire [79:0] complex_return_tdata,
        input wire complex_return_tvalid,
        
        //Input to the multiplier
        output reg signed [31:0] complex_value_a_tdata = 32'sd0,
        output reg               complex_value_a_tvalid = 1'b0,
        
        output reg signed [31:0] complex_value_b_tdata = 32'sd0,
        output reg               complex_value_b_tvalid = 1'b0,
        
        //Final output (for testing) 
        output reg signed [65:0] result = 66'sd0,
        
        //MAIN INPUT BRAM Reader
        (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL" *)
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main CLK" *)
        output reg        bram_main_clkb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main RST" *)
        output reg        bram_main_rstb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main EN" *)
        output reg        bram_main_enb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main WE" *)
        output reg [3:0]  bram_main_web,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main ADDR" *)
        output reg [31:0] bram_main_addrb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DIN" *)
        output reg [31:0] bram_main_dinb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DOUT" *)
        input  wire [31:0] bram_main_doutb
        
        //Final LUT Read/Write (1)
    );
    
    wire signed [32:0] real_sliced = $signed(complex_return_tdata[32:0]);
    wire signed [32:0] imag_sliced = $signed(complex_return_tdata[72:40]);
    
    reg signed [31:0] complex1 = {16'sd10,16'sd10};
    reg signed [31:0] complex2 = {16'sd13,16'sd13};
    
    reg [1:0] state = 2'd0;
    localparam IDLE = 2'd0,
               WAIT = 2'd1,
               FREEZE = 2'd2;
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
           complex1 <= {16'sd10,16'sd10};
           complex2 <= {16'sd13,16'sd13};
            
           state <= 2'd0;
        end else case(state)
            IDLE: begin
                complex_value_a_tdata <= complex1;
                complex_value_b_tdata <= complex2;
                complex_value_a_tvalid <= 1'b1;
                complex_value_b_tvalid <= 1'b1;
                state <= WAIT;
            end
            
            WAIT: begin
                complex_value_a_tvalid <= 1'b0;
                complex_value_b_tvalid <= 1'b0;
                if(complex_return_tvalid) begin
                    result <= {imag_sliced,real_sliced};
                    state <= FREEZE;
                end
            end
            
            FREEZE: begin
            end
        endcase   
    end
endmodule

module fft_stage#(
    parameter data_size = 32,
    parameter number_samples = 512,
    parameter split = data_size/2,
    parameter address_size = $clog2(data_size)
)(
    input wire clk,
    input wire rst,
    
    input wire [data_size-1:0] shift_in,
    output wire [data_size-1:0] shift_out,
    output wire [data_size-1:0] shift_out_valid
);
    reg signed [data_size-1:0] fifo_shift_in = 'sd0;
    reg fifo_shift_enable = 0;
    wire signed [data_size-1:0] fifo_output;
    wire fifo_reset_busy;
    
    reg signed [split-1:0] multiplier_input_a_real = 'sd0;
    reg signed [split-1:0] multiplier_input_b_real = 'sd0;
    reg signed [split-1:0] multiplier_input_a_img = 'sd0;
    reg signed [split-1:0] multiplier_input_b_img = 'sd0;
    
    wire signed [data_size:0] multiplier_output_real;
    wire signed [data_size:0] multiplier_output_img;
    
    //Enabling both to start streaming values
    reg multiplier_enable = 0;
    wire multiplier_input_a_valid = multiplier_enable;
    wire multiplier_input_b_valid = multiplier_enable;
    
    wire multiplier_output_valid;
    
    FIFO #(.data_size(data_size),.memory_size(number_samples)) fifo (
    .clk (clk),
    .rst (rst),
    .value_shift_in (fifo_shift_in),
    .shift_in_enable (fifo_shift_enable),
    .shift_out (fifo_output),
    .reset_busy(fifo_reset_busy)
    );
    
    cmp_div2 mult (
      .aclk(clk),                              // input wire aclk
      .s_axis_a_tvalid(multiplier_input_a_valid),        // input wire s_axis_a_tvalid
      .s_axis_a_tdata({multiplier_input_a_img,multiplier_input_a_real}),          // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(multiplier_input_b_valid),        // input wire s_axis_b_tvalid
      .s_axis_b_tdata({multiplier_input_b_img,multiplier_input_b_real}),          // input wire [31 : 0] s_axis_b_tdata
      
      .m_axis_dout_tvalid(multiplier_output_valid),  // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata({multiplier_output_img,multiplier_output_real})    // output wire [63 : 0] m_axis_dout_tdata
    );
    
    reg full = 0;
    reg [address_size-1:0] initial_values_shifted = 0;
    
    
    always @(posedge clk) begin
        if(!full) begin
            fifo_shift_in <= shift_in;
        end
    end
    
endmodule

module butterfly#(
    parameter data_size = 32,
    parameter split = data_size/2
)(
    input wire clk,
    input wire signed [data_size-1:0] inputA,
    input wire signed [data_size-1:0] inputB,
    output reg signed [data_size-1:0] sum,
    output reg signed [data_size-1:0] diff
);
    
    wire signed [split-1:0] a_real = $signed(inputA[split-1:0]);
    wire signed [split-1:0] b_real = $signed(inputB[split-1:0]);
    wire signed [split-1:0] a_img  = $signed(inputA[data_size-1:split]);
    wire signed [split-1:0] b_img  = $signed(inputB[data_size-1:split]);
    
    // Scal;ed by 2
    wire signed [split:0] real_sum = $signed(a_real + b_real); 
    wire signed [split:0] img_sum = $signed(a_img + b_img);
    wire signed [split:0] real_diff = $signed(a_real - b_real);
    wire signed [split:0] img_diff = $signed(a_img - b_img);
    
    wire signed [split-1:0] scaled_real_sum = real_sum[split:1]; 
    wire signed [split-1:0] scaled_img_sum = img_sum[split:1];
    wire signed [split-1:0] scaled_real_diff = real_diff[split:1];
    wire signed [split-1:0] scaled_img_diff = img_diff[split:1];
    
    always @(posedge clk) begin
        sum <= {scaled_img_sum, scaled_real_sum};
        diff <= {scaled_img_diff, scaled_real_diff};
    end
endmodule

module FIFO #( //Made with regular registers becaues all FIFOs are less than one BRAM block
    parameter data_size = 32,
    parameter memory_size = 512,
    parameter address_size = $clog2(memory_size)
    )(
    input wire clk,
    input wire rst,
    input wire [data_size-1:0] value_shift_in,
    input wire shift_in_enable,
    input wire [address_size-1:0] random_read_address,
    output wire [data_size-1:0] random_read_output,
    output reg [data_size-1:0] shift_out,
    output reg reset_busy
    );
    
    (* ram_style = "distributed" *) reg [data_size-1:0] memory [0:memory_size-1]; //Otherwise it might become huge flip-flops
    assign random_read_output = memory[random_read_address];
    
    reg [address_size-1:0] write_address = 0;
    reg [address_size-1:0] reset_address = 0;
    
    integer i;
    initial begin //Zero memory for sims
        for(i=0;i<memory_size;i = i + 1) begin
            memory[i] = 0;
        end
        reset_busy = 0;
        reset_address = 0;
        write_address = 0;
        shift_out = 0;
    end

    
    always @(posedge clk) begin
        if(!rst)begin
            reset_busy <= 1;
            reset_address <= 0;
            write_address <= 0;
            shift_out <= 0;
        end else if(reset_busy) begin
            if(reset_address < memory_size-1) begin
                memory[reset_address] <= 0;
                reset_address <= reset_address + 1;
            end else begin
                memory[reset_address] <= 0;
                reset_busy <= 0;
            end
        end else if(shift_in_enable) begin
            shift_out <= memory[write_address];
            memory[write_address] <= value_shift_in;
             write_address <= (write_address == memory_size-1) ? 0 : write_address + 1;
        end
    end
endmodule

module BRAM #( //648 KB total, block size of 36kb (4.5kB)
    parameter data_size = 32,
    parameter memory_size = 1024,
    parameter address_size = $clog2(memory_size)
    )(
        input wire clk,
        input wire write_enable,
        input wire [address_size-1:0] write_address,
        input wire [data_size-1:0] write_data,
        input wire [address_size-1:0] read_address,
        output reg [data_size-1:0] read_out
    );
    (* ram_style = "block" *) reg [data_size-1:0] memory [0:memory_size-1];
    
    integer i;
    initial begin //Zero memory for sims
        for(i=0;i<memory_size;i = i + 1) begin
            memory[i] = 0;
        end
        read_out = 0;
    end
    
    always @(posedge clk) begin
        if (write_enable) begin
            memory[write_address] <= write_data;
        end
    end
    
    always @(posedge clk) begin
        read_out <= memory[read_address];
    end
endmodule

module URAM #( // 2.25 MB total, block size of 288 kb (36 kB)
    parameter data_size = 32,
    parameter memory_size = 512,
    parameter address_size = $clog2(memory_size)
    )(
        input wire clk,
        input wire write_enable,
        input wire [address_size-1:0] write_address,
        input wire [data_size-1:0]write_data,
        input wire [address_size-1:0] read_address,
        output reg [data_size-1:0] read_out
    );
    (* ram_style = "ultra" *) reg [data_size-1:0] memory [0:memory_size-1];
    
    always @(posedge clk) begin
        if (write_enable) begin
            memory[write_address] <= write_data;
        end
    end
    
    always @(posedge clk) begin
        read_out <= memory[read_address];
    end
endmodule