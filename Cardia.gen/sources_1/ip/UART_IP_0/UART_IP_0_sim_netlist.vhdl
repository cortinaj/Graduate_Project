-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Feb 15 18:34:37 2026
-- Host        : DESKTOP-6LGOCJL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/JP/Documents/School/Grad_Project_v2/Graduate_Project/Cardia.gen/sources_1/ip/UART_IP_0/UART_IP_0_sim_netlist.vhdl
-- Design      : UART_IP_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_IP_0_baud_16tick_gen is
  port (
    Baud16Tick : out STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_IP_0_baud_16tick_gen : entity is "baud_16tick_gen";
end UART_IP_0_baud_16tick_gen;

architecture STRUCTURE of UART_IP_0_baud_16tick_gen is
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[6]_i_4\ : label is "soft_lutpair7";
begin
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[3]\,
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[4]\,
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt_reg_n_0_[5]\,
      O => \cnt[5]_i_1__0_n_0\
    );
\cnt[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt[6]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[5]\,
      O => \cnt[6]_i_1__0_n_0\
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => \cnt[6]_i_4_n_0\,
      I2 => \cnt_reg_n_0_[6]\,
      O => \cnt[6]_i_2_n_0\
    );
\cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[6]\,
      I5 => \cnt_reg_n_0_[4]\,
      O => \cnt[6]_i_3_n_0\
    );
\cnt[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[4]\,
      O => \cnt[6]_i_4_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[0]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[6]_i_1__0_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[1]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[6]_i_1__0_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[2]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[6]_i_1__0_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[3]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => \cnt[6]_i_1__0_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[4]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[4]\,
      R => \cnt[6]_i_1__0_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[5]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[5]\,
      R => \cnt[6]_i_1__0_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[6]_i_2_n_0\,
      Q => \cnt_reg_n_0_[6]\,
      R => \cnt[6]_i_1__0_n_0\
    );
tick_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt[6]_i_1__0_n_0\,
      Q => Baud16Tick,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_IP_0_baud_tick_gen is
  port (
    BaudTick : out STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_IP_0_baud_tick_gen : entity is "baud_tick_gen";
end UART_IP_0_baud_tick_gen;

architecture STRUCTURE of UART_IP_0_baud_tick_gen is
  signal cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal tick_i_1_n_0 : STD_LOGIC;
  signal tick_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair10";
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => p_1_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(7),
      I1 => cnt(6),
      I2 => cnt(1),
      I3 => cnt(8),
      I4 => cnt(9),
      I5 => \cnt[10]_i_3_n_0\,
      O => \cnt[10]_i_1_n_0\
    );
\cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(6),
      I2 => \cnt[10]_i_4_n_0\,
      I3 => cnt(7),
      I4 => cnt(9),
      I5 => cnt(10),
      O => p_1_in(10)
    );
\cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(3),
      I2 => cnt(4),
      I3 => cnt(0),
      I4 => cnt(5),
      I5 => cnt(10),
      O => \cnt[10]_i_3_n_0\
    );
\cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(3),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => cnt(4),
      O => \cnt[10]_i_4_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => p_1_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => cnt(2),
      O => p_1_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      I3 => cnt(3),
      O => p_1_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => cnt(3),
      I4 => cnt(4),
      O => p_1_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(1),
      I2 => cnt(0),
      I3 => cnt(2),
      I4 => cnt(4),
      I5 => cnt(5),
      O => p_1_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[10]_i_4_n_0\,
      I1 => cnt(6),
      O => p_1_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[10]_i_4_n_0\,
      I1 => cnt(6),
      I2 => cnt(7),
      O => p_1_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt(6),
      I1 => \cnt[10]_i_4_n_0\,
      I2 => cnt(7),
      I3 => cnt(8),
      O => p_1_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt(7),
      I1 => \cnt[10]_i_4_n_0\,
      I2 => cnt(6),
      I3 => cnt(8),
      I4 => cnt(9),
      O => p_1_in(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(0),
      Q => cnt(0),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(10),
      Q => cnt(10),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(1),
      Q => cnt(1),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(2),
      Q => cnt(2),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(3),
      Q => cnt(3),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(4),
      Q => cnt(4),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(5),
      Q => cnt(5),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(6),
      Q => cnt(6),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(7),
      Q => cnt(7),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(8),
      Q => cnt(8),
      R => \cnt[10]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_1_in(9),
      Q => cnt(9),
      R => \cnt[10]_i_1_n_0\
    );
tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => cnt(10),
      I1 => cnt(9),
      I2 => cnt(6),
      I3 => tick_i_2_n_0,
      I4 => cnt(8),
      I5 => cnt(7),
      O => tick_i_1_n_0
    );
tick_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      I3 => cnt(3),
      I4 => cnt(5),
      I5 => cnt(4),
      O => tick_i_2_n_0
    );
tick_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => tick_i_1_n_0,
      Q => BaudTick,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_IP_0_uart_rx is
  port (
    TxD_ready : out STD_LOGIC;
    TxD_par : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clk : in STD_LOGIC;
    Baud16Tick : in STD_LOGIC;
    RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_IP_0_uart_rx : entity is "uart_rx";
end UART_IP_0_uart_rx;

architecture STRUCTURE of UART_IP_0_uart_rx is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \^txd_par\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data0_in : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \data[0]_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_1_n_0\ : STD_LOGIC;
  signal \data[3]_i_1_n_0\ : STD_LOGIC;
  signal \data[4]_i_1_n_0\ : STD_LOGIC;
  signal \data[5]_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_2_n_0\ : STD_LOGIC;
  signal \filter[0]_i_1_n_0\ : STD_LOGIC;
  signal \filter[1]_i_1_n_0\ : STD_LOGIC;
  signal \filter[2]_i_1_n_0\ : STD_LOGIC;
  signal \filter_reg_n_0_[0]\ : STD_LOGIC;
  signal \filter_reg_n_0_[1]\ : STD_LOGIC;
  signal \filter_reg_n_0_[2]\ : STD_LOGIC;
  signal os_count : STD_LOGIC;
  signal \os_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \os_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \os_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \os_count[3]_i_1_n_0\ : STD_LOGIC;
  signal os_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal rxd_filt_i_1_n_0 : STD_LOGIC;
  signal \rxd_sync[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_sync[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_sync_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__0\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000";
  attribute SOFT_HLUTNM of \filter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \filter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \os_count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \os_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \os_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \os_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rxd_sync[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rxd_sync[1]_i_1\ : label is "soft_lutpair4";
begin
  TxD_par(7 downto 0) <= \^txd_par\(7 downto 0);
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => data0_in(6),
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF40FF40FF4040"
    )
        port map (
      I0 => data0_in(6),
      I1 => os_count,
      I2 => Baud16Tick,
      I3 => \data[7]_i_2_n_0\,
      I4 => \FSM_onehot_state[10]_i_2_n_0\,
      I5 => \FSM_onehot_state[10]_i_3_n_0\,
      O => \FSM_onehot_state[10]_i_1__0_n_0\
    );
\FSM_onehot_state[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[10]_i_2_n_0\
    );
\FSM_onehot_state[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[8]\,
      O => \FSM_onehot_state[10]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => data0_in(6),
      O => \FSM_onehot_state[2]_i_1__0_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => os_count,
      R => '0'
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[9]\,
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => os_count,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state[2]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[10]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => '0'
    );
\data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(0),
      O => \data[0]_i_1_n_0\
    );
\data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(1),
      O => \data[1]_i_1_n_0\
    );
\data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(2),
      O => \data[2]_i_1_n_0\
    );
\data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(3),
      O => \data[3]_i_1_n_0\
    );
\data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(4),
      O => \data[4]_i_1_n_0\
    );
\data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(5),
      O => \data[5]_i_1_n_0\
    );
