`timescale 1ns / 1ps
//=====================================================================================
// tb_main.v  -  full-frame testbench for `main` (Vivado xsim, behavioural simulation)
//
//  * Models the main BRAM and the metadata BRAM exactly as `main` sees them on port B
//    (byte addresses, 32-bit words, byte write enables, read latency 1, read-first).
//  * Loads hologram.mem and metadata.mem written by generate_hologram.py.
//  * Plays the PS: holds reset, releases it, bumps the frame-input counter (byte 12),
//    waits for the frame-output counter (byte 16), then writes out the 8-bit image.
//  * Checks while it runs:
//      - URAM / BRAM writes per pass (must be 262144 each)
//      - halving mask and fft_inverse used in every pass, metadata read by the PL
//      - every output pixel written exactly once, nothing written outside the output half
//      - no X on FFT outputs, URAM write data or BRAM write data
//      - NUM_FRAMES = 2: the second frame must be bit-identical to the first
//  * Dumps both URAM banks after every pass (frame 1) for check_reconstruction.py.
//
// Files (all in DATA_DIR):
//   in : hologram.mem, metadata.mem
//   out: sim_output_frame<N>.txt, sim_summary_frame<N>.txt, dump_frame1_<pass>.mem
//=====================================================================================
module tb_main;

    // ------------------------------- settings ---------------------------------------
    parameter DATA_DIR             = "/home/gareth/Documents/PROJECT SIMS (WTF SIZE)/Sims/FPGA Reconstruction Testing/"; // trailing '/'
    parameter NUM_FRAMES           = 1;        // 2 = run the same hologram twice, outputs must be identical
    parameter DUMP_INTERMEDIATE    = 1;        // 1 = dump the URAM banks after each pass of frame 1
    parameter MAIN_BRAM_LATENCY    = 1;        // block memory generator without output register = 1
    parameter META_BRAM_LATENCY    = 1;
    parameter CLK_HALF_PERIOD      = 2;        // ns, 4 ns period = 250 MHz
    parameter MAX_CYCLES_PER_FRAME = 3000000;  // a frame needs about 1.32 million
    parameter PROGRESS_INTERVAL    = 131072;   // cycles between progress messages

    localparam N_PIX      = 512 * 512;
    localparam OUT_BASE   = 262144;            // byte address of the output image in the main BRAM
    localparam MAIN_WORDS = 131072;            // 512 KiB main BRAM

    // global_state encoding (same as main)
    localparam [2:0] S_INIT = 3'd0, S_FFT1 = 3'd1, S_FFT2 = 3'd2, S_RECON = 3'd3,
                     S_IFFT1 = 3'd4, S_IFFT2 = 3'd5, S_MAG = 3'd6, S_TRANSFER = 3'd7;

    // ------------------------------- clock / reset ----------------------------------
    reg clk = 1'b0;
    reg rst = 1'b0;                            // active low, like the real design
    always #(CLK_HALF_PERIOD) clk = ~clk;

    // ------------------------------- DUT --------------------------------------------
    wire        bram_main_clkb, bram_main_rstb, bram_main_enb;
    wire [3:0]  bram_main_write_enable_byte;
    wire [31:0] bram_main_addrb, bram_main_dinb, bram_main_doutb;
    wire        bram_metadata_clkb, bram_metadata_rstb, bram_metadata_enb;
    wire [3:0]  bram_metadata_write_enable_byte;
    wire [31:0] bram_metadata_addrb, bram_metadata_dinb, bram_metadata_doutb;

    main dut (
        .clk(clk),
        .rst(rst),
        .bram_main_clkb(bram_main_clkb),
        .bram_main_rstb(bram_main_rstb),
        .bram_main_enb(bram_main_enb),
        .bram_main_write_enable_byte(bram_main_write_enable_byte),
        .bram_main_addrb(bram_main_addrb),
        .bram_main_dinb(bram_main_dinb),
        .bram_main_doutb(bram_main_doutb),
        .bram_metadata_clkb(bram_metadata_clkb),
        .bram_metadata_rstb(bram_metadata_rstb),
        .bram_metadata_enb(bram_metadata_enb),
        .bram_metadata_write_enable_byte(bram_metadata_write_enable_byte),
        .bram_metadata_addrb(bram_metadata_addrb),
        .bram_metadata_dinb(bram_metadata_dinb),
        .bram_metadata_doutb(bram_metadata_doutb)
    );

    // ------------------------------- main BRAM model (port B) -----------------------
    reg  [31:0] main_mem [0:MAIN_WORDS-1];
    reg  [31:0] main_q1 = 32'd0;
    reg  [31:0] main_q2 = 32'd0;
    wire [16:0] main_word = bram_main_addrb[18:2];

    always @(posedge clk) begin
        if (bram_main_rstb) begin
            main_q1 <= 32'd0;
            main_q2 <= 32'd0;
        end else if (bram_main_enb) begin
            main_q1 <= main_mem[main_word];                     // read-first
            main_q2 <= main_q1;
            if (bram_main_write_enable_byte[0]) main_mem[main_word][7:0]   <= bram_main_dinb[7:0];
            if (bram_main_write_enable_byte[1]) main_mem[main_word][15:8]  <= bram_main_dinb[15:8];
            if (bram_main_write_enable_byte[2]) main_mem[main_word][23:16] <= bram_main_dinb[23:16];
            if (bram_main_write_enable_byte[3]) main_mem[main_word][31:24] <= bram_main_dinb[31:24];
        end
    end
    assign bram_main_doutb = (MAIN_BRAM_LATENCY == 2) ? main_q2 : main_q1;

    // ------------------------------- metadata BRAM model (port B) -------------------
    reg  [31:0] meta_mem [0:15];
    reg  [31:0] meta_q1 = 32'd0;
    reg  [31:0] meta_q2 = 32'd0;
    wire [3:0]  meta_word = bram_metadata_addrb[5:2];

    always @(posedge clk) begin
        if (bram_metadata_rstb) begin
            meta_q1 <= 32'd0;
            meta_q2 <= 32'd0;
        end else if (bram_metadata_enb) begin
            meta_q1 <= meta_mem[meta_word];
            meta_q2 <= meta_q1;
            if (bram_metadata_write_enable_byte[0]) meta_mem[meta_word][7:0]   <= bram_metadata_dinb[7:0];
            if (bram_metadata_write_enable_byte[1]) meta_mem[meta_word][15:8]  <= bram_metadata_dinb[15:8];
            if (bram_metadata_write_enable_byte[2]) meta_mem[meta_word][23:16] <= bram_metadata_dinb[23:16];
            if (bram_metadata_write_enable_byte[3]) meta_mem[meta_word][31:24] <= bram_metadata_dinb[31:24];
        end
    end
    assign bram_metadata_doutb = (META_BRAM_LATENCY == 2) ? meta_q2 : meta_q1;

    // ------------------------------- bookkeeping ------------------------------------
    integer cycle = 0;
    integer errors = 0;
    integer frame = 0;                         // frame being processed (set by the PS process)
    reg [8*512-1:0] fname;                     // file name buffer

    reg [1:0] write_count [0:N_PIX-1];         // per output pixel, saturates at 3
    reg [7:0] frame1_out  [0:N_PIX-1];

    // per pass
    reg [2:0] mon_state = S_INIT;
    integer   cur_cycles = 0;
    integer   cur_writes = 0;
    reg [8:0] cur_mask = 9'd0;
    reg       cur_inverse = 1'b0;
    integer   pass_cycles [0:7];
    integer   pass_writes [0:7];
    integer   x_fft = 0, x_uram = 0, x_bram = 0, bad_writes = 0, out_writes = 0;
    integer   lane, pix, k;

    function [8*14-1:0] state_name(input [2:0] s);          // fixed 14 characters (no NUL padding)
        case (s)
            S_INIT:     state_name = "initialisation";
            S_FFT1:     state_name = "first_fft     ";
            S_FFT2:     state_name = "second_fft    ";
            S_RECON:    state_name = "reconstruction";
            S_IFFT1:    state_name = "first_ifft    ";
            S_IFFT2:    state_name = "second_ifft   ";
            S_MAG:      state_name = "magnitude     ";
            default:    state_name = "transfer      ";
        endcase
    endfunction

    // halving mask the PL should use in a pass (from the metadata words)
    function [8:0] expected_mask(input [2:0] s);
        case (s)
            S_FFT1:  expected_mask = meta_mem[1][8:0];
            S_FFT2:  expected_mask = meta_mem[1][17:9];
            S_IFFT1: expected_mask = meta_mem[2][8:0];
            S_IFFT2: expected_mask = meta_mem[2][17:9];
            default: expected_mask = 9'd0;
        endcase
    endfunction

    // dump one URAM bank (two 32-bit words per 64-bit row) in address order
    task automatic dump_bank(input integer bank, input integer fd);
        integer a;
        reg [63:0] row;
        begin
            for (a = 0; a < N_PIX; a = a + 1) begin
                if (bank == 1) row = dut.bank_one.memory[a >> 1];
                else           row = dut.bank_two.memory[a >> 1];
                $fwrite(fd, "%h\n", a[0] ? row[63:32] : row[31:0]);
            end
        end
    endtask

    task automatic open_or_die(output integer fd, input [8*512-1:0] name, input for_write);
        begin
            fd = for_write ? $fopen(name, "w") : $fopen(name, "r");
            if (fd == 0) begin
                $display("TB ERROR: cannot open '%0s' - check DATA_DIR in tb_main.v", name);
                $finish;
            end
        end
    endtask

    // ------------------------------- monitor (runs every clock) ---------------------
    // Everything sampled here is the value during the cycle that just ended, so the
    // state, the write enables and the data always belong to the same clock cycle.
    integer fd_dump;
    always @(posedge clk) begin
        cycle = cycle + 1;
        if (rst) begin
            // ---- pass finished? ----
            if (dut.global_state != mon_state) begin
                pass_cycles[mon_state] = cur_cycles;
                pass_writes[mon_state] = cur_writes;
                if (mon_state >= S_FFT1 && mon_state <= S_IFFT2) begin
                    $display("[%0d cyc | %0.3f ms] %0s done: %0d cycles, %0d writes %0s",
                             cycle, $realtime / 1.0e6, state_name(mon_state), cur_cycles, cur_writes,
                             (cur_writes == N_PIX) ? "(OK)" : "<<<< ERROR, expected 262144");
                    if (cur_writes != N_PIX) errors = errors + 1;
                    if (mon_state != S_RECON) begin
                        if (cur_mask !== expected_mask(mon_state)) begin
                            $display("    <<<< ERROR: halving mask was %h, metadata says %h", cur_mask, expected_mask(mon_state));
                            errors = errors + 1;
                        end
                        if (cur_inverse !== (mon_state >= S_IFFT1)) begin
                            $display("    <<<< ERROR: fft_inverse was %b in this pass", cur_inverse);
                            errors = errors + 1;
                        end
                    end
                    // intermediate dumps (bank contents are final: the last write landed a cycle ago)
                    if (DUMP_INTERMEDIATE && frame == 1 && mon_state != S_IFFT2) begin
                        case (mon_state)
                            S_FFT1:  $sformat(fname, "%0sdump_frame1_first_fft.mem", DATA_DIR);
                            S_FFT2:  $sformat(fname, "%0sdump_frame1_second_fft.mem", DATA_DIR);
                            S_RECON: $sformat(fname, "%0sdump_frame1_reconstruction.mem", DATA_DIR);
                            default: $sformat(fname, "%0sdump_frame1_first_ifft.mem", DATA_DIR);
                        endcase
                        open_or_die(fd_dump, fname, 1'b1);
                        dump_bank((mon_state == S_FFT1 || mon_state == S_RECON) ? 1 : 2, fd_dump);
                        $fclose(fd_dump);
                        $display("    dumped %0s", fname);
                    end
                end
                if (mon_state == S_INIT && dut.global_state == S_FFT1) begin
                    $display("[%0d cyc] PL read metadata: T1 %0d, masks %h %h %h %h, output_shift %0d",
                             cycle, dut.reconstruction_constant, dut.first_fft_mask, dut.second_fft_mask,
                             dut.first_ifft_mask, dut.second_ifft_mask, dut.output_shift);
                    if (dut.reconstruction_constant !== meta_mem[0][23:0] ||
                        {dut.second_fft_mask, dut.first_fft_mask} !== meta_mem[1][17:0] ||
                        {dut.second_ifft_mask, dut.first_ifft_mask} !== meta_mem[2][17:0] ||
                        dut.output_shift !== meta_mem[2][19:18]) begin
                        $display("    <<<< ERROR: PL values differ from metadata.mem (metadata read latency?)");
                        errors = errors + 1;
                    end
                end
                mon_state  = dut.global_state;
                cur_cycles = 0;
                cur_writes = 0;
            end

            // ---- count this cycle ----
            cur_cycles = cur_cycles + 1;
            if (cur_cycles == 2000) begin                    // well inside the pass
                cur_mask    = dut.fft_scale_bitmask;
                cur_inverse = dut.fft_inverse;
            end
            if ((mon_state == S_FFT1 || mon_state == S_RECON) && dut.bank_one_write_enable === 1'b1) cur_writes = cur_writes + 1;
            if ((mon_state == S_FFT2 || mon_state == S_IFFT1) && dut.bank_two_write_enable === 1'b1) cur_writes = cur_writes + 1;

            if (cycle % PROGRESS_INTERVAL == 0)
                $display("[%0d cyc | %0.3f ms] ... %0s", cycle, $realtime / 1.0e6, state_name(mon_state));

            // ---- X checks ----
            if (dut.fft_shift_out_valid === 1'b1 && ^dut.fft_shift_out === 1'bx) begin
                x_fft = x_fft + 1;
                if (x_fft <= 5) $display("    <<<< X on fft_shift_out in %0s, cycle %0d", state_name(mon_state), cycle);
            end
            if ((dut.bank_one_write_enable === 1'b1 && ^dut.bank_one_write_data === 1'bx) ||
                (dut.bank_two_write_enable === 1'b1 && ^dut.bank_two_write_data === 1'bx)) begin
                x_uram = x_uram + 1;
                if (x_uram <= 5) $display("    <<<< X written to a URAM in %0s, cycle %0d", state_name(mon_state), cycle);
            end

            // ---- main BRAM writes: only the output half, one byte lane, each pixel once ----
            if (bram_main_enb && bram_main_write_enable_byte != 4'b0000) begin
                case (bram_main_write_enable_byte)
                    4'b0001: lane = 0;
                    4'b0010: lane = 1;
                    4'b0100: lane = 2;
                    4'b1000: lane = 3;
                    default: lane = -1;
                endcase
                if (lane < 0 || bram_main_addrb < OUT_BASE || bram_main_addrb >= 2 * OUT_BASE ||
                    bram_main_addrb[1:0] != 2'b00) begin
                    bad_writes = bad_writes + 1;
                    if (bad_writes <= 10)
                        $display("    <<<< ERROR: main BRAM write addr %h we %b in %0s",
                                 bram_main_addrb, bram_main_write_enable_byte, state_name(mon_state));
                end else begin
                    pix = bram_main_addrb - OUT_BASE + lane;
                    if (write_count[pix] != 2'd3) write_count[pix] = write_count[pix] + 2'd1;
                    out_writes = out_writes + 1;
                    if (mon_state == S_IFFT2) cur_writes = cur_writes + 1;
                    if (^bram_main_dinb[8 * lane +: 8] === 1'bx) begin
                        x_bram = x_bram + 1;
                        if (x_bram <= 5) $display("    <<<< X written to output pixel %0d", pix);
                    end
                end
            end
        end
    end

    // ------------------------------- the "PS" ---------------------------------------
    integer fd, wait_cycles, n_zero, n_multi, n_diff, frame_start, frame_errors;
    reg [31:0] w;
    reg [7:0]  b;

    initial begin
        for (k = 0; k < 8; k = k + 1) begin pass_cycles[k] = 0; pass_writes[k] = 0; end
        for (k = 0; k < 16; k = k + 1) meta_mem[k] = 32'd0;
        for (k = 0; k < N_PIX; k = k + 1) write_count[k] = 2'd0;

        $sformat(fname, "%0shologram.mem", DATA_DIR);
        open_or_die(fd, fname, 1'b0);
        $fclose(fd);
        $readmemh(fname, main_mem, 0, (N_PIX / 4) - 1);       // output half stays X until written
        $sformat(fname, "%0smetadata.mem", DATA_DIR);
        open_or_die(fd, fname, 1'b0);
        $fclose(fd);
        $readmemh(fname, meta_mem, 0, 4);
        meta_mem[3] = 32'd0;                                  // PS zeroes both counters before reset release
        meta_mem[4] = 32'd0;
        $display("TB: metadata  T1_raw %0d  dc %0d  fwd masks %h  inv masks %h  output_shift %0d",
                 meta_mem[0][23:0], meta_mem[0][31:24], meta_mem[1][17:0], meta_mem[2][17:0], meta_mem[2][19:18]);
        $display("TB: hologram word 0 = %h (pixels 0..3 = %0d %0d %0d %0d)", main_mem[0],
                 main_mem[0][7:0], main_mem[0][15:8], main_mem[0][23:16], main_mem[0][31:24]);

        rst = 1'b0;
        repeat (20) @(posedge clk);
        @(negedge clk) rst = 1'b1;
        repeat (100) @(posedge clk);

        for (frame = 1; frame <= NUM_FRAMES; frame = frame + 1) begin
            for (k = 0; k < N_PIX; k = k + 1) write_count[k] = 2'd0;
            out_writes = 0;
            bad_writes = 0;
            x_fft = 0;
            x_uram = 0;
            x_bram = 0;
            frame_errors = errors;

            @(negedge clk) meta_mem[3] = frame;               // PS: "new frame is in the BRAM"
            frame_start = cycle;
            $display("\n========== frame %0d started at cycle %0d ==========", frame, cycle);

            wait_cycles = 0;
            while (meta_mem[4][7:0] != frame[7:0]) begin
                @(posedge clk);
                wait_cycles = wait_cycles + 1;
                if (wait_cycles > MAX_CYCLES_PER_FRAME) begin
                    $display("\nTB TIMEOUT after %0d cycles. PL state:", wait_cycles);
                    $display("  global_state %0s  fft_state %0d  reconstruction_state %0d  initialisation_state %0d",
                             state_name(dut.global_state), dut.fft_state, dut.reconstruction_state, dut.initialisation_state);
                    $display("  fft_col %0d  uram_write_counter %0d  global_wait %0d  fft_local_reset %b",
                             dut.fft_col, dut.uram_write_counter, dut.global_wait, dut.fft_local_reset);
                    $display("  bank_one rd %0d wr %0d  bank_two rd %0d wr %0d  frame counters in %0d out %0d",
                             dut.bank_one_read_address, dut.bank_one_write_address,
                             dut.bank_two_read_address, dut.bank_two_write_address, meta_mem[3], meta_mem[4]);
                    $finish;
                end
            end
            repeat (20) @(posedge clk);
            $display("[%0d cyc] frame %0d done: frame-output counter = %0d, %0d cycles (%0.3f ms of hardware time)",
                     cycle, frame, meta_mem[4][7:0], cycle - frame_start, (cycle - frame_start) * 2.0e-6 * CLK_HALF_PERIOD);

            // ---- every output pixel exactly once ----
            n_zero = 0;
            n_multi = 0;
            for (k = 0; k < N_PIX; k = k + 1) begin
                if (write_count[k] == 2'd0) begin
                    n_zero = n_zero + 1;
                    if (n_zero <= 5) $display("    <<<< pixel %0d (row %0d, col %0d) never written", k, k / 512, k % 512);
                end else if (write_count[k] != 2'd1) begin
                    n_multi = n_multi + 1;
                    if (n_multi <= 10) $display("    <<<< pixel %0d (row %0d, col %0d) written %0d times", k, k / 512, k % 512, write_count[k]);
                end
            end
            $display("Output writes: %0d total, %0d pixels never written, %0d pixels written more than once, %0d bad writes %0s",
                     out_writes, n_zero, n_multi, bad_writes,
                     (n_zero == 0 && n_multi == 0 && bad_writes == 0) ? "(OK)" : "<<<< ERROR");
            if (n_zero != 0 || n_multi != 0 || bad_writes != 0) errors = errors + 1;
            if (x_fft || x_uram || x_bram) begin
                $display("X values seen: fft_shift_out %0d, URAM writes %0d, output bytes %0d  <<<< ERROR", x_fft, x_uram, x_bram);
                errors = errors + 1;
            end

            // ---- write the image; compare with frame 1 ----
            n_diff = 0;
            $sformat(fname, "%0ssim_output_frame%0d.txt", DATA_DIR, frame);
            open_or_die(fd, fname, 1'b1);
            for (k = 0; k < N_PIX; k = k + 1) begin
                w = main_mem[(OUT_BASE / 4) + (k / 4)];
                b = w[8 * (k % 4) +: 8];
                $fwrite(fd, "%h\n", b);
                if (frame == 1) frame1_out[k] = b;
                else if (b !== frame1_out[k]) begin
                    n_diff = n_diff + 1;
                    if (n_diff <= 10) $display("    <<<< frame %0d pixel %0d (row %0d, col %0d) = %0d, frame 1 = %0d",
                                               frame, k, k / 512, k % 512, b, frame1_out[k]);
                end
            end
            $fclose(fd);
            $display("Wrote %0s", fname);
            if (frame > 1) begin
                $display("Frame %0d vs frame 1: %0d pixels differ %0s", frame, n_diff, n_diff ? "<<<< ERROR" : "(OK)");
                if (n_diff) errors = errors + 1;
            end

            // ---- summary file for check_reconstruction.py ----
            $sformat(fname, "%0ssim_summary_frame%0d.txt", DATA_DIR, frame);
            open_or_die(fd, fname, 1'b1);
            for (k = S_FFT1; k <= S_IFFT2; k = k + 1)
                $fdisplay(fd, "%0s %0d cycles, %0d writes %0s", state_name(k), pass_cycles[k], pass_writes[k],
                          (pass_writes[k] == N_PIX) ? "OK" : "ERROR");
            $fdisplay(fd, "output pixels never written: %0d, written more than once: %0d, bad writes: %0d", n_zero, n_multi, bad_writes);
            $fdisplay(fd, "X values: fft %0d, uram %0d, output %0d", x_fft, x_uram, x_bram);
            $fdisplay(fd, "frame cycles: %0d, testbench errors this frame: %0d", cycle - frame_start, errors - frame_errors);
            $fclose(fd);

            repeat (100) @(posedge clk);                      // let the PL get back to polling
        end

        $display("\n==================================================================");
        if (errors == 0) $display("TESTBENCH PASSED all structural checks (%0d frame(s)).", NUM_FRAMES);
        else             $display("TESTBENCH FAILED: %0d error(s), see the <<<< lines above.", errors);
        $display("Now run: python3 check_reconstruction.py   (in %0s)", DATA_DIR);
        $display("==================================================================");
        $finish;
    end

endmodule