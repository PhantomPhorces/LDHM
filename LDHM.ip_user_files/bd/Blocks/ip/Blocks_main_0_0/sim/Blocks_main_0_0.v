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
  complex_return_tdata,
  complex_return_tvalid,
  complex_value_a_tdata,
  complex_value_a_tvalid,
  complex_value_b_tdata,
  complex_value_b_tvalid,
  result,
  bram_main_clkb,
  bram_main_rstb,
  bram_main_enb,
  bram_main_web,
  bram_main_addrb,
  bram_main_dinb,
  bram_main_doutb
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF complex_return:complex_value_a:complex_value_b, ASSOCIATED_RESET rst, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 complex_return TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME complex_return, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 73} bit\
offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 33} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 40} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency \
{} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 80 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {f\
ield_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} f\
ormat long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {a\
ttribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctr\
l_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *)
input wire [79 : 0] complex_return_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 complex_return TVALID" *)
input wire complex_return_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 complex_value_a TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME complex_value_a, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [31 : 0] complex_value_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 complex_value_a TVALID" *)
output wire complex_value_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 complex_value_b TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME complex_value_b, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [31 : 0] complex_value_b_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 complex_value_b TVALID" *)
output wire complex_value_b_tvalid;
output wire [65 : 0] result;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_main, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *)
output wire bram_main_clkb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main RST" *)
output wire bram_main_rstb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main EN" *)
output wire bram_main_enb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main WE" *)
output wire [3 : 0] bram_main_web;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main ADDR" *)
output wire [31 : 0] bram_main_addrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DIN" *)
output wire [31 : 0] bram_main_dinb;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DOUT" *)
input wire [31 : 0] bram_main_doutb;

  main inst (
    .clk(clk),
    .rst(rst),
    .complex_return_tdata(complex_return_tdata),
    .complex_return_tvalid(complex_return_tvalid),
    .complex_value_a_tdata(complex_value_a_tdata),
    .complex_value_a_tvalid(complex_value_a_tvalid),
    .complex_value_b_tdata(complex_value_b_tdata),
    .complex_value_b_tvalid(complex_value_b_tvalid),
    .result(result),
    .bram_main_clkb(bram_main_clkb),
    .bram_main_rstb(bram_main_rstb),
    .bram_main_enb(bram_main_enb),
    .bram_main_web(bram_main_web),
    .bram_main_addrb(bram_main_addrb),
    .bram_main_dinb(bram_main_dinb),
    .bram_main_doutb(bram_main_doutb)
  );
endmodule
