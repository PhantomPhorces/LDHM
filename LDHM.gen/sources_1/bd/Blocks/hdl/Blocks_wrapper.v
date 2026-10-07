//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
//Date        : Mon Oct  5 15:25:08 2026
//Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
//Command     : generate_target Blocks_wrapper.bd
//Design      : Blocks_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Blocks_wrapper
   (BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_din,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    BRAM_PORTB_0_rst,
    BRAM_PORTB_0_we,
    clk,
    result_0,
    rst,
    rsta_busy_0,
    rstb_busy_0);
  input [31:0]BRAM_PORTB_0_addr;
  input BRAM_PORTB_0_clk;
  input [31:0]BRAM_PORTB_0_din;
  output [31:0]BRAM_PORTB_0_dout;
  input BRAM_PORTB_0_en;
  input BRAM_PORTB_0_rst;
  input [3:0]BRAM_PORTB_0_we;
  output clk;
  output [63:0]result_0;
  output [0:0]rst;
  output rsta_busy_0;
  output rstb_busy_0;

  wire [31:0]BRAM_PORTB_0_addr;
  wire BRAM_PORTB_0_clk;
  wire [31:0]BRAM_PORTB_0_din;
  wire [31:0]BRAM_PORTB_0_dout;
  wire BRAM_PORTB_0_en;
  wire BRAM_PORTB_0_rst;
  wire [3:0]BRAM_PORTB_0_we;
  wire clk;
  wire [63:0]result_0;
  wire [0:0]rst;
  wire rsta_busy_0;
  wire rstb_busy_0;

  Blocks Blocks_i
       (.BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
        .BRAM_PORTB_0_clk(BRAM_PORTB_0_clk),
        .BRAM_PORTB_0_din(BRAM_PORTB_0_din),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
        .BRAM_PORTB_0_en(BRAM_PORTB_0_en),
        .BRAM_PORTB_0_rst(BRAM_PORTB_0_rst),
        .BRAM_PORTB_0_we(BRAM_PORTB_0_we),
        .clk(clk),
        .result_0(result_0),
        .rst(rst),
        .rsta_busy_0(rsta_busy_0),
        .rstb_busy_0(rstb_busy_0));
endmodule
