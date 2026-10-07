-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
-- Date        : Fri Oct  2 14:37:08 2026
-- Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim {/home/gareth/Documents/Computer Engineering/A
--               PROJECT/LDHM/LDHM.gen/sources_1/bd/Blocks/ip/Blocks_main_0_0/Blocks_main_0_0_sim_netlist.vhdl}
-- Design      : Blocks_main_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Blocks_main_0_0_main is
  port (
    result : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_A_0_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_B_0_tvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    M_AXIS_DOUT_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_DOUT_0_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Blocks_main_0_0_main : entity is "main";
end Blocks_main_0_0_main;

architecture STRUCTURE of Blocks_main_0_0_main is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^s_axis_a_0_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXIS_A_0_tdata0 : STD_LOGIC;
  signal \S_AXIS_A_0_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal S_AXIS_A_0_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axis_b_0_tvalid\ : STD_LOGIC;
  signal \result[63]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:001,WAIT:010,FREEZE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:001,WAIT:010,FREEZE:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_AXIS_A_0_tdata[19]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_AXIS_A_0_tvalid_i_1 : label is "soft_lutpair0";
begin
  S_AXIS_A_0_tdata(0) <= \^s_axis_a_0_tdata\(0);
  S_AXIS_B_0_tvalid <= \^s_axis_b_0_tvalid\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => S_AXIS_A_0_tdata0,
      I1 => M_AXIS_DOUT_0_tvalid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => '0',
      Q => S_AXIS_A_0_tdata0,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => S_AXIS_A_0_tdata0,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\S_AXIS_A_0_tdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^s_axis_a_0_tdata\(0),
      I1 => S_AXIS_A_0_tdata0,
      O => \S_AXIS_A_0_tdata[19]_i_1_n_0\
    );
\S_AXIS_A_0_tdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \S_AXIS_A_0_tdata[19]_i_1_n_0\,
      Q => \^s_axis_a_0_tdata\(0),
      R => '0'
    );
S_AXIS_A_0_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => S_AXIS_A_0_tdata0,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^s_axis_b_0_tvalid\,
      O => S_AXIS_A_0_tvalid_i_1_n_0
    );
S_AXIS_A_0_tvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => S_AXIS_A_0_tvalid_i_1_n_0,
      Q => \^s_axis_b_0_tvalid\,
      R => '0'
    );
\result[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => M_AXIS_DOUT_0_tvalid,
      O => \result[63]_i_1_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(0),
      Q => result(0),
      R => '0'
    );
\result_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(10),
      Q => result(10),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(11),
      Q => result(11),
      R => '0'
    );
\result_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(12),
      Q => result(12),
      R => '0'
    );
\result_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(13),
      Q => result(13),
      R => '0'
    );
\result_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(14),
      Q => result(14),
      R => '0'
    );
\result_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(15),
      Q => result(15),
      R => '0'
    );
\result_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(16),
      Q => result(16),
      R => '0'
    );
\result_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(17),
      Q => result(17),
      R => '0'
    );
\result_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(18),
      Q => result(18),
      R => '0'
    );
\result_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(19),
      Q => result(19),
      R => '0'
    );
\result_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(1),
      Q => result(1),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(20),
      Q => result(20),
      R => '0'
    );
\result_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(21),
      Q => result(21),
      R => '0'
    );
\result_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(22),
      Q => result(22),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(23),
      Q => result(23),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(24),
      Q => result(24),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(25),
      Q => result(25),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(26),
      Q => result(26),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(27),
      Q => result(27),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(28),
      Q => result(28),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(29),
      Q => result(29),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(2),
      Q => result(2),
      R => '0'
    );
\result_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(30),
      Q => result(30),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(31),
      Q => result(31),
      R => '0'
    );
\result_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(32),
      Q => result(32),
      R => '0'
    );
\result_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(33),
      Q => result(33),
      R => '0'
    );
\result_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(34),
      Q => result(34),
      R => '0'
    );
\result_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(35),
      Q => result(35),
      R => '0'
    );
\result_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(36),
      Q => result(36),
      R => '0'
    );
\result_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(37),
      Q => result(37),
      R => '0'
    );
\result_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(38),
      Q => result(38),
      R => '0'
    );
