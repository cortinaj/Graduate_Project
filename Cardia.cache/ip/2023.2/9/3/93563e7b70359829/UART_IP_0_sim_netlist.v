// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Feb 15 18:34:37 2026
// Host        : DESKTOP-6LGOCJL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ UART_IP_0_sim_netlist.v
// Design      : UART_IP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_IP
   (TX,
    TxD_par,
    TxD_ready,
    sys_clk,
    RX,
    RxD_par,
    RxD_start);
  output TX;
  output [7:0]TxD_par;
  output TxD_ready;
  input sys_clk;
  input RX;
  input [7:0]RxD_par;
  input RxD_start;

  wire Baud16Tick;
  wire BaudTick;
  wire RX;
  wire [7:0]RxD_par;
  wire RxD_start;
  wire TX;
  wire [7:0]TxD_par;
  wire TxD_ready;
  wire sys_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx Uart_rx
       (.Baud16Tick(Baud16Tick),
        .RX(RX),
        .TxD_par(TxD_par),
        .TxD_ready(TxD_ready),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx Uart_tx
       (.BaudTick(BaudTick),
        .RxD_par(RxD_par),
        .RxD_start(RxD_start),
        .TX(TX),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baud_16tick_gen baud16gen
       (.Baud16Tick(Baud16Tick),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baud_tick_gen baudgen
       (.BaudTick(BaudTick),
        .sys_clk(sys_clk));
endmodule

(* CHECK_LICENSE_TYPE = "UART_IP_0,UART_IP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "UART_IP,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sys_clk,
    TX,
    RX,
    TxD_par,
    TxD_ready,
    RxD_par,
    RxD_start);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ CLK_FREQ, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input sys_clk;
  output TX;
  input RX;
  output [7:0]TxD_par;
  output TxD_ready;
  input [7:0]RxD_par;
  input RxD_start;

  wire RX;
  wire [7:0]RxD_par;
  wire RxD_start;
  wire TX;
  wire [7:0]TxD_par;
  wire TxD_ready;
  wire sys_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_IP inst
       (.RX(RX),
        .RxD_par(RxD_par),
        .RxD_start(RxD_start),
        .TX(TX),
        .TxD_par(TxD_par),
        .TxD_ready(TxD_ready),
        .sys_clk(sys_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baud_16tick_gen
   (Baud16Tick,
    sys_clk);
  output Baud16Tick;
  input sys_clk;

  wire Baud16Tick;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[5]_i_1__0_n_0 ;
  wire \cnt[6]_i_1__0_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[6]_i_3_n_0 ;
  wire \cnt[6]_i_4_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire sys_clk;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1__0 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\cnt[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1__0 
       (.I0(\cnt[6]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[5] ),
        .O(\cnt[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[6]_i_2 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt[6]_i_4_n_0 ),
        .I2(\cnt_reg_n_0_[6] ),
        .O(\cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \cnt[6]_i_3 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[6]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[4] ),
        .O(\cnt[6]_i_4_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[5]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[6]_i_2_n_0 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(\cnt[6]_i_1__0_n_0 ));
  FDRE tick_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt[6]_i_1__0_n_0 ),
        .Q(Baud16Tick),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baud_tick_gen
   (BaudTick,
    sys_clk);
  output BaudTick;
  input sys_clk;

  wire BaudTick;
  wire [10:0]cnt;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[10]_i_3_n_0 ;
  wire \cnt[10]_i_4_n_0 ;
  wire [10:0]p_1_in;
  wire sys_clk;
  wire tick_i_1_n_0;
  wire tick_i_2_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[10]_i_1 
       (.I0(cnt[7]),
        .I1(cnt[6]),
        .I2(cnt[1]),
        .I3(cnt[8]),
        .I4(cnt[9]),
        .I5(\cnt[10]_i_3_n_0 ),
        .O(\cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[10]_i_2 
       (.I0(cnt[8]),
        .I1(cnt[6]),
        .I2(\cnt[10]_i_4_n_0 ),
        .I3(cnt[7]),
        .I4(cnt[9]),
        .I5(cnt[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \cnt[10]_i_3 
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(cnt[0]),
        .I4(cnt[5]),
        .I5(cnt[10]),
        .O(\cnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[10]_i_4 
       (.I0(cnt[5]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(cnt[4]),
        .O(\cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .I5(cnt[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[10]_i_4_n_0 ),
        .I1(cnt[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_1 
       (.I0(\cnt[10]_i_4_n_0 ),
        .I1(cnt[6]),
        .I2(cnt[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[8]_i_1 
       (.I0(cnt[6]),
        .I1(\cnt[10]_i_4_n_0 ),
        .I2(cnt[7]),
        .I3(cnt[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[9]_i_1 
       (.I0(cnt[7]),
        .I1(\cnt[10]_i_4_n_0 ),
        .I2(cnt[6]),
        .I3(cnt[8]),
        .I4(cnt[9]),
        .O(p_1_in[9]));
  FDRE \cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(cnt[0]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(cnt[10]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(cnt[1]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(cnt[2]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(cnt[3]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(cnt[4]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(cnt[5]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(cnt[6]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(cnt[7]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(cnt[8]),
        .R(\cnt[10]_i_1_n_0 ));
  FDRE \cnt_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(cnt[9]),
        .R(\cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    tick_i_1
       (.I0(cnt[10]),
        .I1(cnt[9]),
        .I2(cnt[6]),
        .I3(tick_i_2_n_0),
        .I4(cnt[8]),
        .I5(cnt[7]),
        .O(tick_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    tick_i_2
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[5]),
        .I5(cnt[4]),
        .O(tick_i_2_n_0));
  FDRE tick_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(BaudTick),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (TxD_ready,
    TxD_par,
    sys_clk,
    Baud16Tick,
    RX);
  output TxD_ready;
  output [7:0]TxD_par;
  input sys_clk;
  input Baud16Tick;
  input RX;

  wire Baud16Tick;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[10]_i_1__0_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire RX;
  wire [7:0]TxD_par;
  wire TxD_ready;
  wire [6:6]data0_in;
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \filter[0]_i_1_n_0 ;
  wire \filter[1]_i_1_n_0 ;
  wire \filter[2]_i_1_n_0 ;
  wire \filter_reg_n_0_[0] ;
  wire \filter_reg_n_0_[1] ;
  wire \filter_reg_n_0_[2] ;
  wire os_count;
  wire \os_count[0]_i_1_n_0 ;
  wire \os_count[1]_i_1_n_0 ;
  wire \os_count[2]_i_1_n_0 ;
  wire \os_count[3]_i_1_n_0 ;
  wire [3:0]os_count_reg;
  wire p_0_in;
  wire ready_i_1_n_0;
  wire rxd_filt_i_1_n_0;
  wire \rxd_sync[0]_i_1_n_0 ;
  wire \rxd_sync[1]_i_1_n_0 ;
  wire \rxd_sync_reg_n_0_[0] ;
  wire sys_clk;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data0_in),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FF40FF40FF4040)) 
    \FSM_onehot_state[10]_i_1__0 
       (.I0(data0_in),
        .I1(os_count),
        .I2(Baud16Tick),
        .I3(\data[7]_i_2_n_0 ),
        .I4(\FSM_onehot_state[10]_i_2_n_0 ),
        .I5(\FSM_onehot_state[10]_i_3_n_0 ),
        .O(\FSM_onehot_state[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(data0_in),
        .O(\FSM_onehot_state[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(os_count),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(os_count),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "BIT1:00000001000,BIT2:00000010000,BIT0:00000000100,STOP:10000000000,START:00000000010,IDLE:00000000001,BIT7:01000000000,BIT5:00010000000,BIT6:00100000000,BIT4:00001000000,BIT3:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[0]),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[1]),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[2]),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[3]),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[4]),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[5]),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(os_count),
        .I2(data0_in),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[6]),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \data[7]_i_1 
       (.I0(data0_in),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(os_count),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\data[7]_i_2_n_0 ),
        .I5(TxD_par[7]),
        .O(\data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \data[7]_i_2 
       (.I0(os_count_reg[1]),
        .I1(os_count_reg[0]),
        .I2(Baud16Tick),
        .I3(os_count_reg[3]),
        .I4(os_count_reg[2]),
        .O(\data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[0]_i_1_n_0 ),
        .Q(TxD_par[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[1]_i_1_n_0 ),
        .Q(TxD_par[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[2]_i_1_n_0 ),
        .Q(TxD_par[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[3]_i_1_n_0 ),
        .Q(TxD_par[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[4]_i_1_n_0 ),
        .Q(TxD_par[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[5]_i_1_n_0 ),
        .Q(TxD_par[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[6]_i_1_n_0 ),
        .Q(TxD_par[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data[7]_i_1_n_0 ),
        .Q(TxD_par[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80FFFE00)) 
    \filter[0]_i_1 
       (.I0(p_0_in),
        .I1(\filter_reg_n_0_[1] ),
        .I2(\filter_reg_n_0_[2] ),
        .I3(Baud16Tick),
        .I4(\filter_reg_n_0_[0] ),
        .O(\filter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDAF0F058)) 
    \filter[1]_i_1 
       (.I0(Baud16Tick),
        .I1(\filter_reg_n_0_[2] ),
        .I2(\filter_reg_n_0_[1] ),
        .I3(\filter_reg_n_0_[0] ),
        .I4(p_0_in),
        .O(\filter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hECCCCCC4)) 
    \filter[2]_i_1 
       (.I0(Baud16Tick),
        .I1(\filter_reg_n_0_[2] ),
        .I2(\filter_reg_n_0_[1] ),
        .I3(\filter_reg_n_0_[0] ),
        .I4(p_0_in),
        .O(\filter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \filter_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\filter[0]_i_1_n_0 ),
        .Q(\filter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \filter_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\filter[1]_i_1_n_0 ),
        .Q(\filter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \filter_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\filter[2]_i_1_n_0 ),
        .Q(\filter_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \os_count[0]_i_1 
       (.I0(os_count),
        .I1(os_count_reg[0]),
        .O(\os_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \os_count[1]_i_1 
       (.I0(os_count),
        .I1(os_count_reg[0]),
        .I2(os_count_reg[1]),
        .O(\os_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1444)) 
    \os_count[2]_i_1 
       (.I0(os_count),
        .I1(os_count_reg[2]),
        .I2(os_count_reg[1]),
        .I3(os_count_reg[0]),
        .O(\os_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \os_count[3]_i_1 
       (.I0(os_count),
        .I1(os_count_reg[3]),
        .I2(os_count_reg[0]),
        .I3(os_count_reg[1]),
        .I4(os_count_reg[2]),
        .O(\os_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \os_count_reg[0] 
       (.C(sys_clk),
        .CE(Baud16Tick),
        .D(\os_count[0]_i_1_n_0 ),
        .Q(os_count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \os_count_reg[1] 
       (.C(sys_clk),
        .CE(Baud16Tick),
        .D(\os_count[1]_i_1_n_0 ),
        .Q(os_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \os_count_reg[2] 
       (.C(sys_clk),
        .CE(Baud16Tick),
        .D(\os_count[2]_i_1_n_0 ),
        .Q(os_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \os_count_reg[3] 
       (.C(sys_clk),
        .CE(Baud16Tick),
        .D(\os_count[3]_i_1_n_0 ),
        .Q(os_count_reg[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    ready_i_1
       (.I0(\data[7]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(data0_in),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(TxD_ready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAA8AAAA)) 
    rxd_filt_i_1
       (.I0(data0_in),
        .I1(\filter_reg_n_0_[2] ),
        .I2(\filter_reg_n_0_[1] ),
        .I3(\filter_reg_n_0_[0] ),
        .I4(Baud16Tick),
        .O(rxd_filt_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rxd_filt_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(rxd_filt_i_1_n_0),
        .Q(data0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_sync[0]_i_1 
       (.I0(RX),
        .I1(Baud16Tick),
        .I2(\rxd_sync_reg_n_0_[0] ),
        .O(\rxd_sync[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_sync[1]_i_1 
       (.I0(\rxd_sync_reg_n_0_[0] ),
        .I1(Baud16Tick),
        .I2(p_0_in),
        .O(\rxd_sync[1]_i_1_n_0 ));
  FDRE \rxd_sync_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rxd_sync[0]_i_1_n_0 ),
        .Q(\rxd_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rxd_sync_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rxd_sync[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
   (TX,
    sys_clk,
    BaudTick,
    RxD_par,
    RxD_start);
  output TX;
  input sys_clk;
  input BaudTick;
  input [7:0]RxD_par;
  input RxD_start;

  wire BaudTick;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire \RxD_buff[0]_i_1_n_0 ;
  wire \RxD_buff[1]_i_1_n_0 ;
  wire \RxD_buff[2]_i_1_n_0 ;
  wire \RxD_buff[3]_i_1_n_0 ;
  wire \RxD_buff[4]_i_1_n_0 ;
  wire \RxD_buff[5]_i_1_n_0 ;
  wire \RxD_buff[6]_i_1_n_0 ;
  wire \RxD_buff[7]_i_1_n_0 ;
  wire \RxD_buff[7]_i_2_n_0 ;
  wire \RxD_buff_reg_n_0_[0] ;
  wire \RxD_buff_reg_n_0_[1] ;
  wire \RxD_buff_reg_n_0_[2] ;
  wire \RxD_buff_reg_n_0_[3] ;
  wire \RxD_buff_reg_n_0_[4] ;
  wire \RxD_buff_reg_n_0_[5] ;
  wire \RxD_buff_reg_n_0_[6] ;
  wire \RxD_buff_reg_n_0_[7] ;
  wire [7:0]RxD_par;
  wire RxD_start;
  wire TX;
  wire TxD_ser_i_1_n_0;
  wire TxD_ser_i_2_n_0;
  wire TxD_ser_i_3_n_0;
  wire TxD_ser_i_4_n_0;
  wire TxD_ser_i_5_n_0;
  wire sys_clk;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(RxD_start),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(BaudTick),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(BaudTick),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAFAFAEA)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state[11]_i_2_n_0 ),
        .I1(TxD_ser_i_3_n_0),
        .I2(BaudTick),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FF88FF88F888)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(RxD_start),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(BaudTick),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(RxD_start),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000100,iSTATE0:000100000000,iSTATE1:000000000010,iSTATE2:000010000000,iSTATE3:000001000000,iSTATE4:000000100000,iSTATE5:100000000000,iSTATE6:000000000001,iSTATE7:000000010000,iSTATE8:000000001000,iSTATE9:010000000000,iSTATE10:001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[0]_i_1 
       (.I0(RxD_par[0]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[1] ),
        .O(\RxD_buff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[1]_i_1 
       (.I0(RxD_par[1]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[2] ),
        .O(\RxD_buff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[2]_i_1 
       (.I0(RxD_par[2]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[3] ),
        .O(\RxD_buff[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[3]_i_1 
       (.I0(RxD_par[3]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[4] ),
        .O(\RxD_buff[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[4]_i_1 
       (.I0(RxD_par[4]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[5] ),
        .O(\RxD_buff[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[5]_i_1 
       (.I0(RxD_par[5]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[6] ),
        .O(\RxD_buff[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \RxD_buff[6]_i_1 
       (.I0(RxD_par[6]),
        .I1(TxD_ser_i_4_n_0),
        .I2(TxD_ser_i_5_n_0),
        .I3(RxD_start),
        .I4(TxD_ser_i_3_n_0),
        .I5(\RxD_buff_reg_n_0_[7] ),
        .O(\RxD_buff[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA30)) 
    \RxD_buff[7]_i_1 
       (.I0(BaudTick),
        .I1(TxD_ser_i_3_n_0),
        .I2(RxD_start),
        .I3(TxD_ser_i_5_n_0),
        .I4(TxD_ser_i_4_n_0),
        .O(\RxD_buff[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \RxD_buff[7]_i_2 
       (.I0(TxD_ser_i_3_n_0),
        .I1(RxD_start),
        .I2(TxD_ser_i_5_n_0),
        .I3(TxD_ser_i_4_n_0),
        .I4(RxD_par[7]),
        .O(\RxD_buff[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[0] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[0]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[1] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[1]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[2] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[2]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[3] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[3]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[4] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[4]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[5] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[5]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[6] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[6]_i_1_n_0 ),
        .Q(\RxD_buff_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RxD_buff_reg[7] 
       (.C(sys_clk),
        .CE(\RxD_buff[7]_i_1_n_0 ),
        .D(\RxD_buff[7]_i_2_n_0 ),
        .Q(\RxD_buff_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAACF)) 
    TxD_ser_i_1
       (.I0(\RxD_buff_reg_n_0_[0] ),
        .I1(TxD_ser_i_2_n_0),
        .I2(TxD_ser_i_3_n_0),
        .I3(TxD_ser_i_4_n_0),
        .I4(TxD_ser_i_5_n_0),
        .O(TxD_ser_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    TxD_ser_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[11] ),
        .I5(\FSM_onehot_state_reg_n_0_[10] ),
        .O(TxD_ser_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    TxD_ser_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(TxD_ser_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TxD_ser_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(TxD_ser_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    TxD_ser_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(TxD_ser_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    TxD_ser_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(TxD_ser_i_1_n_0),
        .Q(TX),
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
