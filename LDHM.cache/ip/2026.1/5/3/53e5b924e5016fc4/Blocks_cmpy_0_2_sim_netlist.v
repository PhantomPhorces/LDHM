// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Sun Oct  4 22:57:39 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Blocks_cmpy_0_2_sim_netlist.v
// Design      : Blocks_cmpy_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Blocks_cmpy_0_2,cmpy_v6_0_28,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_28,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_mode = "slave aclk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL:S_AXIS_B:S_AXIS_A:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_mode = "slave S_AXIS_A" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_mode = "slave S_AXIS_B" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_mode = "master M_AXIS_DOUT" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 73} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 33} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 40} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 80 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctrl_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [79:0]m_axis_dout_tdata;

  wire aclk;
  wire [79:0]m_axis_dout_tdata;
  wire m_axis_dout_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_U0_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_ctrl_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_dout_tuser_UNCONNECTED;

  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_DATA_TYPE = "0" *) 
  (* C_HAS_ACCUMULATOR = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_S_AXIS_A_TLAST = "0" *) 
  (* C_HAS_S_AXIS_A_TUSER = "0" *) 
  (* C_HAS_S_AXIS_B_TLAST = "0" *) 
  (* C_HAS_S_AXIS_B_TUSER = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TUSER = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "80" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_WIDTH = "33" *) 
  (* C_S_AXIS_A_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_A_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_B_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_B_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CTRL_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_CTRL_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICE = "xck26" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* HAS_NEGATE = "0" *) 
  (* ROUND = "0" *) 
  (* SINGLE_OUTPUT = "0" *) 
  (* USE_DSP_CASCADES = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmpy_v6_0_28 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_dout_tdata(m_axis_dout_tdata),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_ctrl_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_ctrl_tlast(1'b0),
        .s_axis_ctrl_tready(NLW_U0_s_axis_ctrl_tready_UNCONNECTED),
        .s_axis_ctrl_tuser(1'b0),
        .s_axis_ctrl_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BMxUo3/4RjWRj3Wd7LObRf1dJ79+yn8FsMFATFaVfsBA8xvy6x6CQQgz7KQz58g0bMEOhjm1++c7
LW3zfwFRivL1HbRWiIZI7Ci35xcfOb7WrPjx4+faWERPur9fJ0ZpW6TXRIJaZxhdbijAn57szL1u
oY06V7ZDTHH62mz7+P8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PZpbUU2/v8P7bVkX81KBrfcszndQussi35nNW4bb8aIXV+uhAFcPEE66g8JBccoD/vIypaaWJxLi
2bSSz0DJCEN9VUvx4WNtcMFLuY8RIvfKxzBPcydC4h5Z7O+obGNKc74rKXRaeizZMbgr0IbnvIRY
Rx0/AvyLjK2t8K9cM61XNhcosS+IYnn65CgiAdoHhZpmdMGE9iUjzGizLUrwgZgIQqHavI8rbzec
h6/UgB+d81imq207+v3thlweVVS8SMr9yqHdBDeYqb8P/9EhqteET00bS8OzN6gN8UPx2C3xGkeg
YaFnk9OFI8wic7eaPtj1cAoNI22z5kt4mO8X5w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vg/IkoU4ye2HWVLAXwHbxK3IiAULJesWwgoZcSs7ATQKNACuJSmfu0Xwj8wLF1OLZctTTAEHnz9D
Pbji71vsCSNGqLZGUZjcTNvwyXuDyzLEwm1YE6QuWK4oGrL1x8YnXBP9vnCV2pi5ZU4Z8vq181PS
XakZS+49BwNUWH7sveE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wha7Cmv16oO9YjJ3BJOheqrLdMjc9fJwH5pmenhBn9lE+3rCitnGwBWGfse3+31MTJmjzGBTeixX
b234IkpPZXTVBWW+vrliMK8U1zfM7cFWEmGkMEpfgPESiP4qoixjoFeTXhRul+PSK4sfJiQ1JuZM
shbB0ZseGOaan0k6fufM2F54u1qVHngx1ylLydKoB0x7/KbomzMkmzi5RR1y+hHqnIuvxjPC35zO
EsuwCdITOxpF/weNypzF2bYpcsKwzqDeXV5z4wgOR3SOqBVPXJw7oizJyePMvfy1UZvvcoU5sROl
44yafMVu6++bVpHzjz8m4eICJqM6x7zYTP45sg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zaDbbb7WrRFlby5l2tNJ3htlRanDbqgE6fvYYnfccBt1vteGmTg02MfRaByrakiSFz87iH2AFJ9+
XBSiVRmcuwHJkEqhyrvmCUuSEFbtjAsW7b8RUn45za4yIqKt6MaVPYM9PuLAlpEBq2dGV2/o0/Fq
k5LsFsZqFc3xk+8c9KyGvayY5I0SMh2HabQ5uBGlsdVRpdFDPi2XItXYOOqirZVA6nBdxVlwVjEk
KjbcMHAABXTsV+XPaU3U8S7waXH/i8wMVLDFd84Ji/n8kJwpgsr60+lTCp+uH/nmjoZ5Qk4siKke
VwtvSEqYS/Pbmrrhu7Zq3fhdewHZhXdxilbf6Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ajg5y5WFg0hSqzq8wqdiQYU4OVNyonv0MPorUt2Yxtt5RCZmfhWi4uYToqC6+eWR3kzdwD6FCYOI
rD6voHaQRsm3WHQGJLoleOjl24lBhRlYBTXQ6WYlYm1wUI+arNXXBC2Wh4BF3u24qfZwzMNnaSPI
9Sn5D+whJCtoEiq5NPgj8LPylOv0rdTLZd5umgZYUe0vAN2T3YHDS4igjOiQ8xVuLrtFanrRIIDU
f5ND3fACEF/M2lAHCd+eFzHtSpCX6H7xgqxF23IejIyj6vxlMo4nZig252a29w+1QTLTDVgY9akL
0QWuCd8AlY8QX1r/zVb5uXxiCKLIt7MWSBFwrQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dst/ryBSzU9N7sFYUmWDVbiP6gHazoOLqteELRn6/pKFj5s6s4tM4SkMa4J1pPqJSkra6wiS7Bt7
FrVHYy9Jf4kQcYR+oTewYwdfIWo2L1L7HSal8UIFzl22GvFeKUlVWHuvg9nCEDT7NmuQFff2Gw0z
PSR/BUHvWcmwR2rV6vrYoyBL11a9i1vZ1Zw9zXtKq1Tb6td9cor+Ew+167b9kNjDeHxvGuJ2Aasm
73tKJFEClj1T2laAa7ryTiQvgC65Qhy5nObrvUc/cMqdI6ajwZSDZPFLCAwDVdrEcrjKw6D56vtT
vuAM5CwdP+0WuPHJdYQ38sjiiG/+SO4n3DaQQA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
scLy7Ov8cUgkDNlA2kRA33d6vwL3lYU9Lr/zzhiFv7j9AeYgOmtuIc0kL4z+ypQ3yI1rDtbEhlos
7IhqxKJ6RHwRDUAhdBplIkHEOlzydVR8HzxmeUoL15txuPbYiiop6LqUzz/+hMn2sfRfHe4wZa1K
Viqv7eIB7nlFCpKkl7jy+NyprcjWcfB8q3i3GAlLulzefm7/mPT7KtKZOTWR5KXJr+81b2NRF5eM
VxJifjnKFA0aJEWh//LyRyLNpf+NphEBeUuMRCDTwBDbPX0sj/STZuBeKPo3BPats/MkE6UXm9j/
oQ6LUXPdvfD5UXLZZKDQveAQp0w/XlB5HloBGyusPuO9UjxkbKzpH3EdSQV0mrVvvo3ljHz+tUnH
ivfll8SO+MHkt4gzCUjrimEKzBs85x6xFCicEN85GYJQ+Op730nggce5F57B41t76sYCU3KshbOI
Ib9O6RksxGVNQqJWZbxhcPENdnzwrY8fWkqCb8jJQttoNJlGPhjxOr7b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fkI+wEWGISFnJEsi1GuKp2KAV0HCt2yUp70uQ4vFEVoTYqfm2ERZCNfB0CiesqkJoU27BJgFL5Cn
HJHDlnDwY2UkNrs/7FYr7PdpKcW8BrCvZrNwksAaRu/b5ByEl82gC9L6jKN93PjhTkxQUka9W/65
upmXgACXOSk6OjYx89IqDqeD19sABHxyFu4ZCaQpLDaHNFQvVJren4f/U1NpXTkC2wrjE8OZ66aT
HOPfXKqqvNy+38CoHkLmSscQevf39zYdN1Vnuv+t7Js+OY/FcT/29QH5vxrbrm6uxRfp5Atari2z
xoHneHksJQTe9T+8fJLmYHahDqMwZu2vOGJomw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5360)
`pragma protect data_block
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
wNQ=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BMxUo3/4RjWRj3Wd7LObRf1dJ79+yn8FsMFATFaVfsBA8xvy6x6CQQgz7KQz58g0bMEOhjm1++c7
LW3zfwFRivL1HbRWiIZI7Ci35xcfOb7WrPjx4+faWERPur9fJ0ZpW6TXRIJaZxhdbijAn57szL1u
oY06V7ZDTHH62mz7+P8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PZpbUU2/v8P7bVkX81KBrfcszndQussi35nNW4bb8aIXV+uhAFcPEE66g8JBccoD/vIypaaWJxLi
2bSSz0DJCEN9VUvx4WNtcMFLuY8RIvfKxzBPcydC4h5Z7O+obGNKc74rKXRaeizZMbgr0IbnvIRY
Rx0/AvyLjK2t8K9cM61XNhcosS+IYnn65CgiAdoHhZpmdMGE9iUjzGizLUrwgZgIQqHavI8rbzec
h6/UgB+d81imq207+v3thlweVVS8SMr9yqHdBDeYqb8P/9EhqteET00bS8OzN6gN8UPx2C3xGkeg
YaFnk9OFI8wic7eaPtj1cAoNI22z5kt4mO8X5w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vg/IkoU4ye2HWVLAXwHbxK3IiAULJesWwgoZcSs7ATQKNACuJSmfu0Xwj8wLF1OLZctTTAEHnz9D
Pbji71vsCSNGqLZGUZjcTNvwyXuDyzLEwm1YE6QuWK4oGrL1x8YnXBP9vnCV2pi5ZU4Z8vq181PS
XakZS+49BwNUWH7sveE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wha7Cmv16oO9YjJ3BJOheqrLdMjc9fJwH5pmenhBn9lE+3rCitnGwBWGfse3+31MTJmjzGBTeixX
b234IkpPZXTVBWW+vrliMK8U1zfM7cFWEmGkMEpfgPESiP4qoixjoFeTXhRul+PSK4sfJiQ1JuZM
shbB0ZseGOaan0k6fufM2F54u1qVHngx1ylLydKoB0x7/KbomzMkmzi5RR1y+hHqnIuvxjPC35zO
EsuwCdITOxpF/weNypzF2bYpcsKwzqDeXV5z4wgOR3SOqBVPXJw7oizJyePMvfy1UZvvcoU5sROl
44yafMVu6++bVpHzjz8m4eICJqM6x7zYTP45sg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zaDbbb7WrRFlby5l2tNJ3htlRanDbqgE6fvYYnfccBt1vteGmTg02MfRaByrakiSFz87iH2AFJ9+
XBSiVRmcuwHJkEqhyrvmCUuSEFbtjAsW7b8RUn45za4yIqKt6MaVPYM9PuLAlpEBq2dGV2/o0/Fq
k5LsFsZqFc3xk+8c9KyGvayY5I0SMh2HabQ5uBGlsdVRpdFDPi2XItXYOOqirZVA6nBdxVlwVjEk
KjbcMHAABXTsV+XPaU3U8S7waXH/i8wMVLDFd84Ji/n8kJwpgsr60+lTCp+uH/nmjoZ5Qk4siKke
VwtvSEqYS/Pbmrrhu7Zq3fhdewHZhXdxilbf6Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ajg5y5WFg0hSqzq8wqdiQYU4OVNyonv0MPorUt2Yxtt5RCZmfhWi4uYToqC6+eWR3kzdwD6FCYOI
rD6voHaQRsm3WHQGJLoleOjl24lBhRlYBTXQ6WYlYm1wUI+arNXXBC2Wh4BF3u24qfZwzMNnaSPI
9Sn5D+whJCtoEiq5NPgj8LPylOv0rdTLZd5umgZYUe0vAN2T3YHDS4igjOiQ8xVuLrtFanrRIIDU
f5ND3fACEF/M2lAHCd+eFzHtSpCX6H7xgqxF23IejIyj6vxlMo4nZig252a29w+1QTLTDVgY9akL
0QWuCd8AlY8QX1r/zVb5uXxiCKLIt7MWSBFwrQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dst/ryBSzU9N7sFYUmWDVbiP6gHazoOLqteELRn6/pKFj5s6s4tM4SkMa4J1pPqJSkra6wiS7Bt7
FrVHYy9Jf4kQcYR+oTewYwdfIWo2L1L7HSal8UIFzl22GvFeKUlVWHuvg9nCEDT7NmuQFff2Gw0z
PSR/BUHvWcmwR2rV6vrYoyBL11a9i1vZ1Zw9zXtKq1Tb6td9cor+Ew+167b9kNjDeHxvGuJ2Aasm
73tKJFEClj1T2laAa7ryTiQvgC65Qhy5nObrvUc/cMqdI6ajwZSDZPFLCAwDVdrEcrjKw6D56vtT
vuAM5CwdP+0WuPHJdYQ38sjiiG/+SO4n3DaQQA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
scLy7Ov8cUgkDNlA2kRA33d6vwL3lYU9Lr/zzhiFv7j9AeYgOmtuIc0kL4z+ypQ3yI1rDtbEhlos
7IhqxKJ6RHwRDUAhdBplIkHEOlzydVR8HzxmeUoL15txuPbYiiop6LqUzz/+hMn2sfRfHe4wZa1K
Viqv7eIB7nlFCpKkl7jy+NyprcjWcfB8q3i3GAlLulzefm7/mPT7KtKZOTWR5KXJr+81b2NRF5eM
VxJifjnKFA0aJEWh//LyRyLNpf+NphEBeUuMRCDTwBDbPX0sj/STZuBeKPo3BPats/MkE6UXm9j/
oQ6LUXPdvfD5UXLZZKDQveAQp0w/XlB5HloBGyusPuO9UjxkbKzpH3EdSQV0mrVvvo3ljHz+tUnH
ivfll8SO+MHkt4gzCUjrimEKzBs85x6xFCicEN85GYJQ+Op730nggce5F57B41t76sYCU3KshbOI
Ib9O6RksxGVNQqJWZbxhcPENdnzwrY8fWkqCb8jJQttoNJlGPhjxOr7b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fkI+wEWGISFnJEsi1GuKp2KAV0HCt2yUp70uQ4vFEVoTYqfm2ERZCNfB0CiesqkJoU27BJgFL5Cn
HJHDlnDwY2UkNrs/7FYr7PdpKcW8BrCvZrNwksAaRu/b5ByEl82gC9L6jKN93PjhTkxQUka9W/65
upmXgACXOSk6OjYx89IqDqeD19sABHxyFu4ZCaQpLDaHNFQvVJren4f/U1NpXTkC2wrjE8OZ66aT
HOPfXKqqvNy+38CoHkLmSscQevf39zYdN1Vnuv+t7Js+OY/FcT/29QH5vxrbrm6uxRfp5Atari2z
xoHneHksJQTe9T+8fJLmYHahDqMwZu2vOGJomw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nuzlZ7lnzwO5EDt2v2qJKZrbtiFJVhq2u6c8JTfKpTs4I3wvCde2I9jj5ufcxMEKxQ9t6qdduVnd
Aol5g888xs0v72eEb4Ma13mIlj3o4t96ezPiSYgYC5U9kOgKpe854KJbaQj4sRSwdWhhhHF2TKAK
fpHH5hOf3R0KyjgLovwTn2pImdQPr06fKzqxEHcWOBSKQdWNdhDmb0iWrspSd5zy896Ze8Or5Z9b
bWhcWzjKH+jiBXJGxw7+wyHhOmctF3Y8AXd5qZ3b7plZse+AfOeL3ElYMbZVhYblNtxb11ptw4rV
ODBiPImQeVPVudyRgVB5L/0k7dJl+/13SPnTGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vYa9gM+kvpsQAm9zaeM2ZqDn2rWEIiRrH/Ryn42fCQyqaxkMUqdyUTYq//KNN5VbhnzQytEGUwit
6sp6a7a/y92cnO6OQZRkxzb5hqTbnipTy/2uB7HVAnVkBVFbqgN9MOf6Xa3/yqBzIvqN4jSBii5h
R4hAhm1YcQopvyHokXb4QG7SeiXjls2mZvwiiZK1IGnInUgwZUaEF+tU+nkHFfuBB+0opcFA6Q9k
Q/gs/pNOKM9sP3IJ9Y8VaWOjwgQC9U7rbCbWpQoSf17DzicAMFLOfQuE653Elolj6sqZAt7pbAfl
yPHIvwbUlsInfP3lNlXcY6wTU4n//Zqfn3kTdQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30736)
`pragma protect data_block
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
8hFgPuNJKnXX5o7oOw==
`pragma protect end_protected
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
