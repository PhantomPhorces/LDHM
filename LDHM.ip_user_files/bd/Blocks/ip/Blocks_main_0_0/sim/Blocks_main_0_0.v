// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:main:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Blocks_main_0_0 (
  clk,
  rst,
  bram_main_clkb,
  bram_main_rstb,
  bram_main_enb,
  bram_main_write_enable_byte,
  bram_main_addrb,
  bram_main_dinb,
  bram_main_doutb,
  bram_metadata_clkb,
  bram_metadata_rstb,
  bram_metadata_enb,
  bram_metadata_write_enable_byte,
  bram_metadata_addrb,
  bram_metadata_dinb,
  bram_metadata_doutb
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF bram_main, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_main, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *)
output wire bram_main_clkb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main RST" *)
output wire bram_main_rstb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main EN" *)
output wire bram_main_enb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main WE" *)
output wire [3 : 0] bram_main_write_enable_byte;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main ADDR" *)
output wire [31 : 0] bram_main_addrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DIN" *)
output wire [31 : 0] bram_main_dinb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DOUT" *)
input wire [31 : 0] bram_main_doutb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_metadata, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *)
output wire bram_metadata_clkb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata RST" *)
output wire bram_metadata_rstb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata EN" *)
output wire bram_metadata_enb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata WE" *)
output wire [3 : 0] bram_metadata_write_enable_byte;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata ADDR" *)
output wire [31 : 0] bram_metadata_addrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata DIN" *)
output wire [31 : 0] bram_metadata_dinb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata DOUT" *)
input wire [31 : 0] bram_metadata_doutb;

  main inst (
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
endmodule
