// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Fri Oct  2 14:37:07 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim {/home/gareth/Documents/Computer Engineering/A
//               PROJECT/LDHM/LDHM.gen/sources_1/bd/Blocks/ip/Blocks_main_0_0/Blocks_main_0_0_sim_netlist.v}
// Design      : Blocks_main_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Blocks_main_0_0,main,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "main,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module Blocks_main_0_0
   (clk,
    rst,
    M_AXIS_DOUT_0_tdata,
    M_AXIS_DOUT_0_tvalid,
    S_AXIS_A_0_tdata,
    S_AXIS_A_0_tvalid,
    S_AXIS_B_0_tdata,
    S_AXIS_B_0_tvalid,
    result);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS_DOUT_0:S_AXIS_A_0:S_AXIS_B_0, ASSOCIATED_RESET rst, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT_0, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 32} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 32} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctrl_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input [79:0]M_AXIS_DOUT_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TVALID" *) input M_AXIS_DOUT_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]S_AXIS_A_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TVALID" *) output S_AXIS_A_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]S_AXIS_B_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TVALID" *) output S_AXIS_B_0_tvalid;
  output [63:0]result;

  wire \<const0> ;
  wire [79:0]M_AXIS_DOUT_0_tdata;
  wire M_AXIS_DOUT_0_tvalid;
  wire [19:19]\^S_AXIS_A_0_tdata ;
  wire S_AXIS_B_0_tvalid;
  wire clk;
  wire [63:0]result;

  assign S_AXIS_A_0_tdata[31] = \<const0> ;
  assign S_AXIS_A_0_tdata[30] = \<const0> ;
  assign S_AXIS_A_0_tdata[29] = \<const0> ;
  assign S_AXIS_A_0_tdata[28] = \<const0> ;
  assign S_AXIS_A_0_tdata[27] = \<const0> ;
  assign S_AXIS_A_0_tdata[26] = \<const0> ;
  assign S_AXIS_A_0_tdata[25] = \<const0> ;
  assign S_AXIS_A_0_tdata[24] = \<const0> ;
  assign S_AXIS_A_0_tdata[23] = \<const0> ;
  assign S_AXIS_A_0_tdata[22] = \<const0> ;
  assign S_AXIS_A_0_tdata[21] = \<const0> ;
  assign S_AXIS_A_0_tdata[20] = \<const0> ;
  assign S_AXIS_A_0_tdata[19] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_A_0_tdata[18] = \<const0> ;
  assign S_AXIS_A_0_tdata[17] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_A_0_tdata[16] = \<const0> ;
  assign S_AXIS_A_0_tdata[15] = \<const0> ;
  assign S_AXIS_A_0_tdata[14] = \<const0> ;
  assign S_AXIS_A_0_tdata[13] = \<const0> ;
  assign S_AXIS_A_0_tdata[12] = \<const0> ;
  assign S_AXIS_A_0_tdata[11] = \<const0> ;
  assign S_AXIS_A_0_tdata[10] = \<const0> ;
  assign S_AXIS_A_0_tdata[9] = \<const0> ;
  assign S_AXIS_A_0_tdata[8] = \<const0> ;
  assign S_AXIS_A_0_tdata[7] = \<const0> ;
  assign S_AXIS_A_0_tdata[6] = \<const0> ;
  assign S_AXIS_A_0_tdata[5] = \<const0> ;
  assign S_AXIS_A_0_tdata[4] = \<const0> ;
  assign S_AXIS_A_0_tdata[3] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_A_0_tdata[2] = \<const0> ;
  assign S_AXIS_A_0_tdata[1] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_A_0_tdata[0] = \<const0> ;
  assign S_AXIS_A_0_tvalid = S_AXIS_B_0_tvalid;
  assign S_AXIS_B_0_tdata[31] = \<const0> ;
  assign S_AXIS_B_0_tdata[30] = \<const0> ;
  assign S_AXIS_B_0_tdata[29] = \<const0> ;
  assign S_AXIS_B_0_tdata[28] = \<const0> ;
  assign S_AXIS_B_0_tdata[27] = \<const0> ;
  assign S_AXIS_B_0_tdata[26] = \<const0> ;
  assign S_AXIS_B_0_tdata[25] = \<const0> ;
  assign S_AXIS_B_0_tdata[24] = \<const0> ;
  assign S_AXIS_B_0_tdata[23] = \<const0> ;
  assign S_AXIS_B_0_tdata[22] = \<const0> ;
  assign S_AXIS_B_0_tdata[21] = \<const0> ;
  assign S_AXIS_B_0_tdata[20] = \<const0> ;
  assign S_AXIS_B_0_tdata[19] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_B_0_tdata[18] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_B_0_tdata[17] = \<const0> ;
  assign S_AXIS_B_0_tdata[16] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_B_0_tdata[15] = \<const0> ;
  assign S_AXIS_B_0_tdata[14] = \<const0> ;
  assign S_AXIS_B_0_tdata[13] = \<const0> ;
  assign S_AXIS_B_0_tdata[12] = \<const0> ;
  assign S_AXIS_B_0_tdata[11] = \<const0> ;
  assign S_AXIS_B_0_tdata[10] = \<const0> ;
  assign S_AXIS_B_0_tdata[9] = \<const0> ;
  assign S_AXIS_B_0_tdata[8] = \<const0> ;
  assign S_AXIS_B_0_tdata[7] = \<const0> ;
  assign S_AXIS_B_0_tdata[6] = \<const0> ;
  assign S_AXIS_B_0_tdata[5] = \<const0> ;
  assign S_AXIS_B_0_tdata[4] = \<const0> ;
  assign S_AXIS_B_0_tdata[3] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_B_0_tdata[2] = \^S_AXIS_A_0_tdata [19];
  assign S_AXIS_B_0_tdata[1] = \<const0> ;
  assign S_AXIS_B_0_tdata[0] = \^S_AXIS_A_0_tdata [19];
  GND GND
       (.G(\<const0> ));
  Blocks_main_0_0_main inst
       (.M_AXIS_DOUT_0_tdata({M_AXIS_DOUT_0_tdata[71:40],M_AXIS_DOUT_0_tdata[31:0]}),
        .M_AXIS_DOUT_0_tvalid(M_AXIS_DOUT_0_tvalid),
        .S_AXIS_A_0_tdata(\^S_AXIS_A_0_tdata ),
        .S_AXIS_B_0_tvalid(S_AXIS_B_0_tvalid),
        .clk(clk),
        .result(result));
