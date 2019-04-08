//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Thu Mar 28 00:08:40 2019
//Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target bluetooth_demo_wrapper.bd
//Design      : bluetooth_demo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bluetooth_demo_wrapper
   (AN,
    BTNC,
    CLK100Mhz,
    CPU_RESETN,
    DP,
    JA,
    JB,
    JC,
    LED,
    SEG,
    SW,
    bt_uart_rxd,
    bt_uart_txd,
    usb_uart_rxd,
    usb_uart_txd);
  output [7:0]AN;
  input BTNC;
  input CLK100Mhz;
  input CPU_RESETN;
  output DP;
  inout [5:1]JA;
  inout [5:1]JB;
  inout [5:1]JC;
  output [2:0]LED;
  output [6:0]SEG;
  input [3:0]SW;
  input bt_uart_rxd;
  output bt_uart_txd;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [7:0]AN;
  wire BTNC;
  wire CLK100Mhz;
  wire CPU_RESETN;
  wire DP;
  wire [5:1]JA;
  wire [5:1]JB;
  wire [5:1]JC;
  wire [2:0]LED;
  wire [6:0]SEG;
  wire [3:0]SW;
  wire bt_uart_rxd;
  wire bt_uart_txd;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  bluetooth_demo bluetooth_demo_i
       (.AN(AN),
        .BTNC(BTNC),
        .CLK100Mhz(CLK100Mhz),
        .CPU_RESETN(CPU_RESETN),
        .DP(DP),
        .JA(JA),
        .JB(JB),
        .JC(JC),
        .LED(LED),
        .SEG(SEG),
        .SW(SW),
        .bt_uart_rxd(bt_uart_rxd),
        .bt_uart_txd(bt_uart_txd),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
