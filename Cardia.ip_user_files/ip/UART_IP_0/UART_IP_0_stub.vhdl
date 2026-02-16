-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun Feb 15 18:34:37 2026
-- Host        : DESKTOP-6LGOCJL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/JP/Documents/School/Grad_Project_v2/Graduate_Project/Cardia.gen/sources_1/ip/UART_IP_0/UART_IP_0_stub.vhdl
-- Design      : UART_IP_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_IP_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    TX : out STD_LOGIC;
    RX : in STD_LOGIC;
    TxD_par : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TxD_ready : out STD_LOGIC;
    RxD_par : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxD_start : in STD_LOGIC
  );

end UART_IP_0;

architecture stub of UART_IP_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,TX,RX,TxD_par[7:0],TxD_ready,RxD_par[7:0],RxD_start";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_IP,Vivado 2023.2";
begin
end;
