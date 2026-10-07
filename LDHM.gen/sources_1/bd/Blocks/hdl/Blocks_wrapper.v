//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
//Date        : Wed Oct  7 17:28:25 2026
//Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
//Command     : generate_target Blocks_wrapper.bd
//Design      : Blocks_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Blocks_wrapper
   (clk,
    result_0,
    rst,
    rsta_busy_0,
    rstb_busy_0);
  output clk;
  output [65:0]result_0;
  output [0:0]rst;
  output rsta_busy_0;
  output rstb_busy_0;

  wire clk;
  wire [65:0]result_0;
  wire [0:0]rst;
  wire rsta_busy_0;
  wire rstb_busy_0;

  Blocks Blocks_i
       (.clk(clk),
        .result_0(result_0),
        .rst(rst),
        .rsta_busy_0(rsta_busy_0),
        .rstb_busy_0(rstb_busy_0));
endmodule
