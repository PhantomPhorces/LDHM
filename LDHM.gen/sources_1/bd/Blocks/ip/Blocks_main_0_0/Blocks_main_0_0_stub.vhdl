-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
-- Date        : Wed Oct 28 14:46:39 2026
-- Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub {/home/gareth/Documents/Computer Engineering/A
--               PROJECT/LDHM/LDHM.gen/sources_1/bd/Blocks/ip/Blocks_main_0_0/Blocks_main_0_0_stub.vhdl}
-- Design      : Blocks_main_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Blocks_main_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    bram_main_clkb : out STD_LOGIC;
    bram_main_rstb : out STD_LOGIC;
    bram_main_enb : out STD_LOGIC;
    bram_main_write_enable_byte : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_main_addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_main_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_main_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_metadata_clkb : out STD_LOGIC;
    bram_metadata_rstb : out STD_LOGIC;
    bram_metadata_enb : out STD_LOGIC;
    bram_metadata_write_enable_byte : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_metadata_addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_metadata_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_metadata_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Blocks_main_0_0 : entity is "Blocks_main_0_0,main,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Blocks_main_0_0 : entity is "Blocks_main_0_0,main,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=main,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Blocks_main_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Blocks_main_0_0 : entity is "module_ref";
end Blocks_main_0_0;

architecture stub of Blocks_main_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,bram_main_clkb,bram_main_rstb,bram_main_enb,bram_main_write_enable_byte[3:0],bram_main_addrb[31:0],bram_main_dinb[31:0],bram_main_doutb[31:0],bram_metadata_clkb,bram_metadata_rstb,bram_metadata_enb,bram_metadata_write_enable_byte[3:0],bram_metadata_addrb[31:0],bram_metadata_dinb[31:0],bram_metadata_doutb[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF bram_main, FREQ_HZ 166664993, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bram_main_clkb : signal is "xilinx.com:interface:bram:1.0 bram_main CLK";
  attribute X_INTERFACE_MODE of bram_main_clkb : signal is "master";
  attribute X_INTERFACE_PARAMETER of bram_main_clkb : signal is "XIL_INTERFACENAME bram_main, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of bram_main_rstb : signal is "xilinx.com:interface:bram:1.0 bram_main RST";
  attribute X_INTERFACE_INFO of bram_main_enb : signal is "xilinx.com:interface:bram:1.0 bram_main EN";
  attribute X_INTERFACE_INFO of bram_main_write_enable_byte : signal is "xilinx.com:interface:bram:1.0 bram_main WE";
  attribute X_INTERFACE_INFO of bram_main_addrb : signal is "xilinx.com:interface:bram:1.0 bram_main ADDR";
  attribute X_INTERFACE_INFO of bram_main_dinb : signal is "xilinx.com:interface:bram:1.0 bram_main DIN";
  attribute X_INTERFACE_INFO of bram_main_doutb : signal is "xilinx.com:interface:bram:1.0 bram_main DOUT";
  attribute X_INTERFACE_INFO of bram_metadata_clkb : signal is "xilinx.com:interface:bram:1.0 bram_metadata CLK";
  attribute X_INTERFACE_MODE of bram_metadata_clkb : signal is "master";
  attribute X_INTERFACE_PARAMETER of bram_metadata_clkb : signal is "XIL_INTERFACENAME bram_metadata, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of bram_metadata_rstb : signal is "xilinx.com:interface:bram:1.0 bram_metadata RST";
  attribute X_INTERFACE_INFO of bram_metadata_enb : signal is "xilinx.com:interface:bram:1.0 bram_metadata EN";
  attribute X_INTERFACE_INFO of bram_metadata_write_enable_byte : signal is "xilinx.com:interface:bram:1.0 bram_metadata WE";
  attribute X_INTERFACE_INFO of bram_metadata_addrb : signal is "xilinx.com:interface:bram:1.0 bram_metadata ADDR";
  attribute X_INTERFACE_INFO of bram_metadata_dinb : signal is "xilinx.com:interface:bram:1.0 bram_metadata DIN";
  attribute X_INTERFACE_INFO of bram_metadata_doutb : signal is "xilinx.com:interface:bram:1.0 bram_metadata DOUT";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "main,Vivado 2026.1";
begin
end;