\data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => os_count,
      I2 => data0_in(6),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(6),
      O => \data[6]_i_1_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => data0_in(6),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => os_count,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \data[7]_i_2_n_0\,
      I5 => \^txd_par\(7),
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => os_count_reg(1),
      I1 => os_count_reg(0),
      I2 => Baud16Tick,
      I3 => os_count_reg(3),
      I4 => os_count_reg(2),
      O => \data[7]_i_2_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[0]_i_1_n_0\,
      Q => \^txd_par\(0),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[1]_i_1_n_0\,
      Q => \^txd_par\(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[2]_i_1_n_0\,
      Q => \^txd_par\(2),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[3]_i_1_n_0\,
      Q => \^txd_par\(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[4]_i_1_n_0\,
      Q => \^txd_par\(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[5]_i_1_n_0\,
      Q => \^txd_par\(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[6]_i_1_n_0\,
      Q => \^txd_par\(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \data[7]_i_1_n_0\,
      Q => \^txd_par\(7),
      R => '0'
    );
\filter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFE00"
    )
        port map (
      I0 => p_0_in,
      I1 => \filter_reg_n_0_[1]\,
      I2 => \filter_reg_n_0_[2]\,
      I3 => Baud16Tick,
      I4 => \filter_reg_n_0_[0]\,
      O => \filter[0]_i_1_n_0\
    );
\filter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DAF0F058"
    )
        port map (
      I0 => Baud16Tick,
      I1 => \filter_reg_n_0_[2]\,
      I2 => \filter_reg_n_0_[1]\,
      I3 => \filter_reg_n_0_[0]\,
      I4 => p_0_in,
      O => \filter[1]_i_1_n_0\
    );
\filter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECCCCCC4"
    )
        port map (
      I0 => Baud16Tick,
      I1 => \filter_reg_n_0_[2]\,
      I2 => \filter_reg_n_0_[1]\,
      I3 => \filter_reg_n_0_[0]\,
      I4 => p_0_in,
      O => \filter[2]_i_1_n_0\
    );
\filter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \filter[0]_i_1_n_0\,
      Q => \filter_reg_n_0_[0]\,
      R => '0'
    );
\filter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \filter[1]_i_1_n_0\,
      Q => \filter_reg_n_0_[1]\,
      R => '0'
    );
\filter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \filter[2]_i_1_n_0\,
      Q => \filter_reg_n_0_[2]\,
      R => '0'
    );
\os_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => os_count,
      I1 => os_count_reg(0),
      O => \os_count[0]_i_1_n_0\
    );
\os_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => os_count,
      I1 => os_count_reg(0),
      I2 => os_count_reg(1),
      O => \os_count[1]_i_1_n_0\
    );
\os_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => os_count,
      I1 => os_count_reg(2),
      I2 => os_count_reg(1),
      I3 => os_count_reg(0),
      O => \os_count[2]_i_1_n_0\
    );
\os_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14444444"
    )
        port map (
      I0 => os_count,
      I1 => os_count_reg(3),
      I2 => os_count_reg(0),
      I3 => os_count_reg(1),
      I4 => os_count_reg(2),
      O => \os_count[3]_i_1_n_0\
    );
\os_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => Baud16Tick,
      D => \os_count[0]_i_1_n_0\,
      Q => os_count_reg(0),
      R => '0'
    );
\os_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => Baud16Tick,
      D => \os_count[1]_i_1_n_0\,
      Q => os_count_reg(1),
      R => '0'
    );
\os_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => Baud16Tick,
      D => \os_count[2]_i_1_n_0\,
      Q => os_count_reg(2),
      R => '0'
    );
\os_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => Baud16Tick,
      D => \os_count[3]_i_1_n_0\,
      Q => os_count_reg(3),
      R => '0'
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \data[7]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => data0_in(6),
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => TxD_ready,
      R => '0'
    );
rxd_filt_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAA8AAAA"
    )
        port map (
      I0 => data0_in(6),
      I1 => \filter_reg_n_0_[2]\,
      I2 => \filter_reg_n_0_[1]\,
      I3 => \filter_reg_n_0_[0]\,
      I4 => Baud16Tick,
      O => rxd_filt_i_1_n_0
    );
