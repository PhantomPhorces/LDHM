// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Wed Oct 28 14:46:38 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub {/home/gareth/Documents/Computer Engineering/A
//               PROJECT/LDHM/LDHM.gen/sources_1/bd/Blocks/ip/Blocks_main_0_0/Blocks_main_0_0_stub.v}
// Design      : Blocks_main_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Blocks_main_0_0,main,{}" *) (* CORE_GENERATION_INFO = "Blocks_main_0_0,main,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=main,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "main,Vivado 2026.1" *) 
module Blocks_main_0_0(clk, rst, bram_main_clkb, bram_main_rstb, 
  bram_main_enb, bram_main_write_enable_byte, bram_main_addrb, bram_main_dinb, 
  bram_main_doutb, bram_metadata_clkb, bram_metadata_rstb, bram_metadata_enb, 
  bram_metadata_write_enable_byte, bram_metadata_addrb, bram_metadata_dinb, 
  bram_metadata_doutb)
/* synthesis syn_black_box black_box_pad_pin="rst,bram_main_rstb,bram_main_enb,bram_main_write_enable_byte[3:0],bram_main_addrb[31:0],bram_main_dinb[31:0],bram_main_doutb[31:0],bram_metadata_rstb,bram_metadata_enb,bram_metadata_write_enable_byte[3:0],bram_metadata_addrb[31:0],bram_metadata_dinb[31:0],bram_metadata_doutb[31:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="bram_main_clkb" */
/* synthesis syn_force_seq_prim="bram_metadata_clkb" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF bram_main, FREQ_HZ 166664993, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_main, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output bram_main_clkb /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main RST" *) output bram_main_rstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main EN" *) output bram_main_enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main WE" *) output [3:0]bram_main_write_enable_byte;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main ADDR" *) output [31:0]bram_main_addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DIN" *) output [31:0]bram_main_dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_main DOUT" *) input [31:0]bram_main_doutb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_metadata, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output bram_metadata_clkb /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata RST" *) output bram_metadata_rstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata EN" *) output bram_metadata_enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata WE" *) output [3:0]bram_metadata_write_enable_byte;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata ADDR" *) output [31:0]bram_metadata_addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata DIN" *) output [31:0]bram_metadata_dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_metadata DOUT" *) input [31:0]bram_metadata_doutb;
endmodule
