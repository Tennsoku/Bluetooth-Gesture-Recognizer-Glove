// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Mar 27 23:55:41 2019
// Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jason/Documents/University/Year_4/ECE532/Project/bluetooth_demo/bluetooth_demo.srcs/sources_1/bd/bluetooth_demo/ip/bluetooth_demo_mux_9x1_0_0/bluetooth_demo_mux_9x1_0_0_sim_netlist.v
// Design      : bluetooth_demo_mux_9x1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bluetooth_demo_mux_9x1_0_0,mux_9x1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mux_9x1,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module bluetooth_demo_mux_9x1_0_0
   (d0,
    d1,
    d2,
    d3,
    d4,
    d5,
    d6,
    d7,
    d8,
    sel,
    num);
  input [15:0]d0;
  input [15:0]d1;
  input [15:0]d2;
  input [15:0]d3;
  input [15:0]d4;
  input [15:0]d5;
  input [15:0]d6;
  input [15:0]d7;
  input [15:0]d8;
  input [3:0]sel;
  output [15:0]num;

  wire [15:0]d0;
  wire [15:0]d1;
  wire [15:0]d2;
  wire [15:0]d3;
  wire [15:0]d4;
  wire [15:0]d5;
  wire [15:0]d6;
  wire [15:0]d7;
  wire [15:0]d8;
  wire [15:0]num;
  wire [3:0]sel;

  bluetooth_demo_mux_9x1_0_0_mux_9x1 inst
       (.d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .d5(d5),
        .d6(d6),
        .d7(d7),
        .d8(d8),
        .num(num),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "mux_9x1" *) 