\result_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(39),
      Q => result(39),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(3),
      Q => result(3),
      R => '0'
    );
\result_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(40),
      Q => result(40),
      R => '0'
    );
\result_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(41),
      Q => result(41),
      R => '0'
    );
\result_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(42),
      Q => result(42),
      R => '0'
    );
\result_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(43),
      Q => result(43),
      R => '0'
    );
\result_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(44),
      Q => result(44),
      R => '0'
    );
\result_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(45),
      Q => result(45),
      R => '0'
    );
\result_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(46),
      Q => result(46),
      R => '0'
    );
\result_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(47),
      Q => result(47),
      R => '0'
    );
\result_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(48),
      Q => result(48),
      R => '0'
    );
\result_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(49),
      Q => result(49),
      R => '0'
    );
\result_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(4),
      Q => result(4),
      R => '0'
    );
\result_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(50),
      Q => result(50),
      R => '0'
    );
\result_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(51),
      Q => result(51),
      R => '0'
    );
\result_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(52),
      Q => result(52),
      R => '0'
    );
\result_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(53),
      Q => result(53),
      R => '0'
    );
\result_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(54),
      Q => result(54),
      R => '0'
    );
\result_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(55),
      Q => result(55),
      R => '0'
    );
\result_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(56),
      Q => result(56),
      R => '0'
    );
\result_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(57),
      Q => result(57),
      R => '0'
    );
\result_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(58),
      Q => result(58),
      R => '0'
    );
\result_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(59),
      Q => result(59),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(5),
      Q => result(5),
      R => '0'
    );
\result_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(60),
      Q => result(60),
      R => '0'
    );
\result_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(61),
      Q => result(61),
      R => '0'
    );
\result_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(62),
      Q => result(62),
      R => '0'
    );
\result_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(63),
      Q => result(63),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(6),
      Q => result(6),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(7),
      Q => result(7),
      R => '0'
    );
