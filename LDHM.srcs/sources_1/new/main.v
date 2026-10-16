`timescale 1ns / 1ps
//`include "twiddle.v"

//When the blocks innevitably breaks and I need to refresh it
//clear the output products and run:
//update_module_reference [get_bd_cells main]

module main(
        //Main
        (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF bram_main, ASSOCIATED_RESET rst" *)
        input wire clk,
        (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
        input wire rst,

        //The output of the multiplier
        input wire [79:0] complex_return_tdata,
        input wire complex_return_tvalid,
        
        //Input to the multiplier
        output reg signed [31:0] complex_value_a_tdata = 32'sd0,
        output reg               complex_value_a_tvalid = 1'b0,
        
        output reg signed [31:0] complex_value_b_tdata = 32'sd0,
        output reg               complex_value_b_tvalid = 1'b0,
        
        //Final output (for testing/status) 
        output reg signed [65:0] result = 66'sd0,
        
        //MAIN INPUT BRAM Reader
        (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL" *)
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main CLK" *)
        output wire       bram_main_clkb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main RST" *)
        output wire       bram_main_rstb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main EN" *)
        output reg        bram_main_enb = 1'b1,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main WE" *)
        output reg [3:0]  bram_main_web = 4'b0000,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main ADDR" *)
        output reg [31:0] bram_main_addrb = 32'd0,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DIN" *)
        output reg [31:0] bram_main_dinb = 32'd0,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DOUT" *)
        input  wire [31:0] bram_main_doutb
    );

    localparam BIG_N = 512;

    // Connect BRAM Port B Clock and Active-High Reset
    assign bram_main_clkb = clk;
    assign bram_main_rstb = ~rst;

    localparam STATE_IDLE        = 2'd0;
    localparam STATE_READ_BRAM   = 2'd1;
    localparam STATE_FLUSH_ZEROS = 2'd2;
    localparam STATE_DONE        = 2'd3;

    reg [1:0] state = STATE_IDLE;
    reg [8:0] addr_counter = 9'd0;
    reg [9:0] out_count    = 10'd0;
    reg       bram_read_valid = 1'b0;
    reg       fft_done = 1'b0;

    // 1-cycle delay to compensate for synchronous BRAM read latency
    always @(posedge clk) begin
        if (!rst) begin
            bram_read_valid <= 1'b0;
        end else begin
            bram_read_valid <= (state == STATE_READ_BRAM);
        end
    end

    wire        fft_shift_in_enable = bram_read_valid || (state == STATE_FLUSH_ZEROS);
    wire [31:0] fft_shift_in        = (bram_read_valid) ? bram_main_doutb : 32'd0;
    wire [31:0] fft_shift_out;
    wire        fft_shift_out_valid;

    full_fft #(
        .big_n(BIG_N),
        .data_size(32)
    ) dut_fft (
        .clk             (clk),
        .rst             (rst),
        .inverse         (1'b0),
        .shift_in_enable (fft_shift_in_enable),
        .shift_in        (fft_shift_in),
        .shift_in_valid  (fft_shift_in_enable),
        .shift_out       (fft_shift_out),
        .shift_out_valid (fft_shift_out_valid)
    );

    // Bit-reversed bin index tracking
    wire [8:0] out_bin = {
        out_count[0], out_count[1], out_count[2],
        out_count[3], out_count[4], out_count[5],
        out_count[6], out_count[7], out_count[8]
    };

    always @(posedge clk) begin
        if (!rst) begin
            state           <= STATE_IDLE;
            addr_counter    <= 9'd0;
            out_count       <= 10'd0;
            bram_main_addrb <= 32'd0;
            fft_done        <= 1'b0;
            result          <= 66'sd0;
        end else begin
            case (state)
                STATE_IDLE: begin
                    state           <= STATE_READ_BRAM;
                    addr_counter    <= 9'd0;
                    bram_main_addrb <= 32'd0;
                end

                STATE_READ_BRAM: begin
                    if (addr_counter == BIG_N - 1) begin
                        state <= STATE_FLUSH_ZEROS;
                    end else begin
                        addr_counter    <= addr_counter + 9'd1;
                        bram_main_addrb <= (addr_counter + 9'd1) << 2;
                    end
                end

                STATE_FLUSH_ZEROS: begin
                    if (fft_shift_out_valid && (out_count == BIG_N - 1)) begin
                        state    <= STATE_DONE;
                        fft_done <= 1'b1;
                    end
                end

                STATE_DONE: begin
                    fft_done <= 1'b1;
                end
            endcase

            if (fft_shift_out_valid && (out_count < BIG_N)) begin
                out_count <= out_count + 10'd1;
            end

            // Status output: [65]=Done, [64]=Valid, [49:41]=Sample Index, [40:32]=Bin Index, [31:0]=Output Data
            result <= {fft_done, fft_shift_out_valid, 14'd0, out_count[8:0], out_bin, fft_shift_out};
        end
    end

endmodule    

module full_fft#(
    parameter big_n = 512,
    parameter data_size = 32,
    parameter number_stages = $clog2(big_n)
)(
    input wire clk,
    input wire rst,
    input wire inverse,
    input wire shift_in_enable,
    input wire [data_size-1:0] shift_in,
    input wire shift_in_valid,
    output wire [data_size-1:0] shift_out,
    output wire shift_out_valid,
    output wire [$clog2(big_n)-1:0] bit_reverse_address
);
    wire signed [data_size-1:0] stage_data [0:number_stages];
    wire stage_valid [0:number_stages];
    
    assign stage_data[0] = shift_in;
    assign stage_valid[0] = shift_in_enable;
    
    genvar i;
    generate
        for(i = 0; i < number_stages; i = i +1) begin : stages
            fft_stage#(
                .data_size(data_size),
                .fifo_size(big_n >> (i+1))
            ) stage (
                .clk(clk),
                .rst(rst),
                .inverse(inverse),                
                .shift_in_enable(stage_valid[i]),
                .shift_in(stage_data[i]),
                .shift_out(stage_data[i+1]),
                .shift_out_valid(stage_valid[i+1])
            );
        end
    endgenerate
    
    assign shift_out = stage_data[number_stages];
    assign shift_out_valid = stage_valid[number_stages];
    
    reg [$clog2(big_n)-1:0] counter = 0;
    
    genvar j;
    for(i = 0; i < $clog2(big_n); i = i + 1) begin
        assign bit_reverse_address[$clog2(big_n) - i - 1] = counter[i];
    end
    
    always @(posedge clk) begin
        if(shift_out_valid) begin
            counter = counter + 1;
        end
    end
endmodule

module fft_stage#(
    parameter data_size = 32,
    parameter fifo_size = 256,
    parameter split = data_size/2,
    parameter address_size = (fifo_size <= 1) ? 1 : $clog2(fifo_size)
)(
    input wire clk,
    input wire rst,
    input wire inverse,
    
    input wire shift_in_enable,
    input wire signed [data_size-1:0] shift_in,
    output reg signed [data_size-1:0] shift_out,
    output reg shift_out_valid
);

    wire signed [split-1:0] multiplier_a_real;
    wire signed [split-1:0] multiplier_a_img;
    wire signed [split-1:0] multiplier_b_real;
    wire signed [split-1:0] multiplier_b_img;
    
    wire signed [data_size-1:0] multiplier_output_real;
    wire signed [data_size-1:0] multiplier_output_img;
    
    wire multiplier_output_valid;
    
    cmp_div2 mult ( //Vivado generated template
      .aclk(clk),                              // input wire aclk
      .aclken(shift_in_enable | ~rst),          // input wire aclken
      .aresetn(rst),                        // input wire aresetn
      .s_axis_a_tvalid(shift_in_enable),        // input wire s_axis_a_tvalid
      .s_axis_a_tdata({multiplier_a_img,multiplier_a_real}),          // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(shift_in_enable),        // input wire s_axis_b_tvalid
      .s_axis_b_tdata({multiplier_b_img,multiplier_b_real}),          // input wire [31 : 0] s_axis_b_tdata
      
      .m_axis_dout_tvalid(multiplier_output_valid),  // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata({multiplier_output_img,multiplier_output_real})    // output wire [63 : 0] m_axis_dout_tdata
    );

    wire signed [data_size-1:0] butterfly_output_sum;
    wire signed [data_size-1:0] butterfly_output_diff; 
    
    wire signed [data_size-1:0] fifo_shift_out;
    
    butterfly #(.data_size(data_size)) butter(
        .input_a (fifo_shift_out),
        .input_b (shift_in),
        .sum (butterfly_output_sum),
        .diff (butterfly_output_diff)
    );
    
    wire signed [data_size-1:0] rounder_input_real = multiplier_output_real;
    wire signed [(data_size/2)-1:0] rounder_output_real;
    
    rounder_half_bits #(.data_size(data_size)) half_bits_real (
        .initial_value(rounder_input_real),
        .rounded_value(rounder_output_real)
    );
    
    wire signed [data_size-1:0] rounder_input_img = multiplier_output_img;
    wire signed [(data_size/2)-1:0] rounder_output_img;
    
    rounder_half_bits #(.data_size(data_size)) half_bits_img (
        .initial_value(rounder_input_img),
        .rounded_value(rounder_output_img)
    );
    
    reg [$clog2(fifo_size):0] roll_over_clock = 0;
    
    wire signed [data_size-1:0] fifo_shift_in = (!roll_over_clock[$clog2(fifo_size)]) ? shift_in : butterfly_output_diff;
    
    FIFO #(.data_size(data_size),.memory_size(fifo_size)) fifo (
    .clk (clk),
    .rst (rst),
    .value_shift_in (fifo_shift_in),
    .shift_in_enable (shift_in_enable),
    .shift_out (fifo_shift_out)
    );    
    
    wire [9:0] twiddle_lookup_little_n;
    localparam [9:0] twiddle_lookup_big_n = fifo_size * 2;
    wire signed [split-1:0] twiddle_real;
    wire signed [split-1:0] twiddle_imag;
    
    twiddle twiddle_lookup( // Maximum is 512
        .big_n(twiddle_lookup_big_n),
        .little_n(twiddle_lookup_little_n),
        .inverse_coefficients(inverse),
        .twiddle_factor({twiddle_imag,twiddle_real})
    );
    
    
    reg initial_fill_done = 0;
    localparam multiplier_latency = 5; //4 multiplier, 1 subtraction
    reg [data_size-1:0] allignment_shift_register [0:multiplier_latency-1];

    wire signed [data_size-1:0] allignment_shift_register_output = allignment_shift_register[multiplier_latency-1];
    
    wire [$clog2(fifo_size):0] delayed_rollover_clock = (roll_over_clock - multiplier_latency);
    wire delayed_phase = delayed_rollover_clock[$clog2(fifo_size)];
    
    assign twiddle_lookup_little_n = (fifo_size <= 1) ? 10'd0 : roll_over_clock[address_size-1:0];
    assign multiplier_a_real = fifo_shift_out[split-1:0];
    assign multiplier_a_img = fifo_shift_out[data_size-1:split];
    assign multiplier_b_real = twiddle_real;
    assign multiplier_b_img = twiddle_imag;
    
    reg signed [data_size-1:0] multiplied_diff = 0;
    
    localparam fill_target = fifo_size + multiplier_latency - 1;
    reg [$clog2(fill_target+1)-1:0] fill_counter = 0;
    
    always @(posedge clk) begin
        if(!rst) begin
            roll_over_clock <= 0;
            shift_out_valid <= 1'b0;
            shift_out <= 0;
            initial_fill_done <= 1'b0;
            multiplied_diff <= 0;
            fill_counter <= 0;
        end else if (shift_in_enable) begin
            roll_over_clock <= roll_over_clock + 1;
            multiplied_diff <= {rounder_output_img,rounder_output_real};
            //Need to change if latency changes because for loops are hard
            allignment_shift_register[0] <= butterfly_output_sum;
            allignment_shift_register[1] <= allignment_shift_register[0];
            allignment_shift_register[2] <= allignment_shift_register[1];
            allignment_shift_register[3] <= allignment_shift_register[2];            
            allignment_shift_register[4] <= allignment_shift_register[3];            
            
            if(!initial_fill_done) begin
                if(fill_counter == fill_target) begin
                    initial_fill_done <= 1'b1;
                end else begin
                    fill_counter <= fill_counter + 1'b1;
                end
            end
            
            shift_out_valid <= initial_fill_done;
            if (!delayed_phase) begin //P0
                shift_out <= multiplied_diff;
            end else begin //P1
                shift_out <= allignment_shift_register_output;
            end
        end else shift_out_valid <= 0;
    end
    
