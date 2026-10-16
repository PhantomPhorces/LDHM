`timescale 1ns / 1ps

module tb_main();

    reg clk = 1'b0;
    reg rst = 1'b0;

    wire [31:0] complex_value_a_tdata;
    wire        complex_value_a_tvalid;
    wire [31:0] complex_value_b_tdata;
    wire        complex_value_b_tvalid;
    wire signed [65:0] result;

    wire        bram_main_clkb;
    wire        bram_main_rstb;
    wire        bram_main_enb;
    wire [3:0]  bram_main_web;
    wire [31:0] bram_main_addrb;
    wire [31:0] bram_main_dinb;
    reg  [31:0] bram_main_doutb = 32'd0;

    // 100 MHz clock (10 ns period)
    always #5 clk = ~clk;

    // -------------------------------------------------------------
    // Simulated BRAM Model Preloaded with Multi-Tone Test Signal
    // -------------------------------------------------------------
    reg [31:0] bram_memory [0:511];

    reg  [8:0]  gen_idx = 0;
    wire [9:0]  tone1_phase = (gen_idx * 10'd13) & 10'h1FF;
    wire [9:0]  tone2_phase = (gen_idx * 10'd64) & 10'h1FF;
    wire [31:0] tone1_factor;
    wire [31:0] tone2_factor;

    twiddle gen_tone1 (
        .big_n(10'd512),
        .little_n(tone1_phase),
        .inverse_coefficients(1'b1),
        .twiddle_factor(tone1_factor)
    );

    twiddle gen_tone2 (
        .big_n(10'd512),
        .little_n(tone2_phase),
        .inverse_coefficients(1'b1),
        .twiddle_factor(tone2_factor)
    );

    wire signed [15:0] t1_re = tone1_factor[15:0];
    wire signed [15:0] t1_im = tone1_factor[31:16];
    wire signed [15:0] t2_re = tone2_factor[15:0];
    wire [31:0] test_sample = { (t1_im >>> 1), (t1_re >>> 1) + (t2_re >>> 2) + 16'sd4096 };

    integer p;
    initial begin
        for (p = 0; p < 512; p = p + 1) begin
            gen_idx = p;
            #1; // Combinational settling for twiddle lookup
            bram_memory[p] = test_sample;
        end
    end

    // Synchronous BRAM Port B Read (1-cycle latency, byte-addressed word index)
    always @(posedge bram_main_clkb) begin
        if (bram_main_enb) begin
            bram_main_doutb <= bram_memory[bram_main_addrb[10:2]];
        end
    end

    // -------------------------------------------------------------
    // Unit Under Test (main)
    // -------------------------------------------------------------
    main uut (
        .clk                    (clk),
        .rst                    (rst),
        .complex_return_tdata   (80'd0),
        .complex_return_tvalid  (1'b0),
        .complex_value_a_tdata  (complex_value_a_tdata),
        .complex_value_a_tvalid (complex_value_a_tvalid),
        .complex_value_b_tdata  (complex_value_b_tdata),
        .complex_value_b_tvalid (complex_value_b_tvalid),
        .result                 (result),
        .bram_main_clkb         (bram_main_clkb),
        .bram_main_rstb         (bram_main_rstb),
        .bram_main_enb          (bram_main_enb),
        .bram_main_web          (bram_main_web),
        .bram_main_addrb        (bram_main_addrb),
        .bram_main_dinb         (bram_main_dinb),
        .bram_main_doutb        (bram_main_doutb)
    );

    // Capture natural-order outputs directly in testbench
    reg [31:0] captured_fft_output [0:511];
    integer csv_file, i;
    integer max_noise_err = 0;
    integer abs_re, abs_im;
    reg signed [15:0] in_re, in_im, out_re, out_im;

    always @(posedge clk) begin
        if (uut.fft_shift_out_valid && (uut.out_count < 512)) begin
            captured_fft_output[uut.out_bin] <= uut.fft_shift_out;
        end
    end

    initial begin
        $display("================================================================");
        $display(" Running Block Design BRAM Streaming FFT Simulation");
        $display("================================================================");

        // Assert reset for 10 clock cycles (satisfies cmp_div2 minimum 2 cycles)
        rst = 1'b0;
        repeat (10) @(posedge clk);
        #1 rst = 1'b1;

        // Wait until main completes its 512-sample FFT stream and zero-flush
        fork : wait_done
            begin
                wait (uut.fft_done == 1'b1);
                @(posedge clk);
                disable wait_done;
            end
            begin
                repeat (5000) @(posedge clk);
                $display("ERROR: Simulation timed out waiting for uut.fft_done!");
                $finish;
            end
        join

        // Export data to CSV for Python verification
        csv_file = $fopen("fft_sim_results.csv", "w");
        $fwrite(csv_file, "index,in_real,in_imag,out_real,out_imag\n");
        for (i = 0; i < 512; i = i + 1) begin
            in_re  = bram_memory[i][15:0];
            in_im  = bram_memory[i][31:16];
            out_re = captured_fft_output[i][15:0];
            out_im = captured_fft_output[i][31:16];
            $fwrite(csv_file, "%0d,%0d,%0d,%0d,%0d\n", i, in_re, in_im, out_re, out_im);

            if (i != 0 && i != 13 && i != 64 && i != 448) begin
                abs_re = (out_re < 0) ? -out_re : out_re;
                abs_im = (out_im < 0) ? -out_im : out_im;
                if (abs_re > max_noise_err) max_noise_err = abs_re;
                if (abs_im > max_noise_err) max_noise_err = abs_im;
            end
        end
        $fclose(csv_file);

        // Verification Report
        $display("----------------------------------------------------------------");
        $display(" Total Valid Outputs Captured  : %0d (Expected: 512)", uut.out_count);
        $display(" Bin   0 (DC)           : Real = %6d, Imag = %6d (Expected: ~4096,     0)",
                 $signed(captured_fft_output[0][15:0]),   $signed(captured_fft_output[0][31:16]));
        $display(" Bin  13 (Complex Tone) : Real = %6d, Imag = %6d (Expected: ~16384,    0)",
                 $signed(captured_fft_output[13][15:0]),  $signed(captured_fft_output[13][31:16]));
        $display(" Bin  64 (+Cosine Tone) : Real = %6d, Imag = %6d (Expected: ~4096,     0)",
                 $signed(captured_fft_output[64][15:0]),  $signed(captured_fft_output[64][31:16]));
        $display(" Bin 448 (-Cosine Tone) : Real = %6d, Imag = %6d (Expected: ~4096,     0)",
                 $signed(captured_fft_output[448][15:0]), $signed(captured_fft_output[448][31:16]));
        $display(" Max Noise Floor (Other 508 Bins): %0d LSBs", max_noise_err);
        $display("----------------------------------------------------------------");

        if (uut.out_count == 512 &&
            $signed(captured_fft_output[0][15:0])   > 4080  && $signed(captured_fft_output[0][15:0])   < 4112 &&
            $signed(captured_fft_output[13][15:0])  > 16360 && $signed(captured_fft_output[13][15:0])  < 16400 &&
            $signed(captured_fft_output[64][15:0])  > 4080  && $signed(captured_fft_output[64][15:0])  < 4112 &&
            $signed(captured_fft_output[448][15:0]) > 4080  && $signed(captured_fft_output[448][15:0]) < 4112 &&
            max_noise_err < 16) begin
            $display(" STATUS: PASS - BRAM streaming FFT matches theoretical spectrum!");
        end else begin
            $display(" STATUS: FAIL - Check bin outputs or BRAM addressing.");
        end
        $display(" CSV written to: fft_sim_results.csv");
        $display("================================================================");
        $finish;
    end

endmodule