\result_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(8),
      Q => result(8),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \result[63]_i_1_n_0\,
      D => M_AXIS_DOUT_0_tdata(9),
      Q => result(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Blocks_main_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    M_AXIS_DOUT_0_tdata : in STD_LOGIC_VECTOR ( 79 downto 0 );
    M_AXIS_DOUT_0_tvalid : in STD_LOGIC;
    S_AXIS_A_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_A_0_tvalid : out STD_LOGIC;
    S_AXIS_B_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_B_0_tvalid : out STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Blocks_main_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Blocks_main_0_0 : entity is "Blocks_main_0_0,main,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Blocks_main_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Blocks_main_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Blocks_main_0_0 : entity is "main,Vivado 2026.1";
end Blocks_main_0_0;

architecture STRUCTURE of Blocks_main_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axis_a_0_tdata\ : STD_LOGIC_VECTOR ( 19 to 19 );
  signal \^s_axis_b_0_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_DOUT_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_A_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_B_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS_DOUT_0:S_AXIS_A_0:S_AXIS_B_0, ASSOCIATED_RESET rst, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_DOUT_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TDATA";
  attribute X_INTERFACE_MODE of M_AXIS_DOUT_0_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of M_AXIS_DOUT_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_DOUT_0, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 32} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 32} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctrl_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_A_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_A_0_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of S_AXIS_A_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_A_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_B_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TDATA";
  attribute X_INTERFACE_MODE of S_AXIS_B_0_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of S_AXIS_B_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_B_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  S_AXIS_A_0_tdata(31) <= \<const0>\;
  S_AXIS_A_0_tdata(30) <= \<const0>\;
  S_AXIS_A_0_tdata(29) <= \<const0>\;
  S_AXIS_A_0_tdata(28) <= \<const0>\;
  S_AXIS_A_0_tdata(27) <= \<const0>\;
  S_AXIS_A_0_tdata(26) <= \<const0>\;
  S_AXIS_A_0_tdata(25) <= \<const0>\;
  S_AXIS_A_0_tdata(24) <= \<const0>\;
  S_AXIS_A_0_tdata(23) <= \<const0>\;
  S_AXIS_A_0_tdata(22) <= \<const0>\;
  S_AXIS_A_0_tdata(21) <= \<const0>\;
  S_AXIS_A_0_tdata(20) <= \<const0>\;
  S_AXIS_A_0_tdata(19) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_A_0_tdata(18) <= \<const0>\;
  S_AXIS_A_0_tdata(17) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_A_0_tdata(16) <= \<const0>\;
  S_AXIS_A_0_tdata(15) <= \<const0>\;
  S_AXIS_A_0_tdata(14) <= \<const0>\;
  S_AXIS_A_0_tdata(13) <= \<const0>\;
  S_AXIS_A_0_tdata(12) <= \<const0>\;
  S_AXIS_A_0_tdata(11) <= \<const0>\;
  S_AXIS_A_0_tdata(10) <= \<const0>\;
  S_AXIS_A_0_tdata(9) <= \<const0>\;
  S_AXIS_A_0_tdata(8) <= \<const0>\;
  S_AXIS_A_0_tdata(7) <= \<const0>\;
  S_AXIS_A_0_tdata(6) <= \<const0>\;
  S_AXIS_A_0_tdata(5) <= \<const0>\;
  S_AXIS_A_0_tdata(4) <= \<const0>\;
  S_AXIS_A_0_tdata(3) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_A_0_tdata(2) <= \<const0>\;
  S_AXIS_A_0_tdata(1) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_A_0_tdata(0) <= \<const0>\;
  S_AXIS_A_0_tvalid <= \^s_axis_b_0_tvalid\;
  S_AXIS_B_0_tdata(31) <= \<const0>\;
  S_AXIS_B_0_tdata(30) <= \<const0>\;
  S_AXIS_B_0_tdata(29) <= \<const0>\;
  S_AXIS_B_0_tdata(28) <= \<const0>\;
  S_AXIS_B_0_tdata(27) <= \<const0>\;
  S_AXIS_B_0_tdata(26) <= \<const0>\;
  S_AXIS_B_0_tdata(25) <= \<const0>\;
  S_AXIS_B_0_tdata(24) <= \<const0>\;
  S_AXIS_B_0_tdata(23) <= \<const0>\;
  S_AXIS_B_0_tdata(22) <= \<const0>\;
  S_AXIS_B_0_tdata(21) <= \<const0>\;
  S_AXIS_B_0_tdata(20) <= \<const0>\;
  S_AXIS_B_0_tdata(19) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_B_0_tdata(18) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_B_0_tdata(17) <= \<const0>\;
  S_AXIS_B_0_tdata(16) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_B_0_tdata(15) <= \<const0>\;
  S_AXIS_B_0_tdata(14) <= \<const0>\;
  S_AXIS_B_0_tdata(13) <= \<const0>\;
  S_AXIS_B_0_tdata(12) <= \<const0>\;
  S_AXIS_B_0_tdata(11) <= \<const0>\;
  S_AXIS_B_0_tdata(10) <= \<const0>\;
  S_AXIS_B_0_tdata(9) <= \<const0>\;
  S_AXIS_B_0_tdata(8) <= \<const0>\;
  S_AXIS_B_0_tdata(7) <= \<const0>\;
  S_AXIS_B_0_tdata(6) <= \<const0>\;
  S_AXIS_B_0_tdata(5) <= \<const0>\;
  S_AXIS_B_0_tdata(4) <= \<const0>\;
  S_AXIS_B_0_tdata(3) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_B_0_tdata(2) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_B_0_tdata(1) <= \<const0>\;
  S_AXIS_B_0_tdata(0) <= \^s_axis_a_0_tdata\(19);
  S_AXIS_B_0_tvalid <= \^s_axis_b_0_tvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Blocks_main_0_0_main
     port map (
      M_AXIS_DOUT_0_tdata(63 downto 32) => M_AXIS_DOUT_0_tdata(71 downto 40),
      M_AXIS_DOUT_0_tdata(31 downto 0) => M_AXIS_DOUT_0_tdata(31 downto 0),
      M_AXIS_DOUT_0_tvalid => M_AXIS_DOUT_0_tvalid,
      S_AXIS_A_0_tdata(0) => \^s_axis_a_0_tdata\(19),
      S_AXIS_B_0_tvalid => \^s_axis_b_0_tvalid\,
      clk => clk,
      result(63 downto 0) => result(63 downto 0)
    );
end STRUCTURE;
