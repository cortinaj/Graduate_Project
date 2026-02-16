// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Feb 15 18:34:37 2026
// Host        : DESKTOP-6LGOCJL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/JP/Documents/School/Grad_Project_v2/Graduate_Project/Cardia.gen/sources_1/ip/UART_IP_0/UART_IP_0_stub.v
// Design      : UART_IP_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART_IP,Vivado 2023.2" *)
module UART_IP_0(sys_clk, TX, RX, TxD_par, TxD_ready, RxD_par, 
  RxD_start)
/* synthesis syn_black_box black_box_pad_pin="TX,RX,TxD_par[7:0],TxD_ready,RxD_par[7:0],RxD_start" */
/* synthesis syn_force_seq_prim="sys_clk" */;
  input sys_clk /* synthesis syn_isclock = 1 */;
  output TX;
  input RX;
  output [7:0]TxD_par;
  output TxD_ready;
  input [7:0]RxD_par;
  input RxD_start;
endmodule
