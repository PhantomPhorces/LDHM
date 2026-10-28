// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Sat Oct 24 13:03:20 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim {/home/gareth/Documents/Computer Engineering/A
//               PROJECT/LDHM/LDHM.gen/sources_1/ip/squarer/squarer_sim_netlist.v}
// Design      : squarer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "squarer,mult_gen_v12_0_25,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_25,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module squarer
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [17:0]P;

  wire [8:0]A;
  wire [8:0]B;
  wire CLK;
  wire [17:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "9" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "17" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  squarer_mult_gen_v12_0_25 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
D0cFowKNN2IZ34Nmx0EEeNNghleHhax6sNbnhlJTgizZJMYM3MBrqZf59LRunh3K3cHDkhCthf4N
J1muK+rB5OTBnUlZGiQm8EzTJPjgnjJ9/vOyZzL71UseuVHeArnvH3rrnX976I93lqZVd5GnVeWp
fnjbx0Xz5ZyXrswRIcQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ew0q1oFzDOzBbJa/M5ulgw9DItrvUM4qSJGn5/q7f+q5HuMk8VJ7Hfg77rvN3trxTdyc9sD+/XEo
2FeP7/oKJVsbsrZ9nN2hO6dO174/0b6Y+pdvYTPuiRZ0dfn5GhYSfeET4BuqdKlLY/0FTjKOs9vI
UF1yi6N6D5VZXQeh02MW0HecqpO2/x9TPkKs+xvbg0QeWdCG+ihtbLcJhw9lJmpSSwBx+oocIEwq
soDD3bmZWyTRO5OGzZugafynS1PeWy+/kL40Dl5qgsHrCbksOn6RxF39k470r1GgsW67PXdc2P43
EwJ1CSOZcGnXNNdzN842XBX3BTXCmQ07ZIiT8w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Yn4YJ11I+6YOUPxunDWHsuZxWJWdtJHCuFYi9V9Qeyjc4IGolnxo4ahIHuPNfXv6R5Jcycs/9oZ5
QNfnf4Y74DsRaQXs8/+SVL26fZvjh4ZVhbXpiQD76cq1bEDV2UHPZYAKifYY/8y9iSAH3MzU1bSF
HD0alTsJMXDRnSJ64Fw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L6CPwRkHskSG69/o8yj0PIgFIs/9GjM/ceJqWUxMRn5crzUW2rXlk/YTQQ8XNMMMNYRmuFEGVDk/
6BY3ErLKM2lfzyZIHT1G/OY+WNf2LFs38qMMx2QE7jrnR/gj2dvEV2pP0oXkknv8T8XjiEsCUTzS
6wgxK522bHLDx3KdhPBdnDupGJbtNKZG3r7LuUiLOofzOUGfRjg3cOELJSIt/AvDMCWXoCnHQWHR
bP0hZ+X+ZvnRG4zGf1OVsJgvzUXoWND6UhbsyajN4TOG2V06Hl53iikSgvO2zhtsHEcMAHUXndQM
3VxdWmtwBWNa9wicmdQHxwGsVuP7NclbxTJ3IA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c8o9EUyEap855tKpAqS7CrNQsLN8mfwfr+FHPVbYxJVr3iaxiuebqO2JrQxxNi4yFJCzlzHZnrKf
MU7LRkjSY7Ys2DudcgUbOLOItddFdUqQv+WtXIYEHM5hGra552jlQanHnwAqcYK0xWQQstxZigKh
doQkI9Jh5CrudBu0VXdVW6fLz+rmIxihrvihU3Y34Wfdmb0isYJCjQ9XH3NDHaLHqYFP7KZlR/KK
NSl+71RjVDDJjw5H9PPnmxi1ijwFADM2/+V16LTEWKxomnWUHdHy66V/HENRs2OEPHVXmF4jG/Oq
zA2Brh+KQfoEaFq7IPoD2kyDivuMGoShyyvR+g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HiSkabpliCs4hBVM4XGh8gCutUhvqqSguJLQ6mmye8r0GEv6Omsfci/L84BMZjS2ExpaCBW40dUC
jc5tpwTcVcXhfrS82ZFABZor/E/wHLlmsrpA4jNHHPL8vACbb/IHM0iM2eJcwBG8EU5kxv2x4AYi
ap6bLCSDBSXyf+2xcNC8EDmw6LSuAqb2nxv0kjsRhwguL6q2Okgtz4tnXOKXldT/+O78Ve1hNvvC
z4z4uL7JzbiDIiJYVmBGclyNwNKP7UNSP3zeIURrq155gzLSRjzkUsHm67O8o3uNcc3l0ucXr8Tt
RM9UY02yH/tGLdv7lNk+9dv6wHXH/JKSUK9Nrg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AZ3JpjFMBdMDWEgxdjdQ8aLW81I7cWUVjq3VEGw5nlw/yXBqkoi/E7W4Ke1EWmeU+yumiB8DlKnd
X1JUnUOfmlxAq6YKkvJPQIU4Zf0zne6RinQc2s0bbDqwn964kkQhJ75XlDHqeIKwObZOSavZJsks
qBVGdoMfTiHD36dbzGO4o/v0RAATc5NdgMUpc2u09NpHHO3JwptCEJrmtm/RUk77aI3Ci1euFpZC
675TN9VtAtQiupcQ47Vl/9LjWg84sAvXqhWJeNu4/aWYZDEz1aN5ZykMKqBqpO4JrKcp1JDveUAk
XreXCRlF00KSzIY8S2Iq2NJPvVq+9YN4w/b5DQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qcLJwWdxe5vqK54cPCJckVSZGcWctlUydN7OMnOlQu0g3NgkZaRjBHP/CkaLPdgiWGkPLfGt8wYT
z599SEya7Qb170xNMWemJX1qC/GAQUkYGKTzg33saas5DYqA7+Oz7yhTCqmT0OUsISZLZyepCg2D
T7h+OHlTHcFSaQYQaGdn/2Ul/tosrIYgQHfcM2OdTRbE07V67q9mw3EaARarfl2xtywoEEXYF9bv
MmIJDlXdOgbQpH6fRFgJ4/Op2nCL2xQ2EFMHrf4CbJxa69qw08raK8ambAsWjCC9VYbSWEVnOnBK
NnlXMxotY3dHcZ47ZbayFwoTzxJ8/1akj3Y/cvTpjsMg/ZEgzx7biR+DeHwf/kU4LjK4zmZcCy2H
iD6Zeync1DlWMY6EOiR9b2dgp7dAWy95oR3Pvrb84ejY1ZvAcEHOhKVIR+5+ZgqdcRr9pUtc5b9g
ELXaYFNDrwNoD1etLUXdBVxuFGsSIm6acc+jYbEOHUV/y98RnU7v/1q3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gNIWVRSMDI2N7zqX7AY6TvpoFOZpNVRs4qZPY/vSjJa3DmilptcuogRetVS1DYSdH5cFgcqDcLIY
tXuVVzcIEcZlg9GszGKa+cDoda5KeDCUde1lCaVFRC6jJ85a+K01ZvYfbvWvgT9SmB26ANqTQ9rf
HrHmfkN7UtT/OnsBeEOkfDhZAXmeFRXLac+3bcbGDZaA5AGJrXS3IwBnGs5KQTdmduotnV6lr+8H
fFuQGl7YfrbxrXJe2at9SbfIyCf+pSixluoX7741DQ0AOzlbEvH4WNPlFxjo/A09nBiZSQkR37My
R7byfWx9OeHNJ8yIxmrWsp9p6mf1q+nCCzw4nQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aFqlfr2m1DTHAphTwxfKxIhm1FEHLcQxcOfifIQPYsQQOavBrUKfbTRFrGTBZKXSo56+M5LbiQYW
EHEF1ruFbQKTaaEVr256cyYlG3UXLcBlz+a+ct5db4nTJgu1EoTGWV60tu8pPY1jX86H4LiG1msm
OQ79MjYMnOqhcxNEXbFSg+t//nF6L0mnAk46hFF7ljD1W+JwlCuzx1EE4wezNhejmgywgREHe2ff
f+76kCc+8R3eZYRwhpPRN/O8pvg/yeVxgdu/3zOGZIWu9NNY+VBkT8kwTOV0zRSPWyyTqgQQTMBx
W3h8S3azWDA/t2Sm3B8EbKgPqOn3fcgnoWqfYQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b961FjPpyt6/y9Jo2h34o2VC6ej3HZWid35JHSEWTRQf7HVn+F2SvqVCy8PNAK1Egr9ulwYjIOAM
MipHrZm/Za9Wa/alBkEKZtU1LFdRyyh3Y8BEQeDeOQjZqWWJonIim6xgng8NRY2y8WUD/2YjeIw9
y+andMrdrulumFAjBJdp3C01/yB+AQcaRoC6e3ceIc8hHGme1COeFb4rAvPcsH4L22l18hluPVg8
9BXH1Lu05+HLz8WU9L9Ar0cXbrWsW8ytwPslocKi9T5CWxLB9jX5HnaHbq4mu6IAAeR3xDtwzipV
c1vaQbM+xApwFdR7uCbzF1GHskIX8laxRsUGrg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5712)
`pragma protect data_block
WsyrNumbH+pfxdYM51oHL9MmYN0EcpVSk4tnXBgjRpdw41m/29aGR+Cl12O/pO0AUhgUCWuBLSXl
0UlBiBUNMblHKOrDj21eJWONJpqSXKHffILt9auzRbTBpG/Mucxo1k6lZLpR1MoFw0PDn9lvX6cj
4iG52uGcOvi1f1RcIp/kHZrVfS4qbyFdU645DW0R41TksZOC8HyxbJRKxe7LTvmnCu35tV9X7CR4
9PtKRZRj95fxF4DNUVIWOAc4OMjBlTsqs9NC4oxeqnE5qalSEU08d3ViMLwYmwJkl8I4sMXYPhgp
uDUQKZ7e811I2maThgj3djGp6vi1SvjZcnZCcnN9jw+G7BCc7I6b7waO+Yq7/ogX/tvlvJsQ5JFI
qriYXRSVof/puvBQcq4+soDPr3so+4FePuBHyqMbAIGst49RFSmEANFMcsr3ZZY6ShVsvDbY+vBq
MvNkvl4NulMhBXo01kqA9T6EyqJmtMcD6pGJ1IuSwZEQ3ecOBhCftl/6fB73vCVc/T0BgLh5BcLG
gqBjJNdpMX2fDoP81H9EW94w8RK8EkS1Ek7O3nq15daJlNyXCQdXNcONAhVUWLJKaQqLAMhdfciV
92uqG0fDXkKqWELuJj8349OrVWkfUr0Ky7doTP0CrSPHbgOqlKsphBbDzx9XAD6pODkDjKKwkwEq
NakWhgvNi9h8YuEqDNKfb5aA9GNlGrd4T+4iQh0GKplqTeViChPVSGMa9AtdmLXGn9zRfHhM6SNv
HHI7cS9QnNNy2qQwRiUfMtE8Xfh3P/BdEFnUtIz0EXF+kaMFQ12MHij8x3esWpecILwNHgVCC+HV
FnFyPDUR1DuVQ14LcOCbhvtZ9Z8TCW4QcTWnJ8VYAoWTB2hmyOsRUiZRrWwn3SOA45c9UVbkvDk4
rqZ7gLwOfIuPUZWMFPoXhKMIDG4bbwKxERfHPw9dglSO+c/82vb4uNN4nB1xMDEw4A+KLEq4jow+
XvIllAqlOuOPofSp/RyxJRDN/HWB05GLlBJCGjXRXewbjRG4ALiDclBe43jasUOgxrR+LJ8/ltaM
f9rS/juvW65BZo/a2Omp9gBCwS418S0umV+KRQe7UBHdmNamzVWbYKl+9SAandfujRBBZsqETOFy
rKcYRxna6CymwH3p3PZrEDFjZcyflEhndhujC2lUcnpUBR99z/njEW0WhUsWoX4LAiSRVYmrHf0X
xib+2n+JU2R9PPTsweC1+J09lX4Xblte2u+FoBZYeUeFkIuEZjTT1SY5YTiyrrdf1uNdL1hoAwme
lQ/XIbzKu2HP2kG9yjHnY5M71AmsBbZGk3E1L1jqX2l+ggFkTdjPKo1/icfczxhSCBsOpUz86wpH
dcHJL3EQRZkVWSMoeW1RWKWW52gCjAa+BaHCX05vPWu29MDP0NnE1gJi7iyEeybE5/GNQIpXWgfg
x2jm/xXcmmsX0Wz0N6fs4pobi3dfwPuJrLHnCQXHlBLCOoCErdNOs0IPi7X1kzu31TVaUDaTOAQt
64Y5CH/bZ68KzAJe27o1wHPGAljii+1mzi6o1KnJ+rpdm47uOLBjxgJri92ywidwBF/2zkceXjZP
IA8Z1Q5B1T0Fj9/oJLZK18p2DZPihCZ/y39VRuGrXN+LaSvuhLIUXyqfOYVwwmpNr2g/tbqeRPzJ
vW4uTLQ5PBPSA3O6qm3s4pVy1ukuy3Ffd2xu18XEkZsWl36b1mVvOT3/D3i7lPjw5NxmtRBCsOei
ahhC6NazLn2ffskOHiYHDPccX1dKbZ+jtiQmKk58cRtiW6aGYhj5gfm0XLnRflaQRJ+Yn+86MM4+
UpG9iafwPJApBb17c8jhno8FhDbKjeVaf0cai7YWckP5O5yEPyY04lR4uVy5PpL/ZtxthYbM2SXx
oJxNq7BVNU80/2sDp/qAYGoWL/Y+WVdq42H2vW8pHe9aXCarbp5lvphWHotbvP3+HPwhsehh08lg
Ab2ngKnH1HDd26LB4DeoiTCrds+xDDSXDD0J8uJ4sUGwom+A5FTqR8880k7qmNW4DIygRQvLunTd
veYnTaMzmUek+M61sYwbGdugVsJy/OQ4MgBLy/yFJV/MlgV3pw5me6UK8Us0XVy2GrEwVyuaBDKm
50+xzoTDHnCBodrjYCyVSpQDMV49m7xlYF/e5Vgk01DcWdIT1jp+VbIvfDjeDuf6DI09MTP8d3GO
QOQuOmZXtESl6T13zaCoXbXAMhvtAt1p+L763otBAqCagMHcHofwR07vu4izdjwf+vLpiaYo7auj
vkW4qxINbXmg8+736JLp5wgH7l8NqQY1fbfLKL5niDpW+8TUXVtJEgra7Ruzv0qnEB4mhOm156ht
ikRYtj4rucMM2BFgPJ8VIQVdNI0W7tTPo+Gq2yWG9OQhtAurekjQBgZNeRc9xHzppXIQ42cStlsa
serLb9sQL/qwPpnEkOLwX227L2PX52ZKaLYaW6JfAmZ8K8p9fuA3bEcdnO2qH0LThStBpHfYGgXb
0uYu5B794dptJWjgTci9Ke3KEz7KXzWcmUedcWyVY8nyvZLAD9/qcm2tu/jXNNxq1s4ZCWRZTwdF
hScHe2K3GhXwgpMwHtYVyksuWhy+pQESd1nMgmeysvWgYspZwW1dzrjoj3DOdVGBA1NpC4mUzfVy
Oa1lAaYaWgy2oaQddZs7AaWsRG4LpTCKN/Q1nXI2Qt9AP+XZiFBmNraUh3957pD83mt1pVPdM6p/
m9ypHPLN5kfzrelJYrJYYztv2tErYHa9afiMaClp7T7QU7sS/YewPajolSebbq1Nmf7mCuJ1ooW1
kjVaqRtpXlWJy1mFfD6NNmA+k4okfgN3Ng3FM5egIGuFT3HB3fsEqHDxTgS5hdzp23Zove28jxp+
/busgUNOjpVApfF0D6DpDM8DYJGL/MCHZ3R8a1hdh1qc6/+PsJZ9Zactey4o3jRbkvwa6Aa/I5nB
hYl/QOlFPpT/xlgVSCoLTt/c6Rs8jY6hD23OkwXnUD+GM7ntU8rDToqfDH5IOEXEsjqGU/r9B2Lq
tfGTsiFei6aewpxkbqfv3+bIx162XhmNZs5eR8a2PL7WwNzcY2yL9+y5KK/TZ4Ughat7C01KZ7HQ
y2im5VnN65j3TRDuLF+3jczrUz/+rEF4X0NQgo/lVNtwM9U4Ugxfhi2ud7I74nWPxbbtxAenPlwo
rtPvbxf/Q6bev24NV9KaZNStuto6PH3dzXfUYSDKdqqnETnJVAYfqo0ItqLoV1Ye92s4z9I1r0v9
ZABXuNUeh1InekeitBEf8mRrrENoQnWpZCRIWLiG0tUwWACGFL47qWajKFe6QIVsSG8fcSQ9nE2a
wW06kuoBrZ4mYfvuyi8yY2XDB1O8e7M+bUbTw8M+prZlcjTXu87B79lEkl5BUBNVmg3BcZ9Ff0BL
wlal+PpQm4goQnlGBYc881tX0hpDyyns4PPlpHlBMFExO2O9xqsMN2/BbtKeLPtoHUE+zUsOr4IT
HsDanfMboNFi8ARFehQO4UBY0VQ/rEtP2I77V6Z7ThuH17tHarBQWml/xa4ZJyDD6z09zVJMAoLy
9nBwOE6t9diTeMWenEJ7NhGvwLK4FDNPSem3BeFIYjvu7PFriB0jGqr8+D5X+I5Gm351ftDFu+9b
rd9WXQjBAXjBLDze13YSbom+4vUAIlWzd+CGl1CjG+gGOoe5oEW/hVex8HCvGpIMWwjR21RLB1z4
8jev57yB1z7+ZZUk1XgFeRR7ZalNXQrgyJaXJwJ4NBRbjD8f/RYkXW1WI6227pDGfzffzPHz/zCm
gp9Ge2StwqLGZPPCAIdzkamEHRzGc6hHrm7XRT48sT+F1puBoXnR+CuqGsUdzrbs6X2fKVM0WDDG
9dfXjFZ9ARUmnoEYGIRqu/PTZG0NVofUsasnhigePKgwH7KnUF4xYBAL5aU44kADWQdzo2RjRdk/
9f+R1gmDq4/G4zQF116nOWi8g5kbFOlb09p27NRTfk2mJQhaPjY1pGLxVbEHhJ9SsfXPNpQ7AcXM
AsH3kNLOzGwx8Po92t9U/gScI2bY9rvSA54tQxhFVB8bkv7IHtn7U4v7RwJ/azPL2L5/0DPLn2oD
PuHrZgTcONAXx70H/VogfetSxIs43QNTBvSL/3FXb0rM0eyaKp4fuLQUo0SdV/Z7TFqOkrwg0mQG
gv6NlxezaEz1sS8+lOHElM6vFmMo8iy9ASjfqBt6QJ0ena/vBf3AwAZxiROf7AB4OAHt73UzkQLw
edHxLRDUNiIc9sRpH1+EjV2yJJZwOPAzXGILns8suAZHLW9Krqvl22u115vXsbNxxlQKMNeNvcfd
DHqLN5eIfNcYwRFcjYjV/HgPdGukSMauLI5kIg5/MfiwuTgpQ5JXBnjJTIL5u4MIySLCLe73esO+
LYZxXGFGGatILiswDvbj3320otw/dtIPRCsDbtFFeAMIv0Iao5vNRzv+J9wrL5AP7aOlm3vdUg+P
G7jNg/0vHO8xKGNBdjogVUZVubsHvhVXf8yZZB3zmwBeiZfzkcBjcBqmna1wzv3TN+eAIHegN1t7
q6UgcExxm7XYfp95GjuoSl8NjDnW91yN5vHKhWnmYompwm62oo3vXLu+ohKiM7x0cM2xY5opzw3f
tVg3WYALl+hYOFFENk+rpCvypaTp7X5Bo/ka1g8EFL2SOoZgSj513Uxaf6t6rqB+SahsPmDMy2f/
o4Z1Ht5IN6RxykiceF9ecdScT1fgRxScqpFCQkLJkRLis27oESpgD7uyGIDyJ0YlamVBbC4T4hI/
4bKZKGAFGKrAq4K/karfaI3WnmsSt7YgSNmyTCyzQGDap7LYzKnv3aZ9eaYMbfjRZhoZOo6ZAm6z
GVLwEjQr3VJkAImf/80Eirp6b4xojfflDH4zvgwnQ8Kco0FoIXyFK5t7UKDaN6iTgvsMPm4H6q1P
GsyImRFBKk/f4CQQ9ga1lVJCfU/m269ZWgk+Q9SUoiIEt4rvsqgpmjJkX8cBf7xJUIay7Amg5MpG
aIYPE0HUjjkeEXxL9J7o5LIZFc7jAP546i8srUtEpgQngool1dhnIxwTTcvQdiZIQEeArL+gLqKe
8HtPFTqpor9T+QoGSb3+r2D4qayiLrt95TUpL9dlwPhy3avsWZhiAgTthG/cWj57b4Q3dVIW3jeg
ofiJ558IUc174g++G7e3YGSCf+9jDybBM4ZmAyp0HEjxht5SsAeeVvf+7sRJDExh9U1AZ5Z4gpfG
++v4J6cNOmJeAASSqgmUMTbyEdhaJcJ6h+2xRkXmY0frSX1/AfyLjZEHaThThsWdhd/XdAODAFs+
81ECh27A7h/2ZILAuX6LoQySgPhC7qVRSoPRsdGzbo3YhxxQlDtqDP0l0zdtiQkFM2jsmfEGPKLC
Hg2P5CKffA07evlfp6UhEBdz2HRK29eUrpkixsom5vEq7j2bK9LT50CsU/V26mP2c/xdFHXmbv5W
TgTsSc1qO0u0tovqWc7VwwypfHxnZkgw+YUDJn5EHkr0F/FXRBGDh08Q+V4KUK3sgsgmWgMlGF8K
TAgdqngeosPyvonNuVxGnYmSXZkVnLeBMRg3UXX22lLDIAcOIykAIdeFaiGHc3vuqhp2bogCprr/
f6wdVKwn5AQb6bR6wUlA6SUHpLhb5IRL7poPt7/PMo2quvuSlT1LovzjyaDL2hCBqj3/HKL6m5BE
55dcjybHZvuuYBX23Kdw4Pc3axJJS9WWRq/tRR3vRQipqieVVBgbRnjH0w4woe1L8dPREUJIRdxS
9Qn2CWE189gP3LGg8/y5Q3AHtCbWhNLZU6ZKVCpKH9HYurDZ7JGeM/nklXvn7pRfaC5p6xzIxwvz
1JB5McVsTtrjXRpssM4GEkPg1mTbFgZg+8vqJFzUNRHugnc9974r8CI2uSAEDg7p5vU0SXd6G/CX
59ktR+OH7cnnFdH25t5cCBUU8BzXjU/eorLVuKlZcO0F6siPpLbtIqDhHnvpF/HwR3lXTsg+wRCT
6MImcR4OEid4gSNpzb/9oer1iP4+/icz8JclL+koSby7kQTriHoGbkO9f6JVHh41LXPY4I/pgL5p
lkGrcZSeu+e8ESkoUey98vMK94o9obFL3PXE1RZWSCnISpqmHqT9cSMHf1WAXvnEkpFf6y5tr2Jd
6/R1YBLJSTjJjBGNhGl5fitoA4JiBTcMvTNIsNYLPLxJqdKOLN0jh4NNTFoHMvAIrW9j1YAJqVa1
ciYmWFZ6/OeqWU/fHsnCtEzdE57+LShEmgI+m9vW16bgBMu8cx3g2QTfzIaGm9A+v1t0F5joAIsW
J4CldFP0I4kcMkrHKPVEPZrguE4EgCRKR4CQTUOzAND7AWE8HqlNS6QuBsSA/vojlOEU4iIMezSm
bd56eMGLa4T1aEzaCs8BRVkQWkjpxJFmmRb4pFVpS4psFXiBGLh50Idn05/krvhTVdOUTsJsaIv8
FHfOeAJxNYYKCQJAmZK/jvO0AxStDe+eYTon1xGVgj3/j8bjAJjge2fEU46DWKkSog8ndC72G9El
mHU56ZKFwNKfzRI42dk4sHngLxrHGB5bLZs82FnkBdFmTD/ESn+gDQspSb0L6E+unq0hg+ad2C++
R9uNPr5SinjdNZeklM5DpD8rHcWwapyvywus4mmhrhFgql6urmImVPVoL3F5Q7QgvudqG5nW8Vxf
3fxH/OfETalc58anZrKgi77ZLgeKIiGFXd7+KuPIk8kGP+4q/LgHFzRCRpws4AmkGzB5ehMkE3At
1DHr50GtybAflVqnGWQmAtR/eWfA3y8XDJLMcQn4xmJGKEyuwkNUaX0cGtXDysWgF39nR35RYSi6
p20XBAGkr8JqdapOffCHKn1QXjBFmbtQ4IEa8R1SivrdbtntYIWa+tw6K0EClxY1jU1xeWBbLUOU
wXHO++W/QBSrk7jGgOno6WRKmtDmGFBbO4VdqdGfAvi+KWUGKGL+F5AFdAGYkA6FDOdIqTTJcuiT
9//5fWlqwcEI02+C3cpgAuP2QR1h4LRMCF45fO0AZ8wtNaDAVRoufm9dR77kIqGS1J/5XzDhWo+S
/Igjbn3bFgvrxJL+4qkcxmp3L3sISmDvJ7nH4BBhhzosocQkfOJr9y4LX0nYB/a8llIm2jMCa9cF
hyr8k+9sgYDdqRBHMDsRjR+E4/Lh4jui9OeGoJ3jUfqjRecHAEB5HFInwooFhgNC6RNg5WVOZDfT
qcDvowWXZn1VJeW7qBgawNqYkMgwoa9SqfQaPfHkNcR/iN7f4IWyQCaF/JmWC1EJ//u+c83/wA98
n4TO9UchENtVXxJ+B2Q8g0fZFQoOT6QyrlF0iQvAxOaYqQG7VmCHmyFcCxvfmeSBIQeVSQf/CrDw
yRUI/qbJ2OoI7Uqz8xt/pz4jlju12+XXAwdUNzV8ykvBB+1kH/3rt5GvR3ZJr39eUNicdfaKGKRR
32Vk0gKy/qHDKdKBRxNjOphQNhBsUStYpVbvTBpAhiQx/u3Yk42C7zQz5NU88WBH/tutXNZgLdEE
KuYYz6SUWde8+v3kvg2eiT11c8UPKBik7+13ln+vaSnse9nCse85X+vSzJ5LKQAHBS9PyaUHn45M
TTBClTaXLSC80C9+
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
D0cFowKNN2IZ34Nmx0EEeNNghleHhax6sNbnhlJTgizZJMYM3MBrqZf59LRunh3K3cHDkhCthf4N
J1muK+rB5OTBnUlZGiQm8EzTJPjgnjJ9/vOyZzL71UseuVHeArnvH3rrnX976I93lqZVd5GnVeWp
fnjbx0Xz5ZyXrswRIcQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ew0q1oFzDOzBbJa/M5ulgw9DItrvUM4qSJGn5/q7f+q5HuMk8VJ7Hfg77rvN3trxTdyc9sD+/XEo
2FeP7/oKJVsbsrZ9nN2hO6dO174/0b6Y+pdvYTPuiRZ0dfn5GhYSfeET4BuqdKlLY/0FTjKOs9vI
UF1yi6N6D5VZXQeh02MW0HecqpO2/x9TPkKs+xvbg0QeWdCG+ihtbLcJhw9lJmpSSwBx+oocIEwq
soDD3bmZWyTRO5OGzZugafynS1PeWy+/kL40Dl5qgsHrCbksOn6RxF39k470r1GgsW67PXdc2P43
EwJ1CSOZcGnXNNdzN842XBX3BTXCmQ07ZIiT8w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Yn4YJ11I+6YOUPxunDWHsuZxWJWdtJHCuFYi9V9Qeyjc4IGolnxo4ahIHuPNfXv6R5Jcycs/9oZ5
QNfnf4Y74DsRaQXs8/+SVL26fZvjh4ZVhbXpiQD76cq1bEDV2UHPZYAKifYY/8y9iSAH3MzU1bSF
HD0alTsJMXDRnSJ64Fw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L6CPwRkHskSG69/o8yj0PIgFIs/9GjM/ceJqWUxMRn5crzUW2rXlk/YTQQ8XNMMMNYRmuFEGVDk/
6BY3ErLKM2lfzyZIHT1G/OY+WNf2LFs38qMMx2QE7jrnR/gj2dvEV2pP0oXkknv8T8XjiEsCUTzS
6wgxK522bHLDx3KdhPBdnDupGJbtNKZG3r7LuUiLOofzOUGfRjg3cOELJSIt/AvDMCWXoCnHQWHR
bP0hZ+X+ZvnRG4zGf1OVsJgvzUXoWND6UhbsyajN4TOG2V06Hl53iikSgvO2zhtsHEcMAHUXndQM
3VxdWmtwBWNa9wicmdQHxwGsVuP7NclbxTJ3IA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c8o9EUyEap855tKpAqS7CrNQsLN8mfwfr+FHPVbYxJVr3iaxiuebqO2JrQxxNi4yFJCzlzHZnrKf
MU7LRkjSY7Ys2DudcgUbOLOItddFdUqQv+WtXIYEHM5hGra552jlQanHnwAqcYK0xWQQstxZigKh
doQkI9Jh5CrudBu0VXdVW6fLz+rmIxihrvihU3Y34Wfdmb0isYJCjQ9XH3NDHaLHqYFP7KZlR/KK
NSl+71RjVDDJjw5H9PPnmxi1ijwFADM2/+V16LTEWKxomnWUHdHy66V/HENRs2OEPHVXmF4jG/Oq
zA2Brh+KQfoEaFq7IPoD2kyDivuMGoShyyvR+g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HiSkabpliCs4hBVM4XGh8gCutUhvqqSguJLQ6mmye8r0GEv6Omsfci/L84BMZjS2ExpaCBW40dUC
jc5tpwTcVcXhfrS82ZFABZor/E/wHLlmsrpA4jNHHPL8vACbb/IHM0iM2eJcwBG8EU5kxv2x4AYi
ap6bLCSDBSXyf+2xcNC8EDmw6LSuAqb2nxv0kjsRhwguL6q2Okgtz4tnXOKXldT/+O78Ve1hNvvC
z4z4uL7JzbiDIiJYVmBGclyNwNKP7UNSP3zeIURrq155gzLSRjzkUsHm67O8o3uNcc3l0ucXr8Tt
RM9UY02yH/tGLdv7lNk+9dv6wHXH/JKSUK9Nrg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AZ3JpjFMBdMDWEgxdjdQ8aLW81I7cWUVjq3VEGw5nlw/yXBqkoi/E7W4Ke1EWmeU+yumiB8DlKnd
X1JUnUOfmlxAq6YKkvJPQIU4Zf0zne6RinQc2s0bbDqwn964kkQhJ75XlDHqeIKwObZOSavZJsks
qBVGdoMfTiHD36dbzGO4o/v0RAATc5NdgMUpc2u09NpHHO3JwptCEJrmtm/RUk77aI3Ci1euFpZC
675TN9VtAtQiupcQ47Vl/9LjWg84sAvXqhWJeNu4/aWYZDEz1aN5ZykMKqBqpO4JrKcp1JDveUAk
XreXCRlF00KSzIY8S2Iq2NJPvVq+9YN4w/b5DQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qcLJwWdxe5vqK54cPCJckVSZGcWctlUydN7OMnOlQu0g3NgkZaRjBHP/CkaLPdgiWGkPLfGt8wYT
z599SEya7Qb170xNMWemJX1qC/GAQUkYGKTzg33saas5DYqA7+Oz7yhTCqmT0OUsISZLZyepCg2D
T7h+OHlTHcFSaQYQaGdn/2Ul/tosrIYgQHfcM2OdTRbE07V67q9mw3EaARarfl2xtywoEEXYF9bv
MmIJDlXdOgbQpH6fRFgJ4/Op2nCL2xQ2EFMHrf4CbJxa69qw08raK8ambAsWjCC9VYbSWEVnOnBK
NnlXMxotY3dHcZ47ZbayFwoTzxJ8/1akj3Y/cvTpjsMg/ZEgzx7biR+DeHwf/kU4LjK4zmZcCy2H
iD6Zeync1DlWMY6EOiR9b2dgp7dAWy95oR3Pvrb84ejY1ZvAcEHOhKVIR+5+ZgqdcRr9pUtc5b9g
ELXaYFNDrwNoD1etLUXdBVxuFGsSIm6acc+jYbEOHUV/y98RnU7v/1q3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gNIWVRSMDI2N7zqX7AY6TvpoFOZpNVRs4qZPY/vSjJa3DmilptcuogRetVS1DYSdH5cFgcqDcLIY
tXuVVzcIEcZlg9GszGKa+cDoda5KeDCUde1lCaVFRC6jJ85a+K01ZvYfbvWvgT9SmB26ANqTQ9rf
HrHmfkN7UtT/OnsBeEOkfDhZAXmeFRXLac+3bcbGDZaA5AGJrXS3IwBnGs5KQTdmduotnV6lr+8H
fFuQGl7YfrbxrXJe2at9SbfIyCf+pSixluoX7741DQ0AOzlbEvH4WNPlFxjo/A09nBiZSQkR37My
R7byfWx9OeHNJ8yIxmrWsp9p6mf1q+nCCzw4nQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aFqlfr2m1DTHAphTwxfKxIhm1FEHLcQxcOfifIQPYsQQOavBrUKfbTRFrGTBZKXSo56+M5LbiQYW
EHEF1ruFbQKTaaEVr256cyYlG3UXLcBlz+a+ct5db4nTJgu1EoTGWV60tu8pPY1jX86H4LiG1msm
OQ79MjYMnOqhcxNEXbFSg+t//nF6L0mnAk46hFF7ljD1W+JwlCuzx1EE4wezNhejmgywgREHe2ff
f+76kCc+8R3eZYRwhpPRN/O8pvg/yeVxgdu/3zOGZIWu9NNY+VBkT8kwTOV0zRSPWyyTqgQQTMBx
W3h8S3azWDA/t2Sm3B8EbKgPqOn3fcgnoWqfYQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b961FjPpyt6/y9Jo2h34o2VC6ej3HZWid35JHSEWTRQf7HVn+F2SvqVCy8PNAK1Egr9ulwYjIOAM
MipHrZm/Za9Wa/alBkEKZtU1LFdRyyh3Y8BEQeDeOQjZqWWJonIim6xgng8NRY2y8WUD/2YjeIw9
y+andMrdrulumFAjBJdp3C01/yB+AQcaRoC6e3ceIc8hHGme1COeFb4rAvPcsH4L22l18hluPVg8
9BXH1Lu05+HLz8WU9L9Ar0cXbrWsW8ytwPslocKi9T5CWxLB9jX5HnaHbq4mu6IAAeR3xDtwzipV
c1vaQbM+xApwFdR7uCbzF1GHskIX8laxRsUGrg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9472)
`pragma protect data_block
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
4zreIF5ZU8niJQ==
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
