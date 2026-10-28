`timescale 1ns / 1ps
//`include "twiddle.v"

//When the blocks innevitably breaks and I need to refresh it
//clear the output products and run:
//update_module_reference [get_bd_cells main]

//ASM VARIABLES:
// Lambda = 525 nm
// delta x = 1.12 micro meters
// N = 512
// z = ?????

 module main(
        //Main
        (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF bram_main, ASSOCIATED_RESET rst" *)
        input wire clk,
        (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
        input wire rst,
        
        //MAIN INPUT BRAM Reader
        (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL" *)
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main CLK" *)
        output wire       bram_main_clkb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main RST" *)
        output wire       bram_main_rstb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main EN" *)
        output reg        bram_main_enb = 1'b1,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main WE" *)
        output reg [3:0]  bram_main_write_enable_byte = 4'b0000,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main ADDR" *)
        output reg [31:0] bram_main_addrb = 32'd0,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DIN" *)
        output reg [31:0] bram_main_dinb = 32'd0,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DOUT" *)
        input  wire [31:0] bram_main_doutb,
        
        //METADATA BRAM
        (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL" *)
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata CLK" *)
        output wire       bram_metadata_clkb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata RST" *)
        output wire       bram_metadata_rstb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata EN" *)
        output reg        bram_metadata_enb = 1'b1,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata WE" *)
        output reg [3:0]  bram_metadata_write_enable_byte = 4'b0000,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata ADDR" *)
        output reg [31:0] bram_metadata_addrb = 32'd0,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata DIN" *)
        output reg [31:0] bram_metadata_dinb = 32'd0,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata DOUT" *)
        input  wire [31:0] bram_metadata_doutb
    );
    
    //Parameters
    localparam fft_square_size = 512;
    localparam fft_frame_address_size = $clog2(fft_square_size);
    
    localparam number_addresses = fft_square_size * fft_square_size;
    localparam full_address_size = $clog2(number_addresses);
    
    localparam data_size = 32;
    localparam entry_address_size = $clog2(data_size);
    localparam data_byte_size = data_size/8;
    
    //CPU-BRAM LINKS
    assign bram_main_clkb = clk;
    assign bram_metadata_clkb = clk;
    assign bram_main_rstb = ~rst;
    assign bram_metadata_rstb = ~rst;
    
    localparam main_bram_address_size = 32; //bits in address editor
    localparam main_bram_data_size = 8; //Data coming in is BW 8 bits
    localparam main_bram_read_stop_address = fft_square_size*fft_square_size; //Number of bytes
    localparam main_bram_write_stop_address = main_bram_read_stop_address * 2;
    
    //BRAM byte addressign rubbish
    wire [7:0] main_bram_read_pixel [0:3]; //LITTLE ENDIAN !!!!!!!!!!!!!!!!!
    assign main_bram_read_pixel[3] = bram_main_doutb[31:24];
    assign main_bram_read_pixel[2] = bram_main_doutb[23:16];
    assign main_bram_read_pixel[1] = bram_main_doutb[15:8];
    assign main_bram_read_pixel[0] = bram_main_doutb[7:0];
    reg [1:0] main_bram_byte_offset = 0;
    //FFT Unit
    wire fft_reset;
    
    reg fft_inverse = 0;
    reg [8:0] fft_scale_bitmask = 0;
    reg fft_shift_in_enable = 0;
    reg [data_size-1:0] fft_shift_in = 0;
    reg fft_shift_in_valid = 0;
    wire [data_size-1:0] fft_shift_out;
    wire fft_shift_out_valid;
    wire [fft_frame_address_size-1:0] fft_reversed_address;
    
    reg [fft_frame_address_size-1:0] fft_row = 0;
    reg [fft_frame_address_size-1:0] fft_col = 0;
    
    full_fft#(
    .big_n(fft_square_size),
    .data_size(data_size)
    ) fft_unit (
    .clk(clk),
    .rst(fft_reset), //Need to assert for at least 2 clock cycles, so handle in its own reset 
    .inverse(fft_inverse),
    .scale_bitmask(fft_scale_bitmask),
    .shift_in_enable(fft_shift_in_enable),
    .shift_in(fft_shift_in),
    .shift_in_valid(fft_shift_in_valid),
    .shift_out(fft_shift_out),
    .shift_out_valid(fft_shift_out_valid),
    .bit_reverse_address(fft_reversed_address)
    );
    
    //Ping-pong banks for calculations. 
    reg [full_address_size:0] bank_one_read_address = 0;
    reg [full_address_size-1:0] bank_one_write_address = 0;
    reg [data_size-1:0] bank_one_write_data = 0;
    reg bank_one_write_enable = 0;
    wire [data_size-1:0] bank_one_read_data;
    
    URAM #( 
        .data_size(data_size),
        .memory_size(fft_square_size * fft_square_size)
    ) bank_one (
        .clk(clk),
        .write_enable(bank_one_write_enable),
        .write_address(bank_one_write_address),
        .write_data(bank_one_write_data),
        .read_address(bank_one_read_address[full_address_size-1:0]),
        .read_out(bank_one_read_data)
    );
    
    reg [full_address_size:0] bank_two_read_address = 0;
    reg [full_address_size-1:0] bank_two_write_address = 0;
    reg [data_size-1:0] bank_two_write_data = 0;
    reg bank_two_write_enable = 0;
    wire [data_size-1:0] bank_two_read_data;
    
    URAM #(
        .data_size(data_size),
        .memory_size(fft_square_size * fft_square_size)
    ) bank_two (
        .clk(clk),
        .write_enable(bank_two_write_enable),
        .write_address(bank_two_write_address),
        .write_data(bank_two_write_data),
        .read_address(bank_two_read_address[full_address_size-1:0]),
        .read_out(bank_two_read_data)
    );
    
    // RECONSTRUCTION PIPELINE
    
    //Squarers (ALWAYS 3 CLOCK CYCLES LATER)
    //Reconstruction values (Not sure if all are necessary)
    reg signed [8:0] m = 9'd0;
    reg signed [8:0] n = 9'd0;
    
    wire [17:0] squarer_n_output;
    squarer squarer_n ( //VIVADO TEMPLATE
      .CLK(clk),  // input wire CLK
      .A(n),      // input wire [8 : 0] A
      .B(n),      // input wire [8 : 0] B
      .P(squarer_n_output)      // output wire [17 : 0] P
    );
    
    wire [17:0] squarer_m_output;
    squarer squarer_m ( //Vivado Template
      .CLK(clk),  // input wire CLK
      .A(m),      // input wire [8 : 0] A
      .B(m),      // input wire [8 : 0] B
      .P(squarer_m_output)      // output wire [17 : 0] P
    );
    
    reg [17:0] t1_multiplier_input = 18'd0;
    reg [23:0] reconstruction_constant = 24'b0;
    wire [41:0] t1_multiplier_output;
    wire [11:0] t1_multiplier_output_lut_address = t1_multiplier_output[30:19];
    t1_multiplier t1_applicator ( //VIVADO TEMPLATE
      .CLK(clk),  // input wire CLK
      .A(reconstruction_constant),      // input wire [23 : 0] A
      .B(t1_multiplier_input),      // input wire [17 : 0] B
      .P(t1_multiplier_output)      // output wire [41 : 0] P
    );
    
    wire [15:0] trig_lookup_sin_out;    
    wire [15:0] trig_lookup_cos_out;    
    trig_lookup sin_lut(
        .clk(clk),
        .argument(t1_multiplier_output_lut_address), //12 bits
        .sin_output(trig_lookup_sin_out), //16 bits
        .cos_output(trig_lookup_cos_out) //16 bits
    );
    
    wire signed [31:0] recon_complex_multiplier_output_imag;
    wire signed [31:0] recon_complex_multiplier_output_real;
    
    cmp_div2 recon_mult ( //Vivado generated template
      .aclk(clk),                              // input wire aclk
      .aclken(1'b1),          // input wire aclken
      .aresetn(rst),                        // input wire aresetn
      .s_axis_a_tvalid(1'b1),        // input wire s_axis_a_tvalid
      .s_axis_a_tdata({trig_lookup_sin_out,trig_lookup_cos_out}),          // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),        // input wire s_axis_b_tvalid
      .s_axis_b_tdata(bank_two_read_data),          // input wire [31 : 0] s_axis_b_tdata
      
      .m_axis_dout_tvalid(),  // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata({recon_complex_multiplier_output_imag,recon_complex_multiplier_output_real})    // output wire [63 : 0] m_axis_dout_tdata
    );
    
    wire [15:0] recon_complex_output_rounded_real;
    wire [15:0] recon_complex_output_rounded_imag;
    
    rounder_half_bits #(.data_size(32)) recon_rounder_real (
        .initial_value(recon_complex_multiplier_output_real),
        .rounded_value(recon_complex_output_rounded_real)
    );
    
    rounder_half_bits #(.data_size(32)) recon_rounder_imag (
        .initial_value(recon_complex_multiplier_output_imag),
        .rounded_value(recon_complex_output_rounded_imag)
    );
    wire [31:0] reconstructed_value = {recon_complex_output_rounded_imag,recon_complex_output_rounded_real};
    reg [4:0] recon_input_counter = 5'b0;
    
    // END RECONSTRUCTION PIPELINE
    localparam multiplier_latency = 3;
    localparam cmultiplier_latency = 4;
    localparam adder_latency = 1;
    localparam lut_latency = 1;
    localparam uram_read_latency = 1;
    localparam total_latency = multiplier_latency + adder_latency + multiplier_latency + lut_latency + cmultiplier_latency;
    localparam t1_multiplier_output_latency = total_latency - cmultiplier_latency - uram_read_latency;
    
    //Magnitude approximation
    wire [14:0] fft_out_abs_real = fft_shift_out[14:0] ^ {15{fft_shift_out[15]}}; //Only 1 bit error and clocks easier
    wire [14:0] fft_out_abs_imag = fft_shift_out[30:16] ^ {15{fft_shift_out[31]}};
    reg [14:0] magnitude_max = 15'd0;
    reg [14:0] magnitude_max_shift_register [0:1];
    reg [14:0] magnitude_min = 15'd0;
    reg [15:0] magnitude_min_sum = 16'd0;
    reg [15:0] magnitude_max_sum = 16'd0;
    reg [15:0] magnitude_final = 16'd0;
    reg magnitude_valid [0:3];
    reg [full_address_size - 1:0] magnitude_address_shift_register [0:3];
    
    // Output Scaling
    reg [1:0] output_shift = 2'd0;
    wire [18:0] magnitude_scaled = {3'd0, magnitude_final} << output_shift;
    wire [7:0] magnitude_byte = (|magnitude_scaled[18:15]) ? 8'b11111111 : magnitude_scaled[14:7];
        
    initial begin //for sims
        magnitude_valid[0] = 1'b0;
        magnitude_valid[1] = 1'b0;
        magnitude_valid[2] = 1'b0;
        magnitude_valid[3] = 1'b0;
        magnitude_address_shift_register[0] <= 0;
        magnitude_address_shift_register[1] <= 0;
        magnitude_address_shift_register[2] <= 0;
        magnitude_address_shift_register[3] <= 0;
    end  
    
    
    //GLOBAL STATES
    localparam [2:0] state_global_initialisation = 3'b000,
                     state_first_fft = 3'b001,
                     state_second_fft = 3'b010,
                     state_reconstruction = 3'b011,
                     state_first_ifft = 3'b100,
                     state_second_ifft = 3'b101,
                     state_magnitude = 3'b110,
                     state_transfer = 3'b111;
                     
    reg [2:0] global_state = state_global_initialisation;
                              
    //Initialisation Values                          
    localparam [2:0] initialisation_state_sync = 3'b000,
                     initialisation_state_latch = 3'b001,     
                     initialisation_state_poll = 3'b010,     
                     initialisation_state_read_t1 = 3'b011,     
                     initialisation_state_read_forward_mask = 3'b100,     
                     initialisation_state_read_inverse_mask = 3'b101;
    
    reg [2:0] initialisation_state = initialisation_state_sync;
    reg [8:0] first_fft_mask = 9'd0;
    reg [8:0] second_fft_mask = 9'd0;
    reg [8:0] first_ifft_mask = 9'd0;
    reg [8:0] second_ifft_mask = 9'd0;
    
    reg [7:0] dc_term = 8'd0;
    wire signed [8:0] read_minus_dc = $signed({1'b0, main_bram_read_pixel[main_bram_byte_offset]}) - $signed({1'b0,dc_term});
    
    localparam [31:0] metadata_address_t1 = 32'd0,
                      metadata_address_masks_forward = 32'd4,
                      metadata_address_masks_inverse = 32'd8,
                      metadata_address_frame_in = 32'd12,
                      metadata_address_frame_out = 32'd16;
    localparam [2:0] metadata_bram_latency = 2; //Just in case
                  
    //FFT Things
    localparam [1:0] fft_state_initialisation = 2'b00,
                     fft_state_input = 2'b01,
                     fft_state_flood = 2'b10,
                     fft_state_transition = 2'b11;
    
    reg [1:0] fft_state = fft_state_initialisation;
    reg [fft_frame_address_size-1:0] uram_write_counter = 0;
    
    //Reconstruction Things
    reg [16:0] square_m = 16'd0;
    reg [16:0] square_n = 16'd0;
    reg [17:0] sum_squares = 17'd0;
    reg [41:0] full_exponential_argument = 41'd0;
    wire [11:0] sin_argument = full_exponential_argument[30:19];
    localparam [1:0] reconstruction_state_initialisation = 2'b00,
                     reconstruction_state_read = 2'b01,
                     reconstruction_state_flush = 2'b10,
                     reconstruction_state_transition = 2'b11;

    reg [1:0] reconstruction_state = reconstruction_state_initialisation;
    //rst and wait
    reg [1:0] rst_latch = 0;
    reg fft_local_reset = 1;
    assign fft_reset = rst & !(|rst_latch) & fft_local_reset;
    reg [3:0] global_wait = 0;

    //Metadata bank
    reg [7:0] frame_input_counter = 4'b0;
    reg [7:0] frame_output_counter = 4'b0;
    
    always @(posedge clk) begin
        if(!rst || (|rst_latch)) begin 
            rst_latch <= rst_latch + 1; //Multiplier blocks must be held low for a couple clock cycles
            bram_main_write_enable_byte <= 4'b0000;
            bram_metadata_write_enable_byte <= 4'b0000;
            
            bram_main_addrb <= 32'd0;
            bram_metadata_addrb <= 32'd0;
            
            bram_main_dinb <= 32'd0;
            bram_metadata_dinb <= 32'd0;
            bram_metadata_write_enable_byte <= 4'b0;

            bank_one_write_enable <= 0;
            bank_one_write_address <= 0;
            bank_one_read_address <= 0;
            bank_two_write_enable <= 0;
            bank_two_write_address <= 0;
            bank_two_read_address <= 0;
            
            global_state <= state_global_initialisation;
            initialisation_state <= initialisation_state_sync;
            
            
            //FFT stuff
            fft_state <= fft_state_initialisation;
            fft_local_reset <= 1;
            fft_shift_in_enable <= 0;
            fft_inverse <= 0;
            global_wait <= 0;
            main_bram_byte_offset <= 0;
            
            reconstruction_state <= reconstruction_state_initialisation;
            
            magnitude_valid[0] <= 1'b0;
            magnitude_valid[1] <= 1'b0;
            magnitude_valid[2] <= 1'b0;
            magnitude_valid[3] <= 1'b0;
            
        end else if (global_wait > 0)begin // Easier than implementibg local waits
            global_wait <= global_wait - 1;
        end else begin 
            case(global_state)
                state_global_initialisation: begin 
                    case(initialisation_state)
                        initialisation_state_sync: begin
                            bram_metadata_write_enable_byte <= 4'b0000;
                            bram_metadata_addrb <= metadata_address_frame_in;
                            global_wait <= metadata_bram_latency;
                            initialisation_state <= initialisation_state_latch;
                        end
                        initialisation_state_latch: begin
                            frame_input_counter <= bram_metadata_doutb[7:0];
                            initialisation_state <= initialisation_state_poll;
                            
                        end
                        initialisation_state_poll: begin
                            if (bram_metadata_doutb[7:0] != frame_input_counter) begin
                                frame_input_counter <= bram_metadata_doutb[7:0];
                                bram_metadata_addrb <= metadata_address_t1;
                                global_wait <= metadata_bram_latency;
                                initialisation_state <= initialisation_state_read_t1;
                            end
                        end
                        initialisation_state_read_t1: begin
                            reconstruction_constant <= bram_metadata_doutb[23:0];
                            dc_term <= bram_metadata_doutb[31:24];
                            bram_metadata_addrb <= metadata_address_masks_forward;
                            global_wait <= metadata_bram_latency;
                            initialisation_state <= initialisation_state_read_forward_mask;
                        end
                        initialisation_state_read_forward_mask: begin
                            first_fft_mask <= bram_metadata_doutb[8:0];
                            second_fft_mask <= bram_metadata_doutb[17:9];
                            bram_metadata_addrb <= metadata_address_masks_inverse;
                            global_wait <= metadata_bram_latency;
                            initialisation_state <= initialisation_state_read_inverse_mask;
                        end
                        initialisation_state_read_inverse_mask: begin
                            first_ifft_mask <= bram_metadata_doutb[8:0];
                            second_ifft_mask <= bram_metadata_doutb[17:9];
                            output_shift <= bram_metadata_doutb[19:18];
                            initialisation_state <= initialisation_state_sync;
                            global_state <= state_first_fft;
                        end
                    endcase
                end

                state_first_fft: begin
                    case(fft_state)
                        fft_state_initialisation: begin
                            fft_scale_bitmask <= first_fft_mask;
                            fft_local_reset <= 1;
                            bram_main_addrb <= 32'd0;
                            main_bram_byte_offset <= 0;

                            bank_one_write_address <= 0;
                            bank_one_write_enable <= 0;
                            fft_row <= 0;
                            fft_col <= 0;
                            uram_write_counter <= 0;

                            fft_state <= fft_state_input;
                        end

                        fft_state_input: begin
                            fft_shift_in <= {16'd0, read_minus_dc, 7'd0};
                            fft_shift_in_enable <= 1'b1; 
                            fft_shift_in_valid <= 1'b1;
                            main_bram_byte_offset <= main_bram_byte_offset + 1;
                            if(main_bram_byte_offset == 2'd2) bram_main_addrb <= bram_main_addrb + 32'd4;
                            if (bram_main_addrb >= main_bram_read_stop_address && main_bram_byte_offset == 2'd3) fft_state <= fft_state_flood; 
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) fft_col <= fft_col + 1;
                                bank_one_write_address <= {fft_reversed_address,fft_col};
                                bank_one_write_data <= fft_shift_out;
                                bank_one_write_enable <= 1;
                            end else bank_one_write_enable <= 0;
                        end

                        fft_state_flood: begin
                            fft_shift_in <= 32'd0;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) begin
                                    if (fft_col == fft_square_size - 1) begin
                                        fft_state <= fft_state_transition;
                                        fft_shift_in_enable <= 0;
                                    end else fft_col <= fft_col + 1;
                                end
                                bank_one_write_address <= {fft_reversed_address,fft_col};
                                bank_one_write_data <= fft_shift_out;
                                bank_one_write_enable <= 1;
                            end else bank_one_write_enable <= 0;
                        end
                        fft_state_transition: begin
                            global_state <= state_second_fft;
                            fft_state <= fft_state_initialisation;
                            fft_local_reset <= 0;
                            global_wait <= 4;
                            fft_shift_in_enable <= 0;
                            fft_shift_in_valid <= 1'b0;

                            bank_one_read_address <= 0;
                            bank_one_write_address <= 0;
                            bank_one_write_enable <= 0;
                            bank_two_read_address <= 0;
                            bank_two_write_address <= 0;
                            bank_two_write_enable <= 0;
                            bram_main_addrb <= 0;
                            bram_main_write_enable_byte <= 0;
                        end
                    endcase
                    
                end
                state_second_fft: begin //If needed can be pipelined into reconstruction
                    case(fft_state)
                        fft_state_initialisation: begin
                            fft_scale_bitmask <= second_fft_mask;
                            bank_one_read_address <= 1; // 0 is already on the read pins
                            bank_two_write_address <= 0;
                            bank_one_write_enable <= 0;
                            bank_two_write_enable <= 0;
                            uram_write_counter <= 0;
                            fft_local_reset <= 1;

                            fft_state <= fft_state_input;
                            fft_row <= 0;
                            fft_col <= 0;
                        end

                        fft_state_input: begin
                            fft_shift_in <= bank_one_read_data;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if (bank_one_read_address < number_addresses) bank_one_read_address <= bank_one_read_address + 1;
                            else fft_state <= fft_state_flood; 
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) fft_col <= fft_col + 1;
                                bank_two_write_address <= {fft_col,fft_reversed_address};
                                bank_two_write_data <= fft_shift_out;
                                bank_two_write_enable <= 1;
                            end else bank_two_write_enable <= 0;
                        end

                        fft_state_flood: begin
                            fft_shift_in <= 32'd0;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) begin
                                    if (fft_col == fft_square_size - 1) begin
                                        fft_state <= fft_state_transition;
                                        fft_shift_in_enable <= 0;
                                    end else fft_col <= fft_col + 1;
                                end
                                bank_two_write_address <= {fft_col,fft_reversed_address};
                                bank_two_write_data <= fft_shift_out;
                                bank_two_write_enable <= 1;
                            end else bank_two_write_enable <= 0;
                        end
                        fft_state_transition: begin
                            fft_local_reset <= 0;
                            fft_shift_in_enable <= 0;
                            fft_shift_in_valid <= 0;
                            global_wait <= 4;
                            global_state <= state_reconstruction;
                            fft_state <= fft_state_initialisation;

                            bank_one_read_address <= 0;
                            bank_one_write_address <= 0;
                            bank_one_write_enable <= 0;
                            bank_two_read_address <= 0;
                            bank_two_write_address <= 0;
                            bank_two_write_enable <= 0;
                            bram_main_addrb <= 0;
                            bram_main_write_enable_byte <= 0;
                        end
                    endcase
                    
                end
                state_reconstruction: begin
                    case(reconstruction_state)
                        reconstruction_state_initialisation: begin
                            m <= 0;
                            n <= 0;
                            recon_input_counter <= 0;
                            
                            bank_one_write_enable <= 0;
                            bank_one_write_address <= 0;
                            bank_two_read_address <= 0;
                            reconstruction_state <= reconstruction_state_read;
                        end
                        reconstruction_state_read: begin
                            // CHECK RECONSTRUCTION LOCALPARAMS
                            {m,n} <= {m,n} + 1;
                            t1_multiplier_input <= squarer_n_output + squarer_m_output;
                            if(recon_input_counter < total_latency) recon_input_counter <= recon_input_counter + 1;
                            if(recon_input_counter >= t1_multiplier_output_latency) bank_two_read_address <= bank_two_read_address + 1;
                            
                            if(recon_input_counter >= total_latency) begin
                                bank_one_write_enable <= 1;
                                bank_one_write_data <= reconstructed_value;
                                if(bank_one_write_enable) bank_one_write_address <= bank_one_write_address + 1; //increments after first
                            end
                            
                            if (&bank_one_write_address) begin
                                bank_one_write_enable <= 0;
                                reconstruction_state <= reconstruction_state_transition;
                            end
                            
                        end
                        reconstruction_state_flush: begin //Not used anymore just flush with garbage is easier
                            
                        end
                        reconstruction_state_transition: begin
                            reconstruction_state <= reconstruction_state_initialisation;
                            global_state <= state_first_ifft;
                            global_wait <= 4;
                            bank_one_read_address <= 0;
                            bank_one_write_address <= 0;
                            bank_one_write_enable <= 0;
                            bank_two_read_address <= 0;
                            bank_two_write_address <= 0;
                            bank_two_write_enable <= 0;
                            fft_state <= fft_state_initialisation;
                            fft_inverse <= 1'b1;
                        end
                    endcase
                end
                
                state_first_ifft: begin
                case(fft_state)
                    fft_state_initialisation: begin
                            fft_scale_bitmask <= first_ifft_mask;
                            bank_one_read_address <= 1; // 0 is already on the read pins
                            bank_two_write_address <= 0;
                            bank_one_write_enable <= 0;
                            bank_two_write_enable <= 0;
                            uram_write_counter <= 0;
                            fft_local_reset <= 1;

                            fft_state <= fft_state_input;
                            fft_row <= 0;
                            fft_col <= 0;
                        end

                        fft_state_input: begin
                            fft_shift_in <= bank_one_read_data;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if (bank_one_read_address < number_addresses) bank_one_read_address <= bank_one_read_address + 1;
                            else fft_state <= fft_state_flood; 
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) fft_col <= fft_col + 1;
                                bank_two_write_address <= {fft_reversed_address,fft_col};
                                bank_two_write_data <= fft_shift_out;
                                bank_two_write_enable <= 1;
                            end else bank_two_write_enable <= 0;
                        end
                        
                        fft_state_flood: begin
                            fft_shift_in <= 32'd0;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) begin
                                    if (fft_col == fft_square_size - 1) begin
                                        fft_state <= fft_state_transition;
                                        fft_shift_in_enable <= 0;
                                    end else fft_col <= fft_col + 1;
                                end
                                bank_two_write_address <= {fft_reversed_address,fft_col};
                                bank_two_write_data <= fft_shift_out;
                                bank_two_write_enable <= 1;
                            end else bank_two_write_enable <= 0;
                        end
                        fft_state_transition: begin
                            fft_local_reset <= 0;
                            fft_shift_in_enable <= 0;
                            fft_shift_in_valid <= 0;
                            global_wait <= 4;
                            global_state <= state_second_ifft;
                            fft_state <= fft_state_initialisation;
                            bank_one_read_address <= 0;
                            bank_one_write_address <= 0;
                            bank_one_write_enable <= 0;
                            bank_two_read_address <= 0;
                            bank_two_write_address <= 0;
                            bank_two_write_enable <= 0;
                        end
                    endcase
                end
                state_second_ifft: begin
                
                    // Magnitude approximation pipeline:
                    //Clock 1
                    magnitude_max <= fft_out_abs_real > fft_out_abs_imag ? fft_out_abs_real : fft_out_abs_imag;
                    magnitude_min <= fft_out_abs_real < fft_out_abs_imag ? fft_out_abs_real : fft_out_abs_imag;
                    magnitude_address_shift_register[0] <= {fft_col,fft_reversed_address};
                    magnitude_valid[0] <= fft_shift_out_valid && (fft_state != fft_state_transition); //No values need to be shifted in in transition
                    
                    //Clock 2
                    magnitude_min_sum <= (magnitude_min >> 1) + (magnitude_min >> 5);
                    magnitude_max_shift_register[0] <= magnitude_max;
                    magnitude_address_shift_register[1] <= magnitude_address_shift_register[0];
                    magnitude_valid[1] <= magnitude_valid[0];
                    
                    //Clock 3
                    magnitude_max_sum <= magnitude_min_sum - (magnitude_max_shift_register[0]>>3);
                    magnitude_max_shift_register[1] <= magnitude_max_shift_register[0];
                    magnitude_address_shift_register[2] <= magnitude_address_shift_register[1];
                    magnitude_valid[2] <= magnitude_valid[1];
                    
                    //Clock 4
                    magnitude_final <= magnitude_max_sum[15] ? magnitude_max_shift_register[1] : magnitude_max_shift_register[1] + magnitude_max_sum;
                    magnitude_address_shift_register[3] <= magnitude_address_shift_register[2];
                    magnitude_valid[3] <= magnitude_valid[2];        
                    
                    bram_main_write_enable_byte <= magnitude_valid[3] ? (4'b0001 << magnitude_address_shift_register[3][1:0]) : 4'b0000;
                    bram_main_addrb <= main_bram_read_stop_address + {magnitude_address_shift_register[3][full_address_size-1:2],2'b00};
                    bram_main_dinb <= {4{magnitude_byte}}; 
                
                    case(fft_state)
                        fft_state_initialisation: begin
                            fft_scale_bitmask <= second_ifft_mask;
                            bank_two_read_address <= 1;
                            bank_two_write_address <= 0;
                            bank_two_write_enable <= 0;
                            uram_write_counter <= 0;
                            fft_local_reset <= 1;
                            fft_row <= 0;
                            fft_col <= 0;
                            fft_state <= fft_state_input;
                        end
                        fft_state_input: begin
                            fft_shift_in <= bank_two_read_data;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if (bank_two_read_address < number_addresses) bank_two_read_address <= bank_two_read_address + 1;
                            else fft_state <= fft_state_flood;
                            
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) fft_col <= fft_col + 1;
                            end
                        end
                        fft_state_flood: begin
                            fft_shift_in <= 32'd0;
                            fft_shift_in_enable <= 1'b1;
                            fft_shift_in_valid <= 1'b1;
                            if(fft_shift_out_valid) begin
                                uram_write_counter <= uram_write_counter + 1;
                                if(uram_write_counter == fft_square_size - 1) begin
                                    if (fft_col == fft_square_size - 1) begin
                                        fft_state <= fft_state_transition;
                                        fft_shift_in_enable <= 1'b0;
                                    end else fft_col <= fft_col + 1;
                                end 
                            end
                        end
                        fft_state_transition: begin
                            if (magnitude_valid[0] == 0 && magnitude_valid[1] == 0 && magnitude_valid[2] == 0 && magnitude_valid[3] == 0) begin
                                fft_local_reset <= 0;
                                fft_shift_in_enable <= 0;
                                fft_shift_in_valid <= 0;
                                global_wait <= 4;
                                global_state <= state_transfer;
                                fft_state <= fft_state_initialisation;
                                fft_inverse <= 1'b0;
                                bank_one_read_address <= 0;
                                bank_one_write_address <= 0;
                                bank_one_write_enable <= 0;
                                bank_two_read_address <= 0;
                                bank_two_write_address <= 0;
                                bank_two_write_enable <= 0;
                            end
                        end
                    endcase
                end
                state_magnitude: begin // Folded into the second IFFT
                
                end
                state_transfer: begin
                    bram_main_addrb <= 32'd0;
                    frame_output_counter <= frame_output_counter + 1;
                    bram_metadata_addrb <= metadata_address_frame_out;
                    bram_metadata_dinb <= {24'd0,frame_output_counter + 8'd1};
                    bram_metadata_write_enable_byte <= 4'b0001;
                    global_state <= state_global_initialisation;
                end
            endcase
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
    input wire [number_stages-1:0] scale_bitmask,
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
                .scale(scale_bitmask[i]),
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
        if(!rst) begin
            counter <= 0;
        end else if(shift_out_valid) begin
            counter <= counter + 1;
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
    
    input wire scale,
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
        .scale(scale),
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
    input wire scale,
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
    
    //Saturates if the top two bits aren't the same, all 0 for underflow, all 1 for over, else pass no /2
    wire signed [split-1:0] unscaled_real_sum = {real_sum[split], (real_sum[split] ^ real_sum[split-1]) ? {(split-1){real_sum[split-1]}} : real_sum[split-2:0]};
    wire signed [split-1:0] unscaled_img_sum = {img_sum[split], (img_sum[split] ^ img_sum[split-1]) ? {(split-1){img_sum[split-1]}} : img_sum[split-2:0]};
    wire signed [split-1:0] unscaled_real_diff = {real_diff[split], (real_diff[split] ^ real_diff[split-1]) ? {(split-1){real_diff[split-1]}} : real_diff[split-2:0]};
    wire signed [split-1:0] unscaled_img_diff = {img_diff[split], (img_diff[split] ^ img_diff[split-1]) ? {(split-1){img_diff[split-1]}} : img_diff[split-2:0]};
    
    always @(*) begin
        sum = scale ? {scaled_img_sum,scaled_real_sum} : {unscaled_img_sum,unscaled_real_sum};
        diff = scale ? {scaled_img_diff,scaled_real_diff} : {unscaled_img_diff,unscaled_real_diff};
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
        output wire [data_size-1:0] read_out
    );
    wire [address_size-2:0] row_read_address = read_address[address_size-1:1];
    wire row_read_byte_select = read_address[0];
    
    wire [address_size-2:0] row_write_address = write_address[address_size-1:1];
    wire row_write_byte_select = write_address[0];
    
    //HAVE TO FIT IN ROWS OF 72
    localparam row_width = data_size*2;
    localparam number_rows = memory_size/2;
    
    (* ram_style = "ultra" *) reg [row_width-1:0] memory [0:number_rows-1];
    
    reg [row_width-1:0] row_read = 0;
    reg previous_row_read_byte_select = 1'b0;
    
    //WRITE FROM AMD DOCUMENTATION BECAUSE WEIRD BEHAVIOUR OTHERWISE
    //https://docs.amd.com/r/en-US/ug901-vivado-synthesis/Single-Port-Block-RAM-with-Resettable-Data-Output-Verilog
    //Why did I make my life hard.......
    wire [1:0] we = {write_enable & row_write_byte_select, write_enable & ~row_write_byte_select}; //Combined to choose entry
    wire [row_width-1:0] din = {write_data, write_data};
    
    generate
        genvar i;
        for (i = 0; i < 2; i = i + 1) begin
            always @(posedge clk) begin
                if (we[i]) begin
                    memory[row_write_address][i*data_size +: data_size] <= din[i*data_size +: data_size];
                end
            end
        end
    endgenerate
    
    always @(posedge clk) begin
        row_read <= memory[row_read_address];
        previous_row_read_byte_select <= row_read_byte_select;
    end
    
    assign read_out = previous_row_read_byte_select ? row_read[row_width-1:data_size] : row_read[data_size-1:0];
endmodule