rxd_filt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => rxd_filt_i_1_n_0,
      Q => data0_in(6),
      R => '0'
    );
\rxd_sync[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => RX,
      I1 => Baud16Tick,
      I2 => \rxd_sync_reg_n_0_[0]\,
      O => \rxd_sync[0]_i_1_n_0\
    );
\rxd_sync[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rxd_sync_reg_n_0_[0]\,
      I1 => Baud16Tick,
      I2 => p_0_in,
      O => \rxd_sync[1]_i_1_n_0\
    );
\rxd_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rxd_sync[0]_i_1_n_0\,
      Q => \rxd_sync_reg_n_0_[0]\,
      R => '0'
    );
\rxd_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rxd_sync[1]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_IP_0_uart_tx is
  port (
    TX : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    BaudTick : in STD_LOGIC;
    RxD_par : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxD_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_IP_0_uart_tx : entity is "uart_tx";
end UART_IP_0_uart_tx;

architecture STRUCTURE of UART_IP_0_uart_tx is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \RxD_buff[0]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[1]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[2]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[3]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[4]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[5]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[6]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[7]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_buff[7]_i_2_n_0\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[1]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[2]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[3]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[4]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[5]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[6]\ : STD_LOGIC;
  signal \RxD_buff_reg_n_0_[7]\ : STD_LOGIC;
  signal TxD_ser_i_1_n_0 : STD_LOGIC;
  signal TxD_ser_i_2_n_0 : STD_LOGIC;
  signal TxD_ser_i_3_n_0 : STD_LOGIC;
  signal TxD_ser_i_4_n_0 : STD_LOGIC;
  signal TxD_ser_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000";
  attribute SOFT_HLUTNM of TxD_ser_i_5 : label is "soft_lutpair5";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => RxD_start,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => BaudTick,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => BaudTick,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFAFAEA"
    )
        port map (
      I0 => \FSM_onehot_state[11]_i_2_n_0\,
      I1 => TxD_ser_i_3_n_0,
      I2 => BaudTick,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF88FF88FF88F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => RxD_start,
      I2 => \FSM_onehot_state_reg_n_0_[11]\,
      I3 => BaudTick,
      I4 => \FSM_onehot_state_reg_n_0_[8]\,
      I5 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \FSM_onehot_state[11]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => RxD_start,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      R => '0'
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[10]\,
      Q => \FSM_onehot_state_reg_n_0_[11]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => '0'
    );
\RxD_buff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(0),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[1]\,
      O => \RxD_buff[0]_i_1_n_0\
    );
\RxD_buff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(1),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[2]\,
      O => \RxD_buff[1]_i_1_n_0\
    );
\RxD_buff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(2),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[3]\,
      O => \RxD_buff[2]_i_1_n_0\
    );
\RxD_buff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(3),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[4]\,
      O => \RxD_buff[3]_i_1_n_0\
    );
\RxD_buff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(4),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[5]\,
      O => \RxD_buff[4]_i_1_n_0\
    );
\RxD_buff[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(5),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[6]\,
      O => \RxD_buff[5]_i_1_n_0\
    );
\RxD_buff[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => RxD_par(6),
      I1 => TxD_ser_i_4_n_0,
      I2 => TxD_ser_i_5_n_0,
      I3 => RxD_start,
      I4 => TxD_ser_i_3_n_0,
      I5 => \RxD_buff_reg_n_0_[7]\,
      O => \RxD_buff[6]_i_1_n_0\
    );
\RxD_buff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA30"
    )
        port map (
      I0 => BaudTick,
      I1 => TxD_ser_i_3_n_0,
      I2 => RxD_start,
      I3 => TxD_ser_i_5_n_0,
      I4 => TxD_ser_i_4_n_0,
      O => \RxD_buff[7]_i_1_n_0\
    );