module bluetooth_demo_mux_9x1_0_0_mux_9x1
   (num,
    d6,
    sel,
    d7,
    d8,
    d2,
    d1,
    d0,
    d5,
    d4,
    d3);
  output [15:0]num;
  input [15:0]d6;
  input [3:0]sel;
  input [15:0]d7;
  input [15:0]d8;
  input [15:0]d2;
  input [15:0]d1;
  input [15:0]d0;
  input [15:0]d5;
  input [15:0]d4;
  input [15:0]d3;

  wire [15:0]d0;
  wire [15:0]d1;
  wire [15:0]d2;
  wire [15:0]d3;
  wire [15:0]d4;
  wire [15:0]d5;
  wire [15:0]d6;
  wire [15:0]d7;
  wire [15:0]d8;
  wire [15:0]num;
  wire \num[0]_INST_0_i_1_n_0 ;
  wire \num[0]_INST_0_i_2_n_0 ;
  wire \num[0]_INST_0_i_3_n_0 ;
  wire \num[10]_INST_0_i_1_n_0 ;
  wire \num[10]_INST_0_i_2_n_0 ;
  wire \num[10]_INST_0_i_3_n_0 ;
  wire \num[11]_INST_0_i_1_n_0 ;
  wire \num[11]_INST_0_i_2_n_0 ;
  wire \num[11]_INST_0_i_3_n_0 ;
  wire \num[12]_INST_0_i_1_n_0 ;
  wire \num[12]_INST_0_i_2_n_0 ;
  wire \num[12]_INST_0_i_3_n_0 ;
  wire \num[13]_INST_0_i_1_n_0 ;
  wire \num[13]_INST_0_i_2_n_0 ;
  wire \num[13]_INST_0_i_3_n_0 ;
  wire \num[14]_INST_0_i_1_n_0 ;
  wire \num[14]_INST_0_i_2_n_0 ;
  wire \num[14]_INST_0_i_3_n_0 ;
  wire \num[15]_INST_0_i_1_n_0 ;
  wire \num[15]_INST_0_i_2_n_0 ;
  wire \num[15]_INST_0_i_3_n_0 ;
  wire \num[1]_INST_0_i_1_n_0 ;
  wire \num[1]_INST_0_i_2_n_0 ;
  wire \num[1]_INST_0_i_3_n_0 ;
  wire \num[2]_INST_0_i_1_n_0 ;
  wire \num[2]_INST_0_i_2_n_0 ;
  wire \num[2]_INST_0_i_3_n_0 ;
  wire \num[3]_INST_0_i_1_n_0 ;
  wire \num[3]_INST_0_i_2_n_0 ;
  wire \num[3]_INST_0_i_3_n_0 ;
  wire \num[4]_INST_0_i_1_n_0 ;
  wire \num[4]_INST_0_i_2_n_0 ;
  wire \num[4]_INST_0_i_3_n_0 ;
  wire \num[5]_INST_0_i_1_n_0 ;
  wire \num[5]_INST_0_i_2_n_0 ;
  wire \num[5]_INST_0_i_3_n_0 ;
  wire \num[6]_INST_0_i_1_n_0 ;
  wire \num[6]_INST_0_i_2_n_0 ;
  wire \num[6]_INST_0_i_3_n_0 ;
  wire \num[7]_INST_0_i_1_n_0 ;
  wire \num[7]_INST_0_i_2_n_0 ;
  wire \num[7]_INST_0_i_3_n_0 ;
  wire \num[8]_INST_0_i_1_n_0 ;
  wire \num[8]_INST_0_i_2_n_0 ;
  wire \num[8]_INST_0_i_3_n_0 ;
  wire \num[9]_INST_0_i_1_n_0 ;
  wire \num[9]_INST_0_i_2_n_0 ;
  wire \num[9]_INST_0_i_3_n_0 ;
  wire [3:0]sel;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[0]_INST_0 
       (.I0(\num[0]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[0]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[0]_INST_0_i_3_n_0 ),
        .O(num[0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[0]_INST_0_i_1 
       (.I0(d6[0]),
        .I1(sel[0]),
        .I2(d7[0]),
        .I3(sel[1]),
        .I4(d8[0]),
        .I5(sel[2]),
        .O(\num[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[0]_INST_0_i_2 
       (.I0(d5[0]),
        .I1(sel[1]),
        .I2(d4[0]),
        .I3(sel[0]),
        .I4(d3[0]),
        .O(\num[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[0]_INST_0_i_3 
       (.I0(d2[0]),
        .I1(sel[1]),
        .I2(d1[0]),
        .I3(sel[0]),
        .I4(d0[0]),
        .O(\num[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[10]_INST_0 
       (.I0(\num[10]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[10]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[10]_INST_0_i_3_n_0 ),
        .O(num[10]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[10]_INST_0_i_1 
       (.I0(d6[10]),
        .I1(sel[0]),
        .I2(d7[10]),
        .I3(sel[1]),
        .I4(d8[10]),
        .I5(sel[2]),
        .O(\num[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[10]_INST_0_i_2 
       (.I0(d5[10]),
        .I1(sel[1]),
        .I2(d4[10]),
        .I3(sel[0]),
        .I4(d3[10]),
        .O(\num[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[10]_INST_0_i_3 
       (.I0(d2[10]),
        .I1(sel[1]),
        .I2(d1[10]),
        .I3(sel[0]),
        .I4(d0[10]),
        .O(\num[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[11]_INST_0 
       (.I0(\num[11]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[11]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[11]_INST_0_i_3_n_0 ),
        .O(num[11]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[11]_INST_0_i_1 
       (.I0(d6[11]),
        .I1(sel[0]),
        .I2(d7[11]),
        .I3(sel[1]),
        .I4(d8[11]),
        .I5(sel[2]),
        .O(\num[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[11]_INST_0_i_2 
       (.I0(d5[11]),
        .I1(sel[1]),
        .I2(d4[11]),
        .I3(sel[0]),
        .I4(d3[11]),
        .O(\num[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[11]_INST_0_i_3 
       (.I0(d2[11]),
        .I1(sel[1]),
        .I2(d1[11]),
        .I3(sel[0]),
        .I4(d0[11]),
        .O(\num[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[12]_INST_0 
       (.I0(\num[12]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[12]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[12]_INST_0_i_3_n_0 ),
        .O(num[12]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[12]_INST_0_i_1 
       (.I0(d6[12]),
        .I1(sel[0]),
        .I2(d7[12]),
        .I3(sel[1]),
        .I4(d8[12]),
        .I5(sel[2]),
        .O(\num[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[12]_INST_0_i_2 
       (.I0(d5[12]),
        .I1(sel[1]),
        .I2(d4[12]),
        .I3(sel[0]),
        .I4(d3[12]),
        .O(\num[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[12]_INST_0_i_3 
       (.I0(d2[12]),
        .I1(sel[1]),
        .I2(d1[12]),
        .I3(sel[0]),
        .I4(d0[12]),
        .O(\num[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[13]_INST_0 
       (.I0(\num[13]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[13]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[13]_INST_0_i_3_n_0 ),
        .O(num[13]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[13]_INST_0_i_1 
       (.I0(d6[13]),
        .I1(sel[0]),
        .I2(d7[13]),
        .I3(sel[1]),
        .I4(d8[13]),
        .I5(sel[2]),
        .O(\num[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[13]_INST_0_i_2 
       (.I0(d5[13]),
        .I1(sel[1]),
        .I2(d4[13]),
        .I3(sel[0]),
        .I4(d3[13]),
        .O(\num[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[13]_INST_0_i_3 
       (.I0(d2[13]),
        .I1(sel[1]),
        .I2(d1[13]),
        .I3(sel[0]),
        .I4(d0[13]),
        .O(\num[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[14]_INST_0 
       (.I0(\num[14]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[14]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[14]_INST_0_i_3_n_0 ),
        .O(num[14]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[14]_INST_0_i_1 
       (.I0(d6[14]),
        .I1(sel[0]),
        .I2(d7[14]),
        .I3(sel[1]),
        .I4(d8[14]),
        .I5(sel[2]),
        .O(\num[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[14]_INST_0_i_2 
       (.I0(d5[14]),
        .I1(sel[1]),
        .I2(d4[14]),
        .I3(sel[0]),
        .I4(d3[14]),
        .O(\num[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[14]_INST_0_i_3 
       (.I0(d2[14]),
        .I1(sel[1]),
        .I2(d1[14]),
        .I3(sel[0]),
        .I4(d0[14]),
        .O(\num[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[15]_INST_0 
       (.I0(\num[15]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[15]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[15]_INST_0_i_3_n_0 ),
        .O(num[15]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[15]_INST_0_i_1 
       (.I0(d6[15]),
        .I1(sel[0]),
        .I2(d7[15]),
        .I3(sel[1]),
        .I4(d8[15]),
        .I5(sel[2]),
        .O(\num[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[15]_INST_0_i_2 
       (.I0(d5[15]),
        .I1(sel[1]),
        .I2(d4[15]),
        .I3(sel[0]),
        .I4(d3[15]),
        .O(\num[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[15]_INST_0_i_3 
       (.I0(d2[15]),
        .I1(sel[1]),
        .I2(d1[15]),
        .I3(sel[0]),
        .I4(d0[15]),
        .O(\num[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[1]_INST_0 
       (.I0(\num[1]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[1]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[1]_INST_0_i_3_n_0 ),
        .O(num[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[1]_INST_0_i_1 
       (.I0(d6[1]),
        .I1(sel[0]),
        .I2(d7[1]),
        .I3(sel[1]),
        .I4(d8[1]),
        .I5(sel[2]),
        .O(\num[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[1]_INST_0_i_2 
       (.I0(d5[1]),
        .I1(sel[1]),
        .I2(d4[1]),
        .I3(sel[0]),
        .I4(d3[1]),
        .O(\num[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[1]_INST_0_i_3 
       (.I0(d2[1]),
        .I1(sel[1]),
        .I2(d1[1]),
        .I3(sel[0]),
        .I4(d0[1]),
        .O(\num[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[2]_INST_0 
       (.I0(\num[2]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[2]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[2]_INST_0_i_3_n_0 ),
        .O(num[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[2]_INST_0_i_1 
       (.I0(d6[2]),
        .I1(sel[0]),
        .I2(d7[2]),
        .I3(sel[1]),
        .I4(d8[2]),
        .I5(sel[2]),
        .O(\num[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[2]_INST_0_i_2 
       (.I0(d5[2]),
        .I1(sel[1]),
        .I2(d4[2]),
        .I3(sel[0]),
        .I4(d3[2]),
        .O(\num[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[2]_INST_0_i_3 
       (.I0(d2[2]),
        .I1(sel[1]),
        .I2(d1[2]),
        .I3(sel[0]),
        .I4(d0[2]),
        .O(\num[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[3]_INST_0 
       (.I0(\num[3]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[3]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[3]_INST_0_i_3_n_0 ),
        .O(num[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[3]_INST_0_i_1 
       (.I0(d6[3]),
        .I1(sel[0]),
        .I2(d7[3]),
        .I3(sel[1]),
        .I4(d8[3]),
        .I5(sel[2]),
        .O(\num[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[3]_INST_0_i_2 
       (.I0(d5[3]),
        .I1(sel[1]),
        .I2(d4[3]),
        .I3(sel[0]),
        .I4(d3[3]),
        .O(\num[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[3]_INST_0_i_3 
       (.I0(d2[3]),
        .I1(sel[1]),
        .I2(d1[3]),
        .I3(sel[0]),
        .I4(d0[3]),
        .O(\num[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[4]_INST_0 
       (.I0(\num[4]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[4]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[4]_INST_0_i_3_n_0 ),
        .O(num[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[4]_INST_0_i_1 
       (.I0(d6[4]),
        .I1(sel[0]),
        .I2(d7[4]),
        .I3(sel[1]),
        .I4(d8[4]),
        .I5(sel[2]),
        .O(\num[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[4]_INST_0_i_2 
       (.I0(d5[4]),
        .I1(sel[1]),
        .I2(d4[4]),
        .I3(sel[0]),
        .I4(d3[4]),
        .O(\num[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[4]_INST_0_i_3 
       (.I0(d2[4]),
        .I1(sel[1]),
        .I2(d1[4]),
        .I3(sel[0]),
        .I4(d0[4]),
        .O(\num[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[5]_INST_0 
       (.I0(\num[5]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[5]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[5]_INST_0_i_3_n_0 ),
        .O(num[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[5]_INST_0_i_1 
       (.I0(d6[5]),
        .I1(sel[0]),
        .I2(d7[5]),
        .I3(sel[1]),
        .I4(d8[5]),
        .I5(sel[2]),
        .O(\num[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[5]_INST_0_i_2 
       (.I0(d5[5]),
        .I1(sel[1]),
        .I2(d4[5]),
        .I3(sel[0]),
        .I4(d3[5]),
        .O(\num[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[5]_INST_0_i_3 
       (.I0(d2[5]),
        .I1(sel[1]),
        .I2(d1[5]),
        .I3(sel[0]),
        .I4(d0[5]),
        .O(\num[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[6]_INST_0 
       (.I0(\num[6]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[6]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[6]_INST_0_i_3_n_0 ),
        .O(num[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[6]_INST_0_i_1 
       (.I0(d6[6]),
        .I1(sel[0]),
        .I2(d7[6]),
        .I3(sel[1]),
        .I4(d8[6]),
        .I5(sel[2]),
        .O(\num[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[6]_INST_0_i_2 
       (.I0(d5[6]),
        .I1(sel[1]),
        .I2(d4[6]),
        .I3(sel[0]),
        .I4(d3[6]),
        .O(\num[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[6]_INST_0_i_3 
       (.I0(d2[6]),
        .I1(sel[1]),
        .I2(d1[6]),
        .I3(sel[0]),
        .I4(d0[6]),
        .O(\num[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[7]_INST_0 
       (.I0(\num[7]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[7]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[7]_INST_0_i_3_n_0 ),
        .O(num[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[7]_INST_0_i_1 
       (.I0(d6[7]),
        .I1(sel[0]),
        .I2(d7[7]),
        .I3(sel[1]),
        .I4(d8[7]),
        .I5(sel[2]),
        .O(\num[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[7]_INST_0_i_2 
       (.I0(d5[7]),
        .I1(sel[1]),
        .I2(d4[7]),
        .I3(sel[0]),
        .I4(d3[7]),
        .O(\num[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[7]_INST_0_i_3 
       (.I0(d2[7]),
        .I1(sel[1]),
        .I2(d1[7]),
        .I3(sel[0]),
        .I4(d0[7]),
        .O(\num[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[8]_INST_0 
       (.I0(\num[8]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[8]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[8]_INST_0_i_3_n_0 ),
        .O(num[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[8]_INST_0_i_1 
       (.I0(d6[8]),
        .I1(sel[0]),
        .I2(d7[8]),
        .I3(sel[1]),
        .I4(d8[8]),
        .I5(sel[2]),
        .O(\num[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[8]_INST_0_i_2 
       (.I0(d5[8]),
        .I1(sel[1]),
        .I2(d4[8]),
        .I3(sel[0]),
        .I4(d3[8]),
        .O(\num[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[8]_INST_0_i_3 
       (.I0(d2[8]),
        .I1(sel[1]),
        .I2(d1[8]),
        .I3(sel[0]),
        .I4(d0[8]),
        .O(\num[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \num[9]_INST_0 
       (.I0(\num[9]_INST_0_i_1_n_0 ),
        .I1(sel[3]),
        .I2(\num[9]_INST_0_i_2_n_0 ),
        .I3(sel[2]),
        .I4(\num[9]_INST_0_i_3_n_0 ),
        .O(num[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \num[9]_INST_0_i_1 
       (.I0(d6[9]),
        .I1(sel[0]),
        .I2(d7[9]),
        .I3(sel[1]),
        .I4(d8[9]),
        .I5(sel[2]),
        .O(\num[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[9]_INST_0_i_2 
       (.I0(d5[9]),
        .I1(sel[1]),
        .I2(d4[9]),
        .I3(sel[0]),
        .I4(d3[9]),
        .O(\num[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \num[9]_INST_0_i_3 
       (.I0(d2[9]),
        .I1(sel[1]),
        .I2(d1[9]),
        .I3(sel[0]),
        .I4(d0[9]),
        .O(\num[9]_INST_0_i_3_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
