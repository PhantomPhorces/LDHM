// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Fri Oct  2 14:38:14 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Blocks_cmpy_0_0_sim_netlist.v
// Design      : Blocks_cmpy_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Blocks_cmpy_0_0,cmpy_v6_0_28,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_28,Vivado 2026.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_mode = "master M_AXIS_DOUT" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 32} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 32} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctrl_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [63:0]m_axis_dout_tdata;

  wire aclk;
  wire [63:0]m_axis_dout_tdata;
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
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "64" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
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
J5ET4ku21+YpIywDmakYhEtyBJu/0euKoOtDJd31mNf9RaN18yzsYA38VhAX2C2jFcGmdujaE8tQ
zKpWgNc/RXGkvxZsC8crQMxrD65DHs4Kqu6Z80WR7yje9rYUAqQdU2ey7Vkvuimz83gzu3LLQDvh
3SFxMlSvE4W48tT55ZyAV8d+LCWQH9a+sOJ0tuc4CAcCc4Q1NqbV3tH9kHXWNJ/PoP4620Q9/8DJ
+L3Mwx7KGGYZBVypTyUDkAtDrisbGl7CA338ePRKIOW9fub5E83NwLdKwYBSoDFb8UuC//JGJyvD
BSCL/lr0YA7KKqwu0Wr8Lsl/rk4gXXvzexzmRLHmX+vLmXNm8y9FLz58XryGWZzqJX0aCHzE97Xv
6MeWH76neH6TM5Qf98DuJJmENDk+xIIsipXCaUbUKblzpXWlFe7hrhvLkVMdzVRX5JIrakJOEk8N
mHqgQRTcg8WUrMG4ugCjMU7/uPxa5J8+fQzKHe4eWv40hdXwV1aNE7GfwTmNNZa4rYXnLB+OXFBV
BSg3r6q0OBFMwg1QoXp/uo3rocseZKp7NJ5gMSOGi3lX2NLW4bHpGa4Xr3DRedp1fCaFBjZiQWGb
3E+H1r2Ic0lHAnn0QSPwvKiiKSoBDkAtwidzpQS/T7K9ZjPKBRlpMxL89ebAYNdIA/V2pSq33lwK
Wet3wS31ZzC4W8Sz+azA0dxqitZswo6pfaEcO8jftwUmTYy1aLB0J72MeNnjqkfDYDxG4N5qZsCz
n2LuUIW/jFD/SjhJcB9eykpjKyRpoluToCinkHOpCpxnwge9YH7QuMBLYlKtv9R5tKztiGFYI4Hf
mYX9inrom4Crg39/mM5rpVg8Sp4IQZXTCjA46vFinaCUHE4KueU7djV9pcnCxV5wQgcENcY8qfiG
0N+LA9QwYsxAL3P+cgBUtludQnYHju8D3W0nE9PrQ3zqqEHYuOscz8EexTtELDweE53s/JQsY6Us
VEm1OGRqVKbwdNpD1ZVEEW+a7pcYjlClFxzOC2CNn6K6JeqIyRafuXaKIDodBRQBcfnreSOPEkfk
P+ghjiY4pAd+z2RXB7osCWFqZi3elbEu/sdWC4m4fU9+dqUIw4+J2NzHShMQgtNe7PvQGiNsqh2p
0NHlMK1vhgBoJCRjPLrltuadI68I0NzwgTCKQH5dnKP3Ih1K/XSnOcdSj1CQOk2KI8d/a4SkTYiD
XAJJo33emleGJOZUcxIESCLvlx1Le23BbZkwt/HR5ydxvpFoGzEBxz1HMNs6l8q/LlceUjxCGRfr
MEwXtBK18ErWy3OOfrxwzSGFg6hqoKPYgXm+8PUmmDuE1AEjLm4aE0MY9Y+chxcvrtzPoDhmSjWY
hSiPK512BhRe2r6rf4iiuTruynTk2Xomb16r1KQCKaPJ3P5IG+huuC05E9DMmGs/C6hptDh5Idju
S3uzfYclZjF1Spe2TohwUTqHELgaa2K865AW/9pALt3IRjIre1/WJ8v6Zz+pjdRS+y/damP0M2zZ
orsR4thHQDLl3R1j9pCnwRi2urh3l6pVd/COafUuuo0ou3yNQ+UikAoftviO6kSZ81qhEjRYSkCU
DUznzycrnIfRW63OC7ooseBSJ9EvrV9YEUqxeF7zkt9Y89JLKh7obox31ibREJqXLFxmCaI4vWfX
jiwoI8hNzNSVYaPHDePEko4qbYTHOhBInt4A5xXLRd+af3BKt3rM2Vom7KwA7TEiZLMzGM3N/P1w
bt/P1XgaMFaZechY8UcnP1S0FWJLtUgFEKnh9iRTVwQpfAmVUjGQILdusvPrfClx6zoDIltqErpc
hqRZFK5UiYh1L7cSabrEWuq7Yv1pQE6at21cBXu5Q4HvcemyBvi98sasHQAAeuq3wq21u3j3eP9C
4aR03DxBsM27Twg3NzHHw8gvCEiQCVRnqIo86+iWeeDqGQluGVKvXz3CjRp78ifDjURi5XanP2Bs
ZxWoEd2pFZdqMMXukj8ZTYD8PgvEQhWv7WvfBJHs4gIql/KQ9+21P6cqolRCvi6hN/yaujqY3K2q
/6MG4VpaaB98lNaubaD9M+hZfm+VnNPxTyQOaQqiNM8R0wqDf/divBxIm+DLMZipCJDfkxtUv+AI
pCAK1uoWJHQ5atewJShQIxaFYgWr6F4P0a8lFECtdF+r7+/++N3NeunEyWEgPJDRnOiZ8z1cBP51
dFPKKAi0QbR8OAvu/PvxonHDCvlqo9U3XrU4ovwD3k8j+HpVma8OrBVtMvA4vJFF8R19tiWCDTR2
+2CLw6hGWUuNTB5KvM2QgLIYxiQBeVm4Jwkjhpionbkx8jfue+DP8YU1d5OYdD8xI/DOifaG777X
gDWhQhrSwlFI0A75/X+c7suGpn4Vp7Wvr8IGFhjzvwlH2NDDO0iCOCqSudkjYRl7fEwSIFLJIsbp
Luo+9Nnt9i0XjSTyCOIWI21gPMyKMktQukrPo5hrKgLQXe3aF7sPV+5c/T24jLCXgXtmltdsAQ80
5zQcKSDwaemflhw4r4N1929Y8JmjNwPJo6CQ0tErer3LHFMokIuIGUc5o9cuVo0qNy15TNw/U4gB
RdfMTmGazKHOFaqWP2NjiiQKSeboLSiXo+/n68OJaANR/zz1zx1r3x/Ee9oVzWtSeh+ym34VwSpu
nwCEWeDEji0Fou+kmkv7pTLQRxa0d42W/5mRNk5BtZJlYdlqiiC27KPPhbL4thCDewQ7SfTQVmB1
POJmAl7padjQAAyZWWH3GIVo8IeeKLhEowvwnsM02dxllFBj9uhEjbbK0YCZzuYCm/blyXwuTDhA
xBnVPyAJVvCySNrBhdGE6vK1TPJ9+42q0MSZwkrW571te2NwJNRJZpeTj/S4eAcVxPmUktdjgvtt
RwxUP1v4vSPcmKo2brOsTHHhRb93IbSOspu/CSBORSk3QvtYvkSz/9SiedKDY1c16WY2MY3DQA4J
tjLLLYc9OBbd7iOdc6F94TOn/53CzaUt7k/tRpurEA+UxHlQ50AQ6MGIdNG74TbF3xxDR8HZGQ9D
9VeAr0COGvdcv0VwJy6KNvfOyoZbdceFdxQ/K4+YW9dgaCooZG6Ty8+itKJRYu+Ll36Z0VlopIC7
2wisB1CxwJ4/J/6FgyxmYM/ohPXZB/DyVqZ1X4Ob+60XadLkL00oxvr35P8yI2viDLNsHBRgoZko
Xtb6sy2V6zTWBOVgAOVg2qa/EwRn2i3FMQoUQ8x1Vv1YkAF4BF12xBEGPUK1PThq0z78phqjz8rV
yPjFqfNT4WRaVDYl5ne3gwjfRP7ylcvQ/hTmNs6Yc8JoKCgrU+DELHSyEw7ms7OCZUtiSCVdweFM
xFTjPjRjgJHKmtJyM73udXV5Y2rfLSRxNjRc2KFQZ0LhNpPHBJujODSwCn6bXS9RDrDgrt5kieic
a8t8YX/SrMvNQ5CAE8Wfk89q8HSUGQgmyGIfsZ/uDdF/HDaPejUfJMT3XuJ8WxByMDuzQb85bu+f
Lu97LLrmvkudJhDsoVOfDWvtu5Cd3YR5DKmayGiTANSnMA9TcTdG17HFTyVJ+lO0nJQzVh3AihcJ
jdCVJ4FacyXJdz4uwLGaeQLa7J6gkJt2Wd0/sT1eSyGj9p1qCTsM4NAWcdt02J+L2xvAQUzC4DJz
0BluTpk9wECXamVQRKEqjjS5pIIv52QTPrQxu4oQw3PzPQYcAwATeNqDKM6oi45ZGDKWKLJ3mbAG
1XZVGqpoZ+dQeBNZZOCwsf41tPT0Q0A/li2MinC/uc4t2qb/XFNf5Kfj8za0lb3uh/l8b9Bx5quR
iagFdcRvJcdtHMBm6rCx1a6lIjbciK4zwA0zy3WMKrXrY6gLzoBgYB/Z5i6MT4A6fVye6010sHBG
7wZqLaBrtlXIehVlnOdK3N103qpZC+vhSU7/ANU35rUVQIHegQFrVZBi2GOk/XlVSGvM2GD3JKZ6
mzInLIuIvtkDg8CTk59Rx/0sziVhTIUMgb/MS6LduLjdAfibEPSf/cdw5vCKtI5JsiNl+ZVSkH56
+I8zWH0+/H/7D8wanwMTKuukM6Q+MB/XY9eGhm2SID21G6mKA7OfMfL0P7HFNLN6c3LjSDYPc+8X
5AwtXnBxtPa5XcYy+Qh3yYCxvz7EVs/+2wYTuMo5/Ajiu+rngJqTFNXjXD/cO2QDpGsRDAHOYVs4
P+8tEBc+pRMLM+u1HHJ5/vNp2A0rYSAycWq0Dtdn/tVMhICV/a16bfWfHD6LoHkXUODsuis6muIe
6y9e0bTkZxdhudHC/fbFCOH302sgKoSkyPhREYMPtaD3OyHYyWV2x8JJV7ZbsYAa/8TUK9vnQVav
/fENa50DdoKG0kTuJiYGSnwaiSHkbt9WErTfQU/nb95k0BXc2KDzw/FhY6k211ddmvFyPJOuj+wA
uZPOStJPTHNUceDeqVWnsM1D8d2t3fMGdxnNjTVoser2anow8l/4sKnbYuixzD9MyQ5DdWI4Ra+Z
/PR8EQoerxRqHU0xAz6iWl8M1eUyIHZwLaQQ+o9xkT5gY3BPkZ7ieSvjYc/+geC3PNNV3o0jFEBB
3V1JMDITHFlDj00x+mkugTeJdEufUd7BisWiq9mNtYzPgmLnuQE2Tkg4rKhfy2NVFPutg5FU96E3
PRmS+B9Tm9ueK0IMwxqV8uWxIauxkERm7hjWxBMUpd9YICvIwa1/dY2vY267aREoEzH8DpKgtn04
xu3XSBdjQGtGLkttuKrWOhh23HTctoIVUZLaq3721P9QcJFuqwY5AAuAa2wuTlmDcxA8MDEVRruE
juK/I7r6yBsdeSXkbiLpBywsLed/wPaKBjAGs4+G7sZPPjyMkYDL9J0+pcOi+1q7y4HSuvsh2OP5
OwQUQp6UbRXcUVpYyDgGog2VlzzdauJSUnRK/UZARvuDahsAvRaMisfTiKkWbGWgJEg7sSn+GJB9
5xQiwsEbi8ZxQhOj0gj0DcsztiJ9WEERcYLQlJTmnmKkSKlp8eei1jOKxC6MJz7RmBtHmiJxoX2l
fI5yvnsRl7dZsf1m3ew2eHYGU/UZv7A6jsR2lZYeaQGocNPAFcr2ku+4sQ/i5GV8LlatXMfoAkSm
LsE1OUKkvXTisaLirfOdO1W8PrEK3Wz/nDh2f0IN8SpxXGpP/7rVlU78n3r9z/ZNhC9ReVciRT2w
mDMRPptE+ive7CdR/AZm2lJd+tiyEYaLEQjvONh9b5G6p2xLn/pwUGwWmOps8JI3VqugFPPM/pZk
DyJbxE8FOEbAeZHvukbO2HHP/mKk4t+c3J8TaW/dW7wHtkTjX1QKpq7s1yeCYh11B802+FedcEGN
EkAfNbzSjbT3XK0yTbXOOI5xnSn1G7aIznqApRN5L4qNK9PK8CpK4I3h5oqCV46QJj8oN68i4/Vt
841Eiz1lQmJqJH7WRE76ovyVJRs7OgoASzPZtWRPiNRq8oM5j8WoSdAUFCyd8klAFWkqnP39hg4d
IBTF05CmKm3tWGFze/4ICIN9937giTViB5gBE3avQQVtx2H7G8oBRCVgUofS6XeZp91JajnQFEaa
9FFRHof1IFO9o/GiFF+Dx0FjQDl4zSJUR+QpteZPWGHaYnLouEUhdiJlFEWLeQALDio9MhFmHwZ0
TaXk9zJNgr8mH+QZYnwuyqjpD5Tv1VFezjfxXxQgMHMoOdkJ4+THmSUNc+uOZHnw06jCB33+8V8z
tmtOTflsEAR2xxlsDDgHcWu7Pv4Nq8vqT0mcpsNBwC/I0NZLlL28ZRJ5fc2Fp4NXYK9YHjiPsAnu
XTAVdKbmlu/7/3MDszMHjY9ufkrycI/nOukwifSKmtYMqBojDgZ9R7WoRaRy9BENvshhDXKh/pvB
cnU3JY++iq7ph2gyOmikRtoW5TlWjB89dkkL4yJhkyU0XkYz4dl2Twincbky92FspkLb+tWWDijS
QawDRSoRd+fd4W5jPjb4dkKEnsEnrw4D6YlDZv3cPvY6AgzOSHB9oKulG5psbspTb5p3wljiKwhG
Tbldn9kPKIyPu0QDaCEkzAd5GToZK9dUPcrLoq3C3PD9jV+/315NTxLU7qbCQ1Icd9X0rtZfROjW
5y/pBccTyLHpCixqsTUI54JhTf+sbojJe0nB4if8EmSv23p2JRTZ4O8QEc2oj379RCLKkL9r+skZ
5d5LZY0MGX+Ts608CyvkHeND1QBLIfS7OkC9My0a15cCCUL38MbEXkPJazoJ7rR9QCiAlHsCc6Dq
0egfROKw9yFgmfzQE61c8SRv/ptilQc+aSKSqAioPDBzg+/Y0Utl6+MH8oL/8a0joESunHzXkqqz
iabu0z5CCxFGTViJ+BWg5l9DtqQFZvL15p9fyrW/1kMkuYhe5FzggEH6iSgq8XYrQ/sBs74bZvHn
4GRzFaBOpuwTPKOZiSct0f/lPYmVbGqtI+J0ikYwRxqyFYtZzBt9nn8OaRUqgLi/l4hLbCMglboZ
XRzox5ImQaoL1C4+uQKzdLizB1aCtEG0wybUK/R77Ay3oWiUZRSgUtDQIF/7V4BcrMYtYo3GcKaZ
YjoGLLES3Cosn6rMU6Ar0dxFqL17waMqqVK4gadbbTQFLP4IR0iRW0NDrDXVEVXaFBUdDXb3kdYb
vHUtm6HvfD9ckhKJasspwM4loRBVuENnE2GqX56LXTIDoOqC/k4MkIw76NDaTfQPUBP99iWfWWlg
+NUoGAMKfBZRZdRZYGOK9/4RLOCgJ4CPV+DvqrWi3rf2GWwgOBq8INXETvwtXez2P4mxiM8+bYWm
kxVzyy9j9V91wsVd8+lCXVMhCsdQeLuV9TJaiMHq3gTD/m69CYBBOrvIMW8bARX0LlPuYqoUK20B
A4SOCfZ4jetVcg3dyiGWpKw3ffzr/teePSZ1xgc5LRa4PMfxP5nY5f9N21fdjBLDuCRExHSQv3rV
sVmEHU0l6veY3FzOLg6yABgyhs7JgnJQEfx+LvuD928VKtOpm5V7lLjlHTsPeUiTC9xDPKMMxN1X
0Hs69dd3nOJc1Ay50VVEMPvrrtqoFuKusrJ9fJGWpQU7DjTv4uwn9HvMsOurTK18kbW52TgDs4ot
SHCXsX5DrTlg9zP0LVvCwz49ZY0i7L3gZsESQsPuPgWCVoXOcTxnNEzkuMPZfRhrHV2S7BGdu3IK
kXE=
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
Ry10QWiZpioxCuRM8bd3ZBA+VQ2b9zurl/h+0cLbYkakf8R0GPQ7i0U/ifr+3pTGFGAblX8u5bfV
RRRCP2XJYYhqEau8mRfUIlb68Tb0YsB+n85boyeZHcd7jRmH0Vj+A0hvbpNXDCBEkBHKIdk2y0IW
BevBQPq+RMJSdSuFQyu0nvZNoXBxm/43IH5C0C+Ayz4usY707kBJNuxPAl8umGBKmEdRn8LmWfnp
W4AzjAn7pFkG7ZtGyhgHJvb25gF5IbwID3G7WFU47Rss4B3r1dm1TK6/2wSBoenjnGLeJbZnFk2F
Z2Ck8JbHY1wyG3cdW9IO5kvy6aY+ey3gbAJ2rA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZaGpJ441PdqQMynHUVyH8H3bV0wVhgyOlazvPy5fdKj2WDPoR8Shyfg/TBdtuVmFHKWoyjc95fz8
5No+j6E4drJ4AgCKfVlr7IKlvP1q/is6p1rlF/qz4jP7KQmhUaYfBw8ERGqORKq9yD5hD/t9P4K0
Q9VSd/ehYwQe90HrG/iLU5o0UgFewqbHXVFHzsOKpYEm6bn224ahPQITyik8obJYcZIXnfQmytzQ
ebcBP53fWljaOBZAuV6B7kXPcoGNBPvk8X94XHr//PcdJg4CWkH50nMlXdfF+GStemQ5bS9VXsFI
4jv9+WQdkvx4RvW7Hsq6IZCV9nViIIj7PVuYYA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29728)
`pragma protect data_block
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
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