\RxD_buff[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => TxD_ser_i_3_n_0,
      I1 => RxD_start,
      I2 => TxD_ser_i_5_n_0,
      I3 => TxD_ser_i_4_n_0,
      I4 => RxD_par(7),
      O => \RxD_buff[7]_i_2_n_0\
    );
\RxD_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[0]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[0]\,
      R => '0'
    );
\RxD_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[1]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[1]\,
      R => '0'
    );
\RxD_buff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[2]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[2]\,
      R => '0'
    );
\RxD_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[3]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[3]\,
      R => '0'
    );
\RxD_buff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[4]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[4]\,
      R => '0'
    );
\RxD_buff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[5]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[5]\,
      R => '0'
    );
\RxD_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[6]_i_1_n_0\,
      Q => \RxD_buff_reg_n_0_[6]\,
      R => '0'
    );
\RxD_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \RxD_buff[7]_i_1_n_0\,
      D => \RxD_buff[7]_i_2_n_0\,
      Q => \RxD_buff_reg_n_0_[7]\,
      R => '0'
    );
TxD_ser_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAACF"
    )
        port map (
      I0 => \RxD_buff_reg_n_0_[0]\,
      I1 => TxD_ser_i_2_n_0,
      I2 => TxD_ser_i_3_n_0,
      I3 => TxD_ser_i_4_n_0,
      I4 => TxD_ser_i_5_n_0,
      O => TxD_ser_i_1_n_0
    );
TxD_ser_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[11]\,
      I5 => \FSM_onehot_state_reg_n_0_[10]\,
      O => TxD_ser_i_2_n_0
    );
TxD_ser_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => TxD_ser_i_3_n_0
    );
TxD_ser_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => TxD_ser_i_4_n_0
    );
TxD_ser_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      O => TxD_ser_i_5_n_0
    );
TxD_ser_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => TxD_ser_i_1_n_0,
      Q => TX,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_IP_0_UART_IP is
  port (
    TX : out STD_LOGIC;
    TxD_par : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TxD_ready : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    RX : in STD_LOGIC;
    RxD_par : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxD_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_IP_0_UART_IP : entity is "UART_IP";
end UART_IP_0_UART_IP;

architecture STRUCTURE of UART_IP_0_UART_IP is
  signal Baud16Tick : STD_LOGIC;
  signal BaudTick : STD_LOGIC;
begin
Uart_rx: entity work.UART_IP_0_uart_rx
     port map (
      Baud16Tick => Baud16Tick,
      RX => RX,
      TxD_par(7 downto 0) => TxD_par(7 downto 0),
      TxD_ready => TxD_ready,
      sys_clk => sys_clk
    );
Uart_tx: entity work.UART_IP_0_uart_tx
     port map (
      BaudTick => BaudTick,
      RxD_par(7 downto 0) => RxD_par(7 downto 0),
      RxD_start => RxD_start,
      TX => TX,
      sys_clk => sys_clk
    );
baud16gen: entity work.UART_IP_0_baud_16tick_gen
     port map (
      Baud16Tick => Baud16Tick,
      sys_clk => sys_clk
    );
baudgen: entity work.UART_IP_0_baud_tick_gen
     port map (
      BaudTick => BaudTick,
      sys_clk => sys_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_IP_0 is
  port (
    sys_clk : in STD_LOGIC;
    TX : out STD_LOGIC;
    RX : in STD_LOGIC;
    TxD_par : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TxD_ready : out STD_LOGIC;
    RxD_par : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxD_start : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_IP_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_IP_0 : entity is "UART_IP_0,UART_IP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of UART_IP_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of UART_IP_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of UART_IP_0 : entity is "UART_IP,Vivado 2023.2";
end UART_IP_0;

architecture STRUCTURE of UART_IP_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ CLK_FREQ, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.UART_IP_0_UART_IP
     port map (
      RX => RX,
      RxD_par(7 downto 0) => RxD_par(7 downto 0),
      RxD_start => RxD_start,
      TX => TX,
      TxD_par(7 downto 0) => TxD_par(7 downto 0),
      TxD_ready => TxD_ready,
      sys_clk => sys_clk
    );
end STRUCTURE;