endmodule

module rounder_half_bits #( //Q3.29 to Q1.15
    parameter data_size = 32,
    parameter rounding_size = data_size/2
)(
    input wire signed [data_size-1:0] initial_value,
    output reg signed [rounding_size-1:0] rounded_value
);
    wire signed [data_size:0] rounding_constant = $signed({{data_size{1'b0}},1'b1} << (rounding_size - 3));
    wire signed [data_size:0] rounded = $signed({initial_value[data_size-1],initial_value}) + rounding_constant;
    
    wire overflow_positive = (!rounded[data_size] && (|rounded[data_size-1:data_size-3]));
    wire overflow_negative = (rounded[data_size] && (!(&rounded[data_size-1:data_size-3])));
    
    always @(*) begin
        if (overflow_positive) rounded_value = {1'b0,{(rounding_size-1){1'b1}}};
        else if (overflow_negative) rounded_value = {1'b1,{(rounding_size-1){1'b0}}};
        else rounded_value = rounded[data_size-3:rounding_size-2];
    end
 
endmodule

module butterfly#(
    parameter data_size = 32,
    parameter split = data_size/2
)(
    input wire signed [data_size-1:0] input_a,
    input wire signed [data_size-1:0] input_b,
    output reg signed [data_size-1:0] sum,
    output reg signed [data_size-1:0] diff
);
    
    wire signed [split-1:0] a_real = $signed(input_a[split-1:0]);
    wire signed [split-1:0] b_real = $signed(input_b[split-1:0]);
    wire signed [split-1:0] a_img  = $signed(input_a[data_size-1:split]);
    wire signed [split-1:0] b_img  = $signed(input_b[data_size-1:split]);
    
    // Scal;ed by 2
    wire signed [split:0] real_sum = a_real + b_real; 
    wire signed [split:0] img_sum = a_img + b_img;
    wire signed [split:0] real_diff = a_real - b_real;
    wire signed [split:0] img_diff = a_img - b_img;
    
    wire signed [split-1:0] scaled_real_sum = real_sum[split:1] + (real_sum[0] & real_sum[split]); 
    wire signed [split-1:0] scaled_img_sum = img_sum[split:1] + (img_sum[0] & img_sum[split]);
    wire signed [split-1:0] scaled_real_diff = real_diff[split:1] + (real_diff[0] & real_diff[split]);
    wire signed [split-1:0] scaled_img_diff = img_diff[split:1] + (img_diff[0] & img_diff[split]);
    
    always @(*) begin
        sum = {scaled_img_sum, scaled_real_sum};
        diff = {scaled_img_diff, scaled_real_diff};
    end
endmodule

module FIFO #( //Made with regular registers becaues all FIFOs are less than one BRAM block
    parameter data_size = 32,
    parameter memory_size = 256,
    parameter address_size = (memory_size <= 1) ? 1 : $clog2(memory_size)
    )(
    input wire clk,
    input wire rst,
    input wire [data_size-1:0] value_shift_in,
    input wire shift_in_enable, 
    output wire [data_size-1:0] shift_out
    );
    
    (* ram_style = "distributed" *) reg [data_size-1:0] memory [0:memory_size-1]; //Otherwise it might become huge flip-flops
    
    reg [address_size-1:0] write_address = 0;
      
    integer i;
    initial begin //Zero memory for sims
        for(i=0;i<memory_size;i = i + 1) begin
            memory[i] = 0;
        end
        write_address = 0;
    end
    
    assign shift_out = memory[write_address];
    
    always @(posedge clk) begin
        if(!rst)begin
            write_address <= 0;
        end else if(shift_in_enable) begin
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