endmodule

(* ORIG_REF_NAME = "main" *) 
module Blocks_main_0_0_main
   (result,
    S_AXIS_A_0_tdata,
    S_AXIS_B_0_tvalid,
    clk,
    M_AXIS_DOUT_0_tdata,
    M_AXIS_DOUT_0_tvalid);
  output [63:0]result;
  output [0:0]S_AXIS_A_0_tdata;
  output S_AXIS_B_0_tvalid;
  input clk;
  input [63:0]M_AXIS_DOUT_0_tdata;
  input M_AXIS_DOUT_0_tvalid;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [63:0]M_AXIS_DOUT_0_tdata;
  wire M_AXIS_DOUT_0_tvalid;
  wire [0:0]S_AXIS_A_0_tdata;
  wire S_AXIS_A_0_tdata0;
  wire \S_AXIS_A_0_tdata[19]_i_1_n_0 ;
  wire S_AXIS_A_0_tvalid_i_1_n_0;
  wire S_AXIS_B_0_tvalid;
  wire clk;
  wire [63:0]result;
  wire \result[63]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S_AXIS_A_0_tdata0),
        .I1(M_AXIS_DOUT_0_tvalid),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,WAIT:010,FREEZE:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(1'b0),
        .Q(S_AXIS_A_0_tdata0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,WAIT:010,FREEZE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(S_AXIS_A_0_tdata0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \S_AXIS_A_0_tdata[19]_i_1 
       (.I0(S_AXIS_A_0_tdata),
        .I1(S_AXIS_A_0_tdata0),
        .O(\S_AXIS_A_0_tdata[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_AXIS_A_0_tdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\S_AXIS_A_0_tdata[19]_i_1_n_0 ),
        .Q(S_AXIS_A_0_tdata),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    S_AXIS_A_0_tvalid_i_1
       (.I0(S_AXIS_A_0_tdata0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(S_AXIS_B_0_tvalid),
        .O(S_AXIS_A_0_tvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_A_0_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(S_AXIS_A_0_tvalid_i_1_n_0),
        .Q(S_AXIS_B_0_tvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \result[63]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(M_AXIS_DOUT_0_tvalid),
        .O(\result[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[0]),
        .Q(result[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[10]),
        .Q(result[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[11]),
        .Q(result[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[12]),
        .Q(result[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[13]),
        .Q(result[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[14]),
        .Q(result[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[15]),
        .Q(result[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[16]),
        .Q(result[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[17]),
        .Q(result[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[18]),
        .Q(result[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[19]),
        .Q(result[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[1]),
        .Q(result[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[20]),
        .Q(result[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[21]),
        .Q(result[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[22]),
        .Q(result[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[23]),
        .Q(result[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[24] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[24]),
        .Q(result[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[25] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[25]),
        .Q(result[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[26] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[26]),
        .Q(result[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[27] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[27]),
        .Q(result[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[28] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[28]),
        .Q(result[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[29] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[29]),
        .Q(result[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[2]),
        .Q(result[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[30] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[30]),
        .Q(result[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[31] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[31]),
        .Q(result[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[32] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[32]),
        .Q(result[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[33] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[33]),
        .Q(result[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[34] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[34]),
        .Q(result[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[35] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[35]),
        .Q(result[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[36] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[36]),
        .Q(result[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[37] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[37]),
        .Q(result[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[38] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[38]),
        .Q(result[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[39] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[39]),
        .Q(result[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[3]),
        .Q(result[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[40] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[40]),
        .Q(result[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[41] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[41]),
        .Q(result[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[42] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[42]),
        .Q(result[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[43] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[43]),
        .Q(result[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[44] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[44]),
        .Q(result[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[45] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[45]),
        .Q(result[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[46] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[46]),
        .Q(result[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[47] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[47]),
        .Q(result[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[48] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[48]),
        .Q(result[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[49] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[49]),
        .Q(result[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[4]),
        .Q(result[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[50] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[50]),
        .Q(result[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[51] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[51]),
        .Q(result[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[52] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[52]),
        .Q(result[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[53] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[53]),
        .Q(result[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[54] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[54]),
        .Q(result[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[55] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[55]),
        .Q(result[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[56] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[56]),
        .Q(result[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[57] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[57]),
        .Q(result[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[58] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[58]),
        .Q(result[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[59] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[59]),
        .Q(result[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[5]),
        .Q(result[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[60] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[60]),
        .Q(result[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[61] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[61]),
        .Q(result[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[62] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[62]),
        .Q(result[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[63] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[63]),
        .Q(result[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[6]),
        .Q(result[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[7]),
        .Q(result[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[8]),
        .Q(result[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(clk),
        .CE(\result[63]_i_1_n_0 ),
        .D(M_AXIS_DOUT_0_tdata[9]),
        .Q(result[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
