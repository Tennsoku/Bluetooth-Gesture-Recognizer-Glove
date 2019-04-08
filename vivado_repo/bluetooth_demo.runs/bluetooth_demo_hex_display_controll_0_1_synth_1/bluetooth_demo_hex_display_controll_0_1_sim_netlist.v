// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Mar 27 23:56:08 2019
// Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluetooth_demo_hex_display_controll_0_1_sim_netlist.v
// Design      : bluetooth_demo_hex_display_controll_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bluetooth_demo_hex_display_controll_0_1,hex_display_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hex_display_controller,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    clk,
    num,
    anodes,
    cathodes,
    dp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input clk;
  input [15:0]num;
  output [7:0]anodes;
  output [6:0]cathodes;
  output dp;

  wire \<const1> ;
  wire [5:0]\^anodes ;
  wire [6:0]cathodes;
  wire \cathodes[6]_INST_0_i_103_n_2 ;
  wire \cathodes[6]_INST_0_i_103_n_3 ;
  wire \cathodes[6]_INST_0_i_106_n_0 ;
  wire \cathodes[6]_INST_0_i_107_n_0 ;
  wire \cathodes[6]_INST_0_i_108_n_0 ;
  wire \cathodes[6]_INST_0_i_109_n_0 ;
  wire \cathodes[6]_INST_0_i_112_n_0 ;
  wire \cathodes[6]_INST_0_i_113_n_0 ;
  wire \cathodes[6]_INST_0_i_114_n_0 ;
  wire \cathodes[6]_INST_0_i_115_n_0 ;
  wire \cathodes[6]_INST_0_i_116_n_0 ;
  wire \cathodes[6]_INST_0_i_117_n_0 ;
  wire \cathodes[6]_INST_0_i_121_n_0 ;
  wire \cathodes[6]_INST_0_i_122_n_0 ;
  wire \cathodes[6]_INST_0_i_123_n_0 ;
  wire \cathodes[6]_INST_0_i_124_n_0 ;
  wire \cathodes[6]_INST_0_i_125_n_0 ;
  wire \cathodes[6]_INST_0_i_126_n_0 ;
  wire \cathodes[6]_INST_0_i_126_n_1 ;
  wire \cathodes[6]_INST_0_i_126_n_2 ;
  wire \cathodes[6]_INST_0_i_126_n_3 ;
  wire \cathodes[6]_INST_0_i_127_n_0 ;
  wire \cathodes[6]_INST_0_i_128_n_0 ;
  wire \cathodes[6]_INST_0_i_129_n_0 ;
  wire \cathodes[6]_INST_0_i_130_n_0 ;
  wire \cathodes[6]_INST_0_i_131_n_0 ;
  wire \cathodes[6]_INST_0_i_132_n_0 ;
  wire \cathodes[6]_INST_0_i_133_n_0 ;
  wire \cathodes[6]_INST_0_i_135_n_0 ;
  wire \cathodes[6]_INST_0_i_137_n_0 ;
  wire \cathodes[6]_INST_0_i_138_n_0 ;
  wire \cathodes[6]_INST_0_i_139_n_0 ;
  wire \cathodes[6]_INST_0_i_140_n_0 ;
  wire \cathodes[6]_INST_0_i_14_n_0 ;
  wire \cathodes[6]_INST_0_i_16_n_0 ;
  wire \cathodes[6]_INST_0_i_18_n_0 ;
  wire \cathodes[6]_INST_0_i_19_n_0 ;
  wire \cathodes[6]_INST_0_i_21_n_0 ;
  wire \cathodes[6]_INST_0_i_23_n_0 ;
  wire \cathodes[6]_INST_0_i_24_n_0 ;
  wire \cathodes[6]_INST_0_i_26_n_0 ;
  wire \cathodes[6]_INST_0_i_29_n_0 ;
  wire \cathodes[6]_INST_0_i_33_n_0 ;
  wire \cathodes[6]_INST_0_i_34_n_0 ;
  wire \cathodes[6]_INST_0_i_35_n_0 ;
  wire \cathodes[6]_INST_0_i_39_n_0 ;
  wire \cathodes[6]_INST_0_i_40_n_0 ;
  wire \cathodes[6]_INST_0_i_41_n_0 ;
  wire \cathodes[6]_INST_0_i_42_n_0 ;
  wire \cathodes[6]_INST_0_i_43_n_0 ;
  wire \cathodes[6]_INST_0_i_44_n_0 ;
  wire \cathodes[6]_INST_0_i_46_n_0 ;
  wire \cathodes[6]_INST_0_i_47_n_0 ;
  wire \cathodes[6]_INST_0_i_48_n_0 ;
  wire \cathodes[6]_INST_0_i_49_n_0 ;
  wire \cathodes[6]_INST_0_i_50_n_0 ;
  wire \cathodes[6]_INST_0_i_51_n_0 ;
  wire \cathodes[6]_INST_0_i_52_n_0 ;
  wire \cathodes[6]_INST_0_i_53_n_0 ;
  wire \cathodes[6]_INST_0_i_54_n_0 ;
  wire \cathodes[6]_INST_0_i_55_n_0 ;
  wire \cathodes[6]_INST_0_i_56_n_0 ;
  wire \cathodes[6]_INST_0_i_57_n_0 ;
  wire \cathodes[6]_INST_0_i_58_n_0 ;
  wire \cathodes[6]_INST_0_i_59_n_0 ;
  wire \cathodes[6]_INST_0_i_60_n_0 ;
  wire \cathodes[6]_INST_0_i_61_n_0 ;
  wire \cathodes[6]_INST_0_i_62_n_0 ;
  wire \cathodes[6]_INST_0_i_63_n_0 ;
  wire \cathodes[6]_INST_0_i_64_n_0 ;
  wire \cathodes[6]_INST_0_i_65_n_0 ;
  wire \cathodes[6]_INST_0_i_66_n_0 ;
  wire \cathodes[6]_INST_0_i_67_n_0 ;
  wire \cathodes[6]_INST_0_i_68_n_0 ;
  wire \cathodes[6]_INST_0_i_69_n_0 ;
  wire \cathodes[6]_INST_0_i_70_n_0 ;
  wire \cathodes[6]_INST_0_i_71_n_0 ;
  wire \cathodes[6]_INST_0_i_72_n_0 ;
  wire \cathodes[6]_INST_0_i_73_n_0 ;
  wire \cathodes[6]_INST_0_i_74_n_0 ;
  wire \cathodes[6]_INST_0_i_75_n_0 ;
  wire \cathodes[6]_INST_0_i_76_n_0 ;
  wire \cathodes[6]_INST_0_i_79_n_0 ;
  wire \cathodes[6]_INST_0_i_80_n_0 ;
  wire \cathodes[6]_INST_0_i_81_n_0 ;
  wire \cathodes[6]_INST_0_i_82_n_0 ;
  wire \cathodes[6]_INST_0_i_83_n_0 ;
  wire \cathodes[6]_INST_0_i_84_n_0 ;
  wire \cathodes[6]_INST_0_i_85_n_0 ;
  wire \cathodes[6]_INST_0_i_85_n_1 ;
  wire \cathodes[6]_INST_0_i_85_n_2 ;
  wire \cathodes[6]_INST_0_i_85_n_3 ;
  wire \cathodes[6]_INST_0_i_86_n_0 ;
  wire \cathodes[6]_INST_0_i_87_n_0 ;
  wire \cathodes[6]_INST_0_i_88_n_0 ;
  wire \cathodes[6]_INST_0_i_89_n_0 ;
  wire \cathodes[6]_INST_0_i_90_n_0 ;
  wire \cathodes[6]_INST_0_i_91_n_0 ;
  wire \cathodes[6]_INST_0_i_92_n_0 ;
  wire \cathodes[6]_INST_0_i_93_n_0 ;
  wire \cathodes[6]_INST_0_i_93_n_1 ;
  wire \cathodes[6]_INST_0_i_93_n_2 ;
  wire \cathodes[6]_INST_0_i_93_n_3 ;
  wire \cathodes[6]_INST_0_i_94_n_0 ;
  wire \cathodes[6]_INST_0_i_95_n_0 ;
  wire \cathodes[6]_INST_0_i_96_n_0 ;
  wire clk;
  wire [15:1]converted_num;
  wire [15:1]converted_num0;
  wire [3:1]data3;
  wire [15:0]num;
  wire [3:1]p_0_in;
  wire rst;
  wire shift1;
  wire [30:28]shift3_out;
  wire [3:2]\NLW_cathodes[6]_INST_0_i_103_CO_UNCONNECTED ;
  wire [3:3]\NLW_cathodes[6]_INST_0_i_103_O_UNCONNECTED ;

  assign anodes[7] = \<const1> ;
  assign anodes[6] = \<const1> ;
  assign anodes[5:0] = \^anodes [5:0];
  assign dp = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h33F088F0)) 
    \cathodes[6]_INST_0_i_100 
       (.I0(converted_num0[14]),
        .I1(converted_num0[15]),
        .I2(num[13]),
        .I3(num[15]),
        .I4(converted_num0[13]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hDF0FD000)) 
    \cathodes[6]_INST_0_i_101 
       (.I0(converted_num0[15]),
        .I1(converted_num0[13]),
        .I2(num[15]),
        .I3(converted_num0[14]),
        .I4(num[14]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \cathodes[6]_INST_0_i_102 
       (.I0(converted_num0[15]),
        .I1(converted_num0[13]),
        .I2(num[15]),
        .I3(converted_num0[14]),
        .O(p_0_in[3]));
  CARRY4 \cathodes[6]_INST_0_i_103 
       (.CI(\cathodes[6]_INST_0_i_93_n_0 ),
        .CO({\NLW_cathodes[6]_INST_0_i_103_CO_UNCONNECTED [3:2],\cathodes[6]_INST_0_i_103_n_2 ,\cathodes[6]_INST_0_i_103_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cathodes[6]_INST_0_i_103_O_UNCONNECTED [3],converted_num0[15:13]}),
        .S({1'b0,\cathodes[6]_INST_0_i_131_n_0 ,\cathodes[6]_INST_0_i_132_n_0 ,\cathodes[6]_INST_0_i_133_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_104 
       (.I0(converted_num0[13]),
        .I1(num[15]),
        .I2(num[13]),
        .O(converted_num[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_105 
       (.I0(converted_num0[14]),
        .I1(num[15]),
        .I2(num[14]),
        .O(converted_num[14]));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_106 
       (.I0(converted_num[7]),
        .I1(converted_num[8]),
        .I2(converted_num[9]),
        .I3(\cathodes[6]_INST_0_i_94_n_0 ),
        .I4(\cathodes[6]_INST_0_i_95_n_0 ),
        .I5(\cathodes[6]_INST_0_i_96_n_0 ),
        .O(\cathodes[6]_INST_0_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cathodes[6]_INST_0_i_107 
       (.I0(\cathodes[6]_INST_0_i_135_n_0 ),
        .I1(\cathodes[6]_INST_0_i_64_n_0 ),
        .O(\cathodes[6]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hF000000F1FFCF800)) 
    \cathodes[6]_INST_0_i_108 
       (.I0(converted_num[10]),
        .I1(converted_num[11]),
        .I2(converted_num[12]),
        .I3(converted_num[15]),
        .I4(converted_num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h000103F0E0000000)) 
    \cathodes[6]_INST_0_i_109 
       (.I0(converted_num[10]),
        .I1(converted_num[11]),
        .I2(converted_num[12]),
        .I3(converted_num[15]),
        .I4(converted_num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_110 
       (.I0(converted_num0[8]),
        .I1(num[15]),
        .I2(num[8]),
        .O(converted_num[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_111 
       (.I0(converted_num0[9]),
        .I1(num[15]),
        .I2(num[9]),
        .O(converted_num[9]));
  LUT6 #(
    .INIT(64'hC333499934449222)) 
    \cathodes[6]_INST_0_i_112 
       (.I0(converted_num[14]),
        .I1(converted_num[13]),
        .I2(num[15]),
        .I3(converted_num0[15]),
        .I4(converted_num[12]),
        .I5(converted_num[11]),
        .O(\cathodes[6]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h13338111C8886CCC)) 
    \cathodes[6]_INST_0_i_113 
       (.I0(converted_num[11]),
        .I1(converted_num[12]),
        .I2(converted_num0[15]),
        .I3(num[15]),
        .I4(converted_num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h2444122201118000)) 
    \cathodes[6]_INST_0_i_114 
       (.I0(converted_num[11]),
        .I1(converted_num[12]),
        .I2(converted_num0[15]),
        .I3(num[15]),
        .I4(converted_num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h2104078421084210)) 
    \cathodes[6]_INST_0_i_115 
       (.I0(converted_num[7]),
        .I1(converted_num[8]),
        .I2(converted_num[9]),
        .I3(\cathodes[6]_INST_0_i_94_n_0 ),
        .I4(\cathodes[6]_INST_0_i_95_n_0 ),
        .I5(\cathodes[6]_INST_0_i_96_n_0 ),
        .O(\cathodes[6]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h18C3266318C6318C)) 
    \cathodes[6]_INST_0_i_116 
       (.I0(converted_num[7]),
        .I1(converted_num[8]),
        .I2(converted_num[9]),
        .I3(\cathodes[6]_INST_0_i_94_n_0 ),
        .I4(\cathodes[6]_INST_0_i_95_n_0 ),
        .I5(\cathodes[6]_INST_0_i_96_n_0 ),
        .O(\cathodes[6]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hEC111C0B03E4E234)) 
    \cathodes[6]_INST_0_i_117 
       (.I0(\cathodes[6]_INST_0_i_96_n_0 ),
        .I1(\cathodes[6]_INST_0_i_95_n_0 ),
        .I2(\cathodes[6]_INST_0_i_94_n_0 ),
        .I3(converted_num[9]),
        .I4(converted_num[8]),
        .I5(converted_num[7]),
        .O(\cathodes[6]_INST_0_i_117_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_118 
       (.I0(converted_num0[6]),
        .I1(num[15]),
        .I2(num[6]),
        .O(converted_num[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_119 
       (.I0(converted_num0[5]),
        .I1(num[15]),
        .I2(num[5]),
        .O(converted_num[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_120 
       (.I0(converted_num0[4]),
        .I1(num[15]),
        .I2(num[4]),
        .O(converted_num[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_121 
       (.I0(num[0]),
        .O(\cathodes[6]_INST_0_i_121_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_122 
       (.I0(num[4]),
        .O(\cathodes[6]_INST_0_i_122_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_123 
       (.I0(num[3]),
        .O(\cathodes[6]_INST_0_i_123_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_124 
       (.I0(num[2]),
        .O(\cathodes[6]_INST_0_i_124_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_125 
       (.I0(num[1]),
        .O(\cathodes[6]_INST_0_i_125_n_0 ));
  CARRY4 \cathodes[6]_INST_0_i_126 
       (.CI(\cathodes[6]_INST_0_i_85_n_0 ),
        .CO({\cathodes[6]_INST_0_i_126_n_0 ,\cathodes[6]_INST_0_i_126_n_1 ,\cathodes[6]_INST_0_i_126_n_2 ,\cathodes[6]_INST_0_i_126_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(converted_num0[8:5]),
        .S({\cathodes[6]_INST_0_i_137_n_0 ,\cathodes[6]_INST_0_i_138_n_0 ,\cathodes[6]_INST_0_i_139_n_0 ,\cathodes[6]_INST_0_i_140_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_127 
       (.I0(num[12]),
        .O(\cathodes[6]_INST_0_i_127_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_128 
       (.I0(num[11]),
        .O(\cathodes[6]_INST_0_i_128_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_129 
       (.I0(num[10]),
        .O(\cathodes[6]_INST_0_i_129_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_130 
       (.I0(num[9]),
        .O(\cathodes[6]_INST_0_i_130_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_131 
       (.I0(num[15]),
        .O(\cathodes[6]_INST_0_i_131_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_132 
       (.I0(num[14]),
        .O(\cathodes[6]_INST_0_i_132_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_133 
       (.I0(num[13]),
        .O(\cathodes[6]_INST_0_i_133_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_134 
       (.I0(converted_num0[7]),
        .I1(num[15]),
        .I2(num[7]),
        .O(converted_num[7]));
  LUT6 #(
    .INIT(64'h00FE0300FF00FF00)) 
    \cathodes[6]_INST_0_i_135 
       (.I0(converted_num[10]),
        .I1(converted_num[11]),
        .I2(converted_num[12]),
        .I3(converted_num[15]),
        .I4(converted_num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cathodes[6]_INST_0_i_136 
       (.I0(num[15]),
        .I1(converted_num0[15]),
        .O(converted_num[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_137 
       (.I0(num[8]),
        .O(\cathodes[6]_INST_0_i_137_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_138 
       (.I0(num[7]),
        .O(\cathodes[6]_INST_0_i_138_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_139 
       (.I0(num[6]),
        .O(\cathodes[6]_INST_0_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_14 
       (.I0(\cathodes[6]_INST_0_i_33_n_0 ),
        .I1(\cathodes[6]_INST_0_i_34_n_0 ),
        .I2(\cathodes[6]_INST_0_i_35_n_0 ),
        .I3(shift3_out[28]),
        .I4(shift3_out[29]),
        .I5(shift3_out[30]),
        .O(\cathodes[6]_INST_0_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cathodes[6]_INST_0_i_140 
       (.I0(num[5]),
        .O(\cathodes[6]_INST_0_i_140_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCC00C800)) 
    \cathodes[6]_INST_0_i_15 
       (.I0(\cathodes[6]_INST_0_i_35_n_0 ),
        .I1(\cathodes[6]_INST_0_i_39_n_0 ),
        .I2(\cathodes[6]_INST_0_i_40_n_0 ),
        .I3(\cathodes[6]_INST_0_i_41_n_0 ),
        .I4(\cathodes[6]_INST_0_i_34_n_0 ),
        .O(shift1));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \cathodes[6]_INST_0_i_16 
       (.I0(\cathodes[6]_INST_0_i_33_n_0 ),
        .I1(\cathodes[6]_INST_0_i_34_n_0 ),
        .I2(\cathodes[6]_INST_0_i_35_n_0 ),
        .I3(shift3_out[28]),
        .I4(shift3_out[29]),
        .I5(shift3_out[30]),
        .O(\cathodes[6]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h807F83E0)) 
    \cathodes[6]_INST_0_i_18 
       (.I0(\cathodes[6]_INST_0_i_34_n_0 ),
        .I1(\cathodes[6]_INST_0_i_35_n_0 ),
        .I2(shift3_out[28]),
        .I3(shift3_out[29]),
        .I4(shift3_out[30]),
        .O(\cathodes[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000200020)) 
    \cathodes[6]_INST_0_i_19 
       (.I0(shift3_out[30]),
        .I1(shift3_out[29]),
        .I2(shift3_out[28]),
        .I3(\cathodes[6]_INST_0_i_35_n_0 ),
        .I4(\cathodes[6]_INST_0_i_34_n_0 ),
        .I5(\cathodes[6]_INST_0_i_33_n_0 ),
        .O(\cathodes[6]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h11EA)) 
    \cathodes[6]_INST_0_i_21 
       (.I0(\cathodes[6]_INST_0_i_46_n_0 ),
        .I1(\cathodes[6]_INST_0_i_47_n_0 ),
        .I2(\cathodes[6]_INST_0_i_48_n_0 ),
        .I3(\cathodes[6]_INST_0_i_49_n_0 ),
        .O(\cathodes[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5A94D5A54A29524A)) 
    \cathodes[6]_INST_0_i_22 
       (.I0(\cathodes[6]_INST_0_i_33_n_0 ),
        .I1(\cathodes[6]_INST_0_i_34_n_0 ),
        .I2(\cathodes[6]_INST_0_i_35_n_0 ),
        .I3(\cathodes[6]_INST_0_i_39_n_0 ),
        .I4(\cathodes[6]_INST_0_i_40_n_0 ),
        .I5(\cathodes[6]_INST_0_i_41_n_0 ),
        .O(data3[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \cathodes[6]_INST_0_i_23 
       (.I0(\cathodes[6]_INST_0_i_39_n_0 ),
        .I1(\cathodes[6]_INST_0_i_40_n_0 ),
        .I2(\cathodes[6]_INST_0_i_41_n_0 ),
        .O(\cathodes[6]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \cathodes[6]_INST_0_i_24 
       (.I0(\cathodes[6]_INST_0_i_35_n_0 ),
        .I1(shift3_out[28]),
        .I2(shift3_out[29]),
        .I3(shift3_out[30]),
        .O(\cathodes[6]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1E10)) 
    \cathodes[6]_INST_0_i_26 
       (.I0(\cathodes[6]_INST_0_i_49_n_0 ),
        .I1(\cathodes[6]_INST_0_i_48_n_0 ),
        .I2(\cathodes[6]_INST_0_i_47_n_0 ),
        .I3(\cathodes[6]_INST_0_i_46_n_0 ),
        .O(\cathodes[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC508EC10C8245882)) 
    \cathodes[6]_INST_0_i_27 
       (.I0(\cathodes[6]_INST_0_i_35_n_0 ),
        .I1(\cathodes[6]_INST_0_i_39_n_0 ),
        .I2(\cathodes[6]_INST_0_i_40_n_0 ),
        .I3(\cathodes[6]_INST_0_i_41_n_0 ),
        .I4(\cathodes[6]_INST_0_i_34_n_0 ),
        .I5(\cathodes[6]_INST_0_i_33_n_0 ),
        .O(data3[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h998C)) 
    \cathodes[6]_INST_0_i_29 
       (.I0(\cathodes[6]_INST_0_i_49_n_0 ),
        .I1(\cathodes[6]_INST_0_i_48_n_0 ),
        .I2(\cathodes[6]_INST_0_i_47_n_0 ),
        .I3(\cathodes[6]_INST_0_i_46_n_0 ),
        .O(\cathodes[6]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hDAC3092C4F49A434)) 
    \cathodes[6]_INST_0_i_30 
       (.I0(\cathodes[6]_INST_0_i_35_n_0 ),
        .I1(\cathodes[6]_INST_0_i_39_n_0 ),
        .I2(\cathodes[6]_INST_0_i_40_n_0 ),
        .I3(\cathodes[6]_INST_0_i_41_n_0 ),
        .I4(\cathodes[6]_INST_0_i_34_n_0 ),
        .I5(\cathodes[6]_INST_0_i_33_n_0 ),
        .O(data3[2]));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_33 
       (.I0(\cathodes[6]_INST_0_i_57_n_0 ),
        .I1(\cathodes[6]_INST_0_i_58_n_0 ),
        .I2(\cathodes[6]_INST_0_i_59_n_0 ),
        .I3(\cathodes[6]_INST_0_i_60_n_0 ),
        .I4(\cathodes[6]_INST_0_i_61_n_0 ),
        .I5(\cathodes[6]_INST_0_i_62_n_0 ),
        .O(\cathodes[6]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h807F83E0)) 
    \cathodes[6]_INST_0_i_34 
       (.I0(\cathodes[6]_INST_0_i_58_n_0 ),
        .I1(\cathodes[6]_INST_0_i_59_n_0 ),
        .I2(\cathodes[6]_INST_0_i_60_n_0 ),
        .I3(\cathodes[6]_INST_0_i_61_n_0 ),
        .I4(\cathodes[6]_INST_0_i_62_n_0 ),
        .O(\cathodes[6]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \cathodes[6]_INST_0_i_35 
       (.I0(\cathodes[6]_INST_0_i_59_n_0 ),
        .I1(\cathodes[6]_INST_0_i_60_n_0 ),
        .I2(\cathodes[6]_INST_0_i_61_n_0 ),
        .I3(\cathodes[6]_INST_0_i_62_n_0 ),
        .O(\cathodes[6]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \cathodes[6]_INST_0_i_36 
       (.I0(\cathodes[6]_INST_0_i_41_n_0 ),
        .I1(\cathodes[6]_INST_0_i_39_n_0 ),
        .I2(\cathodes[6]_INST_0_i_40_n_0 ),
        .O(shift3_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \cathodes[6]_INST_0_i_37 
       (.I0(\cathodes[6]_INST_0_i_39_n_0 ),
        .I1(\cathodes[6]_INST_0_i_40_n_0 ),
        .I2(\cathodes[6]_INST_0_i_41_n_0 ),
        .O(shift3_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cathodes[6]_INST_0_i_38 
       (.I0(\cathodes[6]_INST_0_i_39_n_0 ),
        .I1(\cathodes[6]_INST_0_i_40_n_0 ),
        .I2(\cathodes[6]_INST_0_i_41_n_0 ),
        .O(shift3_out[30]));
  LUT5 #(
    .INIT(32'hF0E00000)) 
    \cathodes[6]_INST_0_i_39 
       (.I0(\cathodes[6]_INST_0_i_63_n_0 ),
        .I1(\cathodes[6]_INST_0_i_64_n_0 ),
        .I2(\cathodes[6]_INST_0_i_65_n_0 ),
        .I3(\cathodes[6]_INST_0_i_66_n_0 ),
        .I4(\cathodes[6]_INST_0_i_67_n_0 ),
        .O(\cathodes[6]_INST_0_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \cathodes[6]_INST_0_i_40 
       (.I0(\cathodes[6]_INST_0_i_68_n_0 ),
        .I1(\cathodes[6]_INST_0_i_69_n_0 ),
        .I2(\cathodes[6]_INST_0_i_70_n_0 ),
        .I3(\cathodes[6]_INST_0_i_71_n_0 ),
        .O(\cathodes[6]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h00FE0300FF00FF00)) 
    \cathodes[6]_INST_0_i_41 
       (.I0(\cathodes[6]_INST_0_i_72_n_0 ),
        .I1(\cathodes[6]_INST_0_i_63_n_0 ),
        .I2(\cathodes[6]_INST_0_i_64_n_0 ),
        .I3(\cathodes[6]_INST_0_i_65_n_0 ),
        .I4(\cathodes[6]_INST_0_i_66_n_0 ),
        .I5(\cathodes[6]_INST_0_i_67_n_0 ),
        .O(\cathodes[6]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h83FF83E0)) 
    \cathodes[6]_INST_0_i_42 
       (.I0(\cathodes[6]_INST_0_i_43_n_0 ),
        .I1(\cathodes[6]_INST_0_i_73_n_0 ),
        .I2(\cathodes[6]_INST_0_i_74_n_0 ),
        .I3(\cathodes[6]_INST_0_i_75_n_0 ),
        .I4(\cathodes[6]_INST_0_i_76_n_0 ),
        .O(\cathodes[6]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h807F83E0)) 
    \cathodes[6]_INST_0_i_43 
       (.I0(converted_num[2]),
        .I1(converted_num[3]),
        .I2(\cathodes[6]_INST_0_i_79_n_0 ),
        .I3(\cathodes[6]_INST_0_i_80_n_0 ),
        .I4(\cathodes[6]_INST_0_i_81_n_0 ),
        .O(\cathodes[6]_INST_0_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h83FF83E0)) 
    \cathodes[6]_INST_0_i_44 
       (.I0(converted_num[1]),
        .I1(converted_num[2]),
        .I2(\cathodes[6]_INST_0_i_82_n_0 ),
        .I3(\cathodes[6]_INST_0_i_83_n_0 ),
        .I4(\cathodes[6]_INST_0_i_84_n_0 ),
        .O(\cathodes[6]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_45 
       (.I0(converted_num0[1]),
        .I1(num[15]),
        .I2(num[1]),
        .O(converted_num[1]));
  LUT6 #(
    .INIT(64'h2104078421084210)) 
    \cathodes[6]_INST_0_i_46 
       (.I0(\cathodes[6]_INST_0_i_57_n_0 ),
        .I1(\cathodes[6]_INST_0_i_58_n_0 ),
        .I2(\cathodes[6]_INST_0_i_59_n_0 ),
        .I3(\cathodes[6]_INST_0_i_60_n_0 ),
        .I4(\cathodes[6]_INST_0_i_61_n_0 ),
        .I5(\cathodes[6]_INST_0_i_62_n_0 ),
        .O(\cathodes[6]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h18C3266318C6318C)) 
    \cathodes[6]_INST_0_i_47 
       (.I0(\cathodes[6]_INST_0_i_57_n_0 ),
        .I1(\cathodes[6]_INST_0_i_58_n_0 ),
        .I2(\cathodes[6]_INST_0_i_59_n_0 ),
        .I3(\cathodes[6]_INST_0_i_60_n_0 ),
        .I4(\cathodes[6]_INST_0_i_61_n_0 ),
        .I5(\cathodes[6]_INST_0_i_62_n_0 ),
        .O(\cathodes[6]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hEC111C0B03E4E234)) 
    \cathodes[6]_INST_0_i_48 
       (.I0(\cathodes[6]_INST_0_i_62_n_0 ),
        .I1(\cathodes[6]_INST_0_i_61_n_0 ),
        .I2(\cathodes[6]_INST_0_i_60_n_0 ),
        .I3(\cathodes[6]_INST_0_i_59_n_0 ),
        .I4(\cathodes[6]_INST_0_i_58_n_0 ),
        .I5(\cathodes[6]_INST_0_i_57_n_0 ),
        .O(\cathodes[6]_INST_0_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \cathodes[6]_INST_0_i_49 
       (.I0(\cathodes[6]_INST_0_i_73_n_0 ),
        .I1(\cathodes[6]_INST_0_i_74_n_0 ),
        .I2(\cathodes[6]_INST_0_i_75_n_0 ),
        .I3(\cathodes[6]_INST_0_i_76_n_0 ),
        .O(\cathodes[6]_INST_0_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h40784210)) 
    \cathodes[6]_INST_0_i_50 
       (.I0(\cathodes[6]_INST_0_i_43_n_0 ),
        .I1(\cathodes[6]_INST_0_i_73_n_0 ),
        .I2(\cathodes[6]_INST_0_i_74_n_0 ),
        .I3(\cathodes[6]_INST_0_i_75_n_0 ),
        .I4(\cathodes[6]_INST_0_i_76_n_0 ),
        .O(\cathodes[6]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \cathodes[6]_INST_0_i_51 
       (.I0(\cathodes[6]_INST_0_i_86_n_0 ),
        .I1(num[2]),
        .I2(num[15]),
        .I3(converted_num0[2]),
        .O(\cathodes[6]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hE2FF1D00)) 
    \cathodes[6]_INST_0_i_52 
       (.I0(num[2]),
        .I1(num[15]),
        .I2(converted_num0[2]),
        .I3(\cathodes[6]_INST_0_i_86_n_0 ),
        .I4(\cathodes[6]_INST_0_i_82_n_0 ),
        .O(\cathodes[6]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h001DFFE2001D0000)) 
    \cathodes[6]_INST_0_i_53 
       (.I0(num[2]),
        .I1(num[15]),
        .I2(converted_num0[2]),
        .I3(\cathodes[6]_INST_0_i_82_n_0 ),
        .I4(\cathodes[6]_INST_0_i_83_n_0 ),
        .I5(\cathodes[6]_INST_0_i_84_n_0 ),
        .O(\cathodes[6]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h11EA)) 
    \cathodes[6]_INST_0_i_54 
       (.I0(\cathodes[6]_INST_0_i_76_n_0 ),
        .I1(\cathodes[6]_INST_0_i_75_n_0 ),
        .I2(\cathodes[6]_INST_0_i_74_n_0 ),
        .I3(\cathodes[6]_INST_0_i_73_n_0 ),
        .O(\cathodes[6]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h3266318C)) 
    \cathodes[6]_INST_0_i_55 
       (.I0(converted_num[1]),
        .I1(converted_num[2]),
        .I2(\cathodes[6]_INST_0_i_82_n_0 ),
        .I3(\cathodes[6]_INST_0_i_83_n_0 ),
        .I4(\cathodes[6]_INST_0_i_84_n_0 ),
        .O(\cathodes[6]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h807F83E0)) 
    \cathodes[6]_INST_0_i_56 
       (.I0(\cathodes[6]_INST_0_i_43_n_0 ),
        .I1(\cathodes[6]_INST_0_i_73_n_0 ),
        .I2(\cathodes[6]_INST_0_i_74_n_0 ),
        .I3(\cathodes[6]_INST_0_i_75_n_0 ),
        .I4(\cathodes[6]_INST_0_i_76_n_0 ),
        .O(\cathodes[6]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_57 
       (.I0(\cathodes[6]_INST_0_i_87_n_0 ),
        .I1(\cathodes[6]_INST_0_i_88_n_0 ),
        .I2(\cathodes[6]_INST_0_i_89_n_0 ),
        .I3(\cathodes[6]_INST_0_i_90_n_0 ),
        .I4(\cathodes[6]_INST_0_i_91_n_0 ),
        .I5(\cathodes[6]_INST_0_i_92_n_0 ),
        .O(\cathodes[6]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h807F83E0)) 
    \cathodes[6]_INST_0_i_58 
       (.I0(\cathodes[6]_INST_0_i_88_n_0 ),
        .I1(\cathodes[6]_INST_0_i_89_n_0 ),
        .I2(\cathodes[6]_INST_0_i_90_n_0 ),
        .I3(\cathodes[6]_INST_0_i_91_n_0 ),
        .I4(\cathodes[6]_INST_0_i_92_n_0 ),
        .O(\cathodes[6]_INST_0_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \cathodes[6]_INST_0_i_59 
       (.I0(\cathodes[6]_INST_0_i_89_n_0 ),
        .I1(\cathodes[6]_INST_0_i_90_n_0 ),
        .I2(\cathodes[6]_INST_0_i_91_n_0 ),
        .I3(\cathodes[6]_INST_0_i_92_n_0 ),
        .O(\cathodes[6]_INST_0_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h11EA)) 
    \cathodes[6]_INST_0_i_60 
       (.I0(\cathodes[6]_INST_0_i_71_n_0 ),
        .I1(\cathodes[6]_INST_0_i_70_n_0 ),
        .I2(\cathodes[6]_INST_0_i_69_n_0 ),
        .I3(\cathodes[6]_INST_0_i_68_n_0 ),
        .O(\cathodes[6]_INST_0_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h998C)) 
    \cathodes[6]_INST_0_i_61 
       (.I0(\cathodes[6]_INST_0_i_68_n_0 ),
        .I1(\cathodes[6]_INST_0_i_69_n_0 ),
        .I2(\cathodes[6]_INST_0_i_70_n_0 ),
        .I3(\cathodes[6]_INST_0_i_71_n_0 ),
        .O(\cathodes[6]_INST_0_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1E10)) 
    \cathodes[6]_INST_0_i_62 
       (.I0(\cathodes[6]_INST_0_i_68_n_0 ),
        .I1(\cathodes[6]_INST_0_i_69_n_0 ),
        .I2(\cathodes[6]_INST_0_i_70_n_0 ),
        .I3(\cathodes[6]_INST_0_i_71_n_0 ),
        .O(\cathodes[6]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h001DFFFFFFE20000)) 
    \cathodes[6]_INST_0_i_63 
       (.I0(num[9]),
        .I1(num[15]),
        .I2(converted_num0[9]),
        .I3(\cathodes[6]_INST_0_i_94_n_0 ),
        .I4(\cathodes[6]_INST_0_i_95_n_0 ),
        .I5(\cathodes[6]_INST_0_i_96_n_0 ),
        .O(\cathodes[6]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_64 
       (.I0(converted_num[10]),
        .I1(converted_num[11]),
        .I2(converted_num[12]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\cathodes[6]_INST_0_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA080)) 
    \cathodes[6]_INST_0_i_65 
       (.I0(converted_num0[15]),
        .I1(converted_num0[13]),
        .I2(num[15]),
        .I3(converted_num0[14]),
        .O(\cathodes[6]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h3888E3330EEEF000)) 
    \cathodes[6]_INST_0_i_66 
       (.I0(converted_num[11]),
        .I1(converted_num[12]),
        .I2(converted_num0[15]),
        .I3(num[15]),
        .I4(converted_num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFB2AA0C000C00)) 
    \cathodes[6]_INST_0_i_67 
       (.I0(converted_num[12]),
        .I1(converted_num0[15]),
        .I2(converted_num0[13]),
        .I3(num[15]),
        .I4(num[13]),
        .I5(converted_num[14]),
        .O(\cathodes[6]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_68 
       (.I0(\cathodes[6]_INST_0_i_106_n_0 ),
        .I1(\cathodes[6]_INST_0_i_72_n_0 ),
        .I2(\cathodes[6]_INST_0_i_63_n_0 ),
        .I3(\cathodes[6]_INST_0_i_107_n_0 ),
        .I4(\cathodes[6]_INST_0_i_108_n_0 ),
        .I5(\cathodes[6]_INST_0_i_109_n_0 ),
        .O(\cathodes[6]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h2DC201D609D240D6)) 
    \cathodes[6]_INST_0_i_69 
       (.I0(\cathodes[6]_INST_0_i_67_n_0 ),
        .I1(\cathodes[6]_INST_0_i_66_n_0 ),
        .I2(\cathodes[6]_INST_0_i_65_n_0 ),
        .I3(\cathodes[6]_INST_0_i_64_n_0 ),
        .I4(\cathodes[6]_INST_0_i_63_n_0 ),
        .I5(\cathodes[6]_INST_0_i_72_n_0 ),
        .O(\cathodes[6]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hF000000F1FFCF800)) 
    \cathodes[6]_INST_0_i_70 
       (.I0(\cathodes[6]_INST_0_i_72_n_0 ),
        .I1(\cathodes[6]_INST_0_i_63_n_0 ),
        .I2(\cathodes[6]_INST_0_i_64_n_0 ),
        .I3(\cathodes[6]_INST_0_i_65_n_0 ),
        .I4(\cathodes[6]_INST_0_i_66_n_0 ),
        .I5(\cathodes[6]_INST_0_i_67_n_0 ),
        .O(\cathodes[6]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h000103F0E0000000)) 
    \cathodes[6]_INST_0_i_71 
       (.I0(\cathodes[6]_INST_0_i_72_n_0 ),
        .I1(\cathodes[6]_INST_0_i_63_n_0 ),
        .I2(\cathodes[6]_INST_0_i_64_n_0 ),
        .I3(\cathodes[6]_INST_0_i_65_n_0 ),
        .I4(\cathodes[6]_INST_0_i_66_n_0 ),
        .I5(\cathodes[6]_INST_0_i_67_n_0 ),
        .O(\cathodes[6]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_72 
       (.I0(converted_num[8]),
        .I1(converted_num[9]),
        .I2(converted_num[10]),
        .I3(\cathodes[6]_INST_0_i_112_n_0 ),
        .I4(\cathodes[6]_INST_0_i_113_n_0 ),
        .I5(\cathodes[6]_INST_0_i_114_n_0 ),
        .O(\cathodes[6]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h001DFFFFFFE20000)) 
    \cathodes[6]_INST_0_i_73 
       (.I0(num[3]),
        .I1(num[15]),
        .I2(converted_num0[3]),
        .I3(\cathodes[6]_INST_0_i_79_n_0 ),
        .I4(\cathodes[6]_INST_0_i_80_n_0 ),
        .I5(\cathodes[6]_INST_0_i_81_n_0 ),
        .O(\cathodes[6]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hEC111C0B03E4E234)) 
    \cathodes[6]_INST_0_i_74 
       (.I0(\cathodes[6]_INST_0_i_92_n_0 ),
        .I1(\cathodes[6]_INST_0_i_91_n_0 ),
        .I2(\cathodes[6]_INST_0_i_90_n_0 ),
        .I3(\cathodes[6]_INST_0_i_89_n_0 ),
        .I4(\cathodes[6]_INST_0_i_88_n_0 ),
        .I5(\cathodes[6]_INST_0_i_87_n_0 ),
        .O(\cathodes[6]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h18C3266318C6318C)) 
    \cathodes[6]_INST_0_i_75 
       (.I0(\cathodes[6]_INST_0_i_87_n_0 ),
        .I1(\cathodes[6]_INST_0_i_88_n_0 ),
        .I2(\cathodes[6]_INST_0_i_89_n_0 ),
        .I3(\cathodes[6]_INST_0_i_90_n_0 ),
        .I4(\cathodes[6]_INST_0_i_91_n_0 ),
        .I5(\cathodes[6]_INST_0_i_92_n_0 ),
        .O(\cathodes[6]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h2104078421084210)) 
    \cathodes[6]_INST_0_i_76 
       (.I0(\cathodes[6]_INST_0_i_87_n_0 ),
        .I1(\cathodes[6]_INST_0_i_88_n_0 ),
        .I2(\cathodes[6]_INST_0_i_89_n_0 ),
        .I3(\cathodes[6]_INST_0_i_90_n_0 ),
        .I4(\cathodes[6]_INST_0_i_91_n_0 ),
        .I5(\cathodes[6]_INST_0_i_92_n_0 ),
        .O(\cathodes[6]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_77 
       (.I0(converted_num0[2]),
        .I1(num[15]),
        .I2(num[2]),
        .O(converted_num[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_78 
       (.I0(converted_num0[3]),
        .I1(num[15]),
        .I2(num[3]),
        .O(converted_num[3]));
  LUT6 #(
    .INIT(64'hEC111C0B03E4E234)) 
    \cathodes[6]_INST_0_i_79 
       (.I0(\cathodes[6]_INST_0_i_115_n_0 ),
        .I1(\cathodes[6]_INST_0_i_116_n_0 ),
        .I2(\cathodes[6]_INST_0_i_117_n_0 ),
        .I3(converted_num[6]),
        .I4(converted_num[5]),
        .I5(converted_num[4]),
        .O(\cathodes[6]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h18C3266318C6318C)) 
    \cathodes[6]_INST_0_i_80 
       (.I0(converted_num[4]),
        .I1(converted_num[5]),
        .I2(converted_num[6]),
        .I3(\cathodes[6]_INST_0_i_117_n_0 ),
        .I4(\cathodes[6]_INST_0_i_116_n_0 ),
        .I5(\cathodes[6]_INST_0_i_115_n_0 ),
        .O(\cathodes[6]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h2104078421084210)) 
    \cathodes[6]_INST_0_i_81 
       (.I0(converted_num[4]),
        .I1(converted_num[5]),
        .I2(converted_num[6]),
        .I3(\cathodes[6]_INST_0_i_117_n_0 ),
        .I4(\cathodes[6]_INST_0_i_116_n_0 ),
        .I5(\cathodes[6]_INST_0_i_115_n_0 ),
        .O(\cathodes[6]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h111111EAEAEA11EA)) 
    \cathodes[6]_INST_0_i_82 
       (.I0(\cathodes[6]_INST_0_i_81_n_0 ),
        .I1(\cathodes[6]_INST_0_i_80_n_0 ),
        .I2(\cathodes[6]_INST_0_i_79_n_0 ),
        .I3(num[3]),
        .I4(num[15]),
        .I5(converted_num0[3]),
        .O(\cathodes[6]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hE21DE21DE200FF00)) 
    \cathodes[6]_INST_0_i_83 
       (.I0(num[3]),
        .I1(num[15]),
        .I2(converted_num0[3]),
        .I3(\cathodes[6]_INST_0_i_79_n_0 ),
        .I4(\cathodes[6]_INST_0_i_80_n_0 ),
        .I5(\cathodes[6]_INST_0_i_81_n_0 ),
        .O(\cathodes[6]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h001DFFE2001D0000)) 
    \cathodes[6]_INST_0_i_84 
       (.I0(num[3]),
        .I1(num[15]),
        .I2(converted_num0[3]),
        .I3(\cathodes[6]_INST_0_i_79_n_0 ),
        .I4(\cathodes[6]_INST_0_i_80_n_0 ),
        .I5(\cathodes[6]_INST_0_i_81_n_0 ),
        .O(\cathodes[6]_INST_0_i_84_n_0 ));
  CARRY4 \cathodes[6]_INST_0_i_85 
       (.CI(1'b0),
        .CO({\cathodes[6]_INST_0_i_85_n_0 ,\cathodes[6]_INST_0_i_85_n_1 ,\cathodes[6]_INST_0_i_85_n_2 ,\cathodes[6]_INST_0_i_85_n_3 }),
        .CYINIT(\cathodes[6]_INST_0_i_121_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(converted_num0[4:1]),
        .S({\cathodes[6]_INST_0_i_122_n_0 ,\cathodes[6]_INST_0_i_123_n_0 ,\cathodes[6]_INST_0_i_124_n_0 ,\cathodes[6]_INST_0_i_125_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h83FF83E0)) 
    \cathodes[6]_INST_0_i_86 
       (.I0(converted_num[2]),
        .I1(converted_num[3]),
        .I2(\cathodes[6]_INST_0_i_79_n_0 ),
        .I3(\cathodes[6]_INST_0_i_80_n_0 ),
        .I4(\cathodes[6]_INST_0_i_81_n_0 ),
        .O(\cathodes[6]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h3E0807F83E0F83E0)) 
    \cathodes[6]_INST_0_i_87 
       (.I0(converted_num[4]),
        .I1(converted_num[5]),
        .I2(converted_num[6]),
        .I3(\cathodes[6]_INST_0_i_117_n_0 ),
        .I4(\cathodes[6]_INST_0_i_116_n_0 ),
        .I5(\cathodes[6]_INST_0_i_115_n_0 ),
        .O(\cathodes[6]_INST_0_i_87_n_0 ));
  LUT5 #(
    .INIT(32'h807F83E0)) 
    \cathodes[6]_INST_0_i_88 
       (.I0(converted_num[5]),
        .I1(converted_num[6]),
        .I2(\cathodes[6]_INST_0_i_117_n_0 ),
        .I3(\cathodes[6]_INST_0_i_116_n_0 ),
        .I4(\cathodes[6]_INST_0_i_115_n_0 ),
        .O(\cathodes[6]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h001DFFFFFFE20000)) 
    \cathodes[6]_INST_0_i_89 
       (.I0(num[6]),
        .I1(num[15]),
        .I2(converted_num0[6]),
        .I3(\cathodes[6]_INST_0_i_117_n_0 ),
        .I4(\cathodes[6]_INST_0_i_116_n_0 ),
        .I5(\cathodes[6]_INST_0_i_115_n_0 ),
        .O(\cathodes[6]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hEC111C0B03E4E234)) 
    \cathodes[6]_INST_0_i_90 
       (.I0(\cathodes[6]_INST_0_i_109_n_0 ),
        .I1(\cathodes[6]_INST_0_i_108_n_0 ),
        .I2(\cathodes[6]_INST_0_i_107_n_0 ),
        .I3(\cathodes[6]_INST_0_i_63_n_0 ),
        .I4(\cathodes[6]_INST_0_i_72_n_0 ),
        .I5(\cathodes[6]_INST_0_i_106_n_0 ),
        .O(\cathodes[6]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h18C3266318C6318C)) 
    \cathodes[6]_INST_0_i_91 
       (.I0(\cathodes[6]_INST_0_i_106_n_0 ),
        .I1(\cathodes[6]_INST_0_i_72_n_0 ),
        .I2(\cathodes[6]_INST_0_i_63_n_0 ),
        .I3(\cathodes[6]_INST_0_i_107_n_0 ),
        .I4(\cathodes[6]_INST_0_i_108_n_0 ),
        .I5(\cathodes[6]_INST_0_i_109_n_0 ),
        .O(\cathodes[6]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h2104078421084210)) 
    \cathodes[6]_INST_0_i_92 
       (.I0(\cathodes[6]_INST_0_i_106_n_0 ),
        .I1(\cathodes[6]_INST_0_i_72_n_0 ),
        .I2(\cathodes[6]_INST_0_i_63_n_0 ),
        .I3(\cathodes[6]_INST_0_i_107_n_0 ),
        .I4(\cathodes[6]_INST_0_i_108_n_0 ),
        .I5(\cathodes[6]_INST_0_i_109_n_0 ),
        .O(\cathodes[6]_INST_0_i_92_n_0 ));
  CARRY4 \cathodes[6]_INST_0_i_93 
       (.CI(\cathodes[6]_INST_0_i_126_n_0 ),
        .CO({\cathodes[6]_INST_0_i_93_n_0 ,\cathodes[6]_INST_0_i_93_n_1 ,\cathodes[6]_INST_0_i_93_n_2 ,\cathodes[6]_INST_0_i_93_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(converted_num0[12:9]),
        .S({\cathodes[6]_INST_0_i_127_n_0 ,\cathodes[6]_INST_0_i_128_n_0 ,\cathodes[6]_INST_0_i_129_n_0 ,\cathodes[6]_INST_0_i_130_n_0 }));
  LUT6 #(
    .INIT(64'hEC111C0B03E4E234)) 
    \cathodes[6]_INST_0_i_94 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(converted_num[12]),
        .I4(converted_num[11]),
        .I5(converted_num[10]),
        .O(\cathodes[6]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h18C3266318C6318C)) 
    \cathodes[6]_INST_0_i_95 
       (.I0(converted_num[10]),
        .I1(converted_num[11]),
        .I2(converted_num[12]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\cathodes[6]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h2104078421084210)) 
    \cathodes[6]_INST_0_i_96 
       (.I0(converted_num[10]),
        .I1(converted_num[11]),
        .I2(converted_num[12]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\cathodes[6]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_97 
       (.I0(converted_num0[10]),
        .I1(num[15]),
        .I2(num[10]),
        .O(converted_num[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_98 
       (.I0(converted_num0[11]),
        .I1(num[15]),
        .I2(num[11]),
        .O(converted_num[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cathodes[6]_INST_0_i_99 
       (.I0(converted_num0[12]),
        .I1(num[15]),
        .I2(num[12]),
        .O(converted_num[12]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hex_display_controller inst
       (.anodes(\^anodes ),
        .cathodes(cathodes),
        .clk(clk),
        .converted_num(converted_num[1]),
        .data3(data3),
        .num({num[15],num[0]}),
        .\num[13] (\cathodes[6]_INST_0_i_29_n_0 ),
        .\num[13]_0 (\cathodes[6]_INST_0_i_43_n_0 ),
        .\num[13]_1 (\cathodes[6]_INST_0_i_42_n_0 ),
        .\num[13]_10 (\cathodes[6]_INST_0_i_50_n_0 ),
        .\num[13]_11 (\cathodes[6]_INST_0_i_49_n_0 ),
        .\num[13]_12 (\cathodes[6]_INST_0_i_47_n_0 ),
        .\num[13]_13 (\cathodes[6]_INST_0_i_46_n_0 ),
        .\num[13]_14 (\cathodes[6]_INST_0_i_56_n_0 ),
        .\num[13]_2 (\cathodes[6]_INST_0_i_54_n_0 ),
        .\num[13]_3 (\cathodes[6]_INST_0_i_55_n_0 ),
        .\num[13]_4 (\cathodes[6]_INST_0_i_21_n_0 ),
        .\num[13]_5 (\cathodes[6]_INST_0_i_44_n_0 ),
        .\num[13]_6 (\cathodes[6]_INST_0_i_51_n_0 ),
        .\num[13]_7 (\cathodes[6]_INST_0_i_52_n_0 ),
        .\num[13]_8 (\cathodes[6]_INST_0_i_53_n_0 ),
        .\num[13]_9 (\cathodes[6]_INST_0_i_26_n_0 ),
        .\num[1]_0 (\cathodes[6]_INST_0_i_16_n_0 ),
        .\num[1]_1 (\cathodes[6]_INST_0_i_48_n_0 ),
        .\num[1]_2 (\cathodes[6]_INST_0_i_23_n_0 ),
        .\num[1]_3 (\cathodes[6]_INST_0_i_24_n_0 ),
        .\num[1]_4 (\cathodes[6]_INST_0_i_18_n_0 ),
        .\num[1]_5 (\cathodes[6]_INST_0_i_19_n_0 ),
        .num_1_sp_1(\cathodes[6]_INST_0_i_14_n_0 ),
        .rst(rst),
        .shift1(shift1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider
   (\count_reg[0] ,
    rst,
    clk);
  output \count_reg[0] ;
  input rst;
  input clk;

  wire clk;
  wire \count[2]_i_3_n_0 ;
  wire \count[2]_i_4_n_0 ;
  wire \count[2]_i_5_n_0 ;
  wire \count_reg[0] ;
  wire [15:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[15]_i_2_n_0 ;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter[15]_i_5_n_0 ;
  wire [15:1]counter_0;
  wire rst;
  wire [3:2]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFEFEFEFEEEEEEEE)) 
    \count[2]_i_2 
       (.I0(counter[14]),
        .I1(counter[15]),
        .I2(\count[2]_i_3_n_0 ),
        .I3(\count[2]_i_4_n_0 ),
        .I4(\count[2]_i_5_n_0 ),
        .I5(counter[13]),
        .O(\count_reg[0] ));
  LUT5 #(
    .INIT(32'h000037FF)) 
    \count[2]_i_3 
       (.I0(counter[9]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[10]),
        .I4(counter[12]),
        .O(\count[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8000000)) 
    \count[2]_i_4 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[4]),
        .I3(counter[6]),
        .I4(counter[7]),
        .O(\count[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[2]_i_5 
       (.I0(counter[5]),
        .I1(counter[10]),
        .I2(counter[11]),
        .O(\count[2]_i_5_n_0 ));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3:2],counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__2_O_UNCONNECTED[3],counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({1'b0,counter[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\counter[15]_i_2_n_0 ),
        .I1(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(counter0_carry__1_n_6),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(counter0_carry__1_n_5),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(counter0_carry__1_n_4),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(counter0_carry__2_n_7),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(counter0_carry__2_n_6),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(counter0_carry__2_n_5),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \counter[15]_i_2 
       (.I0(\counter[15]_i_3_n_0 ),
        .I1(counter[4]),
        .I2(counter[14]),
        .I3(counter[12]),
        .I4(counter[0]),
        .I5(\counter[15]_i_4_n_0 ),
        .O(\counter[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[15]_i_3 
       (.I0(counter[1]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[2]),
        .O(\counter[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \counter[15]_i_4 
       (.I0(counter[15]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(\counter[15]_i_5_n_0 ),
        .O(\counter[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[15]_i_5 
       (.I0(counter[9]),
        .I1(counter[3]),
        .I2(counter[13]),
        .I3(counter[10]),
        .O(\counter[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(counter0_carry_n_7),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(counter0_carry_n_6),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(counter0_carry_n_5),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(counter0_carry_n_4),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(counter0_carry__0_n_7),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(counter0_carry__0_n_6),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(counter0_carry__0_n_5),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(counter0_carry__0_n_4),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(counter0_carry__1_n_7),
        .I1(\counter[15]_i_2_n_0 ),
        .O(counter_0[9]));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(rst));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(rst));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(rst));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(rst));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(rst));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(rst));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(rst));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(rst));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(rst));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(rst));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(rst));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(rst));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(rst));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(rst));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(rst));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (cathodes,
    anodes,
    num,
    \num[13] ,
    data3,
    \num[13]_0 ,
    \num[13]_1 ,
    \num[13]_2 ,
    \num[13]_3 ,
    \num[13]_4 ,
    \num[13]_5 ,
    converted_num,
    num_1_sp_1,
    shift1,
    \num[1]_0 ,
    \num[13]_6 ,
    \num[13]_7 ,
    \num[13]_8 ,
    \num[13]_9 ,
    \num[13]_10 ,
    \num[13]_11 ,
    \num[1]_1 ,
    \num[13]_12 ,
    \num[13]_13 ,
    \num[13]_14 ,
    \num[1]_2 ,
    \num[1]_3 ,
    \num[1]_4 ,
    \num[1]_5 ,
    rst,
    \counter_reg[14] );
  output [6:0]cathodes;
  output [5:0]anodes;
  input [1:0]num;
  input \num[13] ;
  input [2:0]data3;
  input \num[13]_0 ;
  input \num[13]_1 ;
  input \num[13]_2 ;
  input \num[13]_3 ;
  input \num[13]_4 ;
  input \num[13]_5 ;
  input [0:0]converted_num;
  input num_1_sp_1;
  input shift1;
  input \num[1]_0 ;
  input \num[13]_6 ;
  input \num[13]_7 ;
  input \num[13]_8 ;
  input \num[13]_9 ;
  input \num[13]_10 ;
  input \num[13]_11 ;
  input \num[1]_1 ;
  input \num[13]_12 ;
  input \num[13]_13 ;
  input \num[13]_14 ;
  input \num[1]_2 ;
  input \num[1]_3 ;
  input \num[1]_4 ;
  input \num[1]_5 ;
  input rst;
  input \counter_reg[14] ;

  wire [5:0]anodes;
  wire [6:0]cathodes;
  wire \cathodes[6]_INST_0_i_10_n_0 ;
  wire \cathodes[6]_INST_0_i_11_n_0 ;
  wire \cathodes[6]_INST_0_i_12_n_0 ;
  wire \cathodes[6]_INST_0_i_13_n_0 ;
  wire \cathodes[6]_INST_0_i_17_n_0 ;
  wire \cathodes[6]_INST_0_i_20_n_0 ;
  wire \cathodes[6]_INST_0_i_25_n_0 ;
  wire \cathodes[6]_INST_0_i_28_n_0 ;
  wire \cathodes[6]_INST_0_i_31_n_0 ;
  wire \cathodes[6]_INST_0_i_32_n_0 ;
  wire \cathodes[6]_INST_0_i_6_n_0 ;
  wire \cathodes[6]_INST_0_i_7_n_0 ;
  wire \cathodes[6]_INST_0_i_8_n_0 ;
  wire \cathodes[6]_INST_0_i_9_n_0 ;
  wire [0:0]converted_num;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \counter_reg[14] ;
  wire [2:0]data3;
  wire [1:0]num;
  wire \num[13] ;
  wire \num[13]_0 ;
  wire \num[13]_1 ;
  wire \num[13]_10 ;
  wire \num[13]_11 ;
  wire \num[13]_12 ;
  wire \num[13]_13 ;
  wire \num[13]_14 ;
  wire \num[13]_2 ;
  wire \num[13]_3 ;
  wire \num[13]_4 ;
  wire \num[13]_5 ;
  wire \num[13]_6 ;
  wire \num[13]_7 ;
  wire \num[13]_8 ;
  wire \num[13]_9 ;
  wire \num[1]_0 ;
  wire \num[1]_1 ;
  wire \num[1]_2 ;
  wire \num[1]_3 ;
  wire \num[1]_4 ;
  wire \num[1]_5 ;
  wire num_1_sn_1;
  wire rst;
  wire [2:0]sel;
  wire [4:4]sel0;
  wire shift1;
  wire [3:0]\umux_digit/out__29 ;

  assign num_1_sn_1 = num_1_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \anodes[0]_INST_0 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[0]),
        .O(anodes[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anodes[1]_INST_0 
       (.I0(sel[0]),
        .I1(sel[2]),
        .I2(sel[1]),
        .O(anodes[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anodes[2]_INST_0 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[0]),
        .O(anodes[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \anodes[3]_INST_0 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[1]),
        .O(anodes[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anodes[4]_INST_0 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[1]),
        .O(anodes[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \anodes[5]_INST_0 
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(sel[2]),
        .O(anodes[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h10010401)) 
    \cathodes[0]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [3]),
        .I2(\umux_digit/out__29 [1]),
        .I3(\umux_digit/out__29 [2]),
        .I4(\umux_digit/out__29 [0]),
        .O(cathodes[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAFABEBAA)) 
    \cathodes[1]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [2]),
        .I2(\umux_digit/out__29 [3]),
        .I3(\umux_digit/out__29 [0]),
        .I4(\umux_digit/out__29 [1]),
        .O(cathodes[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBBAABFBA)) 
    \cathodes[2]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [3]),
        .I2(\umux_digit/out__29 [2]),
        .I3(\umux_digit/out__29 [0]),
        .I4(\umux_digit/out__29 [1]),
        .O(cathodes[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFAABAEBA)) 
    \cathodes[3]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [3]),
        .I2(\umux_digit/out__29 [2]),
        .I3(\umux_digit/out__29 [1]),
        .I4(\umux_digit/out__29 [0]),
        .O(cathodes[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFABAABAA)) 
    \cathodes[4]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [0]),
        .I2(\umux_digit/out__29 [3]),
        .I3(\umux_digit/out__29 [1]),
        .I4(\umux_digit/out__29 [2]),
        .O(cathodes[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEBEAFEAA)) 
    \cathodes[5]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [1]),
        .I2(\umux_digit/out__29 [3]),
        .I3(\umux_digit/out__29 [2]),
        .I4(\umux_digit/out__29 [0]),
        .O(cathodes[5]));
  LUT5 #(
    .INIT(32'hBAEBABAA)) 
    \cathodes[6]_INST_0 
       (.I0(sel0),
        .I1(\umux_digit/out__29 [1]),
        .I2(\umux_digit/out__29 [3]),
        .I3(\umux_digit/out__29 [2]),
        .I4(\umux_digit/out__29 [0]),
        .O(cathodes[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cathodes[6]_INST_0_i_1 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(num[1]),
        .I3(sel[1]),
        .O(sel0));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \cathodes[6]_INST_0_i_10 
       (.I0(sel[2]),
        .I1(\cathodes[6]_INST_0_i_25_n_0 ),
        .I2(sel[1]),
        .I3(\num[13]_9 ),
        .I4(sel[0]),
        .I5(data3[2]),
        .O(\cathodes[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6A006A6A00000000)) 
    \cathodes[6]_INST_0_i_11 
       (.I0(\num[1]_3 ),
        .I1(shift1),
        .I2(\num[1]_0 ),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(\cathodes[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \cathodes[6]_INST_0_i_12 
       (.I0(sel[2]),
        .I1(\cathodes[6]_INST_0_i_28_n_0 ),
        .I2(sel[1]),
        .I3(\num[13] ),
        .I4(sel[0]),
        .I5(data3[1]),
        .O(\cathodes[6]_INST_0_i_12_n_0 ));
  MUXF7 \cathodes[6]_INST_0_i_13 
       (.I0(\cathodes[6]_INST_0_i_31_n_0 ),
        .I1(\cathodes[6]_INST_0_i_32_n_0 ),
        .O(\cathodes[6]_INST_0_i_13_n_0 ),
        .S(sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \cathodes[6]_INST_0_i_17 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[1]),
        .O(\cathodes[6]_INST_0_i_17_n_0 ));
  MUXF7 \cathodes[6]_INST_0_i_2 
       (.I0(\cathodes[6]_INST_0_i_7_n_0 ),
        .I1(\cathodes[6]_INST_0_i_8_n_0 ),
        .O(\umux_digit/out__29 [1]),
        .S(\cathodes[6]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \cathodes[6]_INST_0_i_20 
       (.I0(\num[13]_1 ),
        .I1(\num[13]_0 ),
        .I2(sel[0]),
        .I3(\num[13]_5 ),
        .I4(converted_num),
        .O(\cathodes[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBB8888B8888)) 
    \cathodes[6]_INST_0_i_25 
       (.I0(\num[13]_10 ),
        .I1(sel[0]),
        .I2(converted_num),
        .I3(\num[13]_6 ),
        .I4(\num[13]_7 ),
        .I5(\num[13]_8 ),
        .O(\cathodes[6]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB4FFB400)) 
    \cathodes[6]_INST_0_i_28 
       (.I0(\num[13]_0 ),
        .I1(\num[13]_1 ),
        .I2(\num[13]_2 ),
        .I3(sel[0]),
        .I4(\num[13]_3 ),
        .O(\cathodes[6]_INST_0_i_28_n_0 ));
  MUXF7 \cathodes[6]_INST_0_i_3 
       (.I0(\cathodes[6]_INST_0_i_9_n_0 ),
        .I1(\cathodes[6]_INST_0_i_10_n_0 ),
        .O(\umux_digit/out__29 [3]),
        .S(\cathodes[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \cathodes[6]_INST_0_i_31 
       (.I0(converted_num),
        .I1(\num[13]_6 ),
        .I2(\num[13]_7 ),
        .I3(\num[13]_8 ),
        .I4(sel[0]),
        .I5(num[0]),
        .O(\cathodes[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \cathodes[6]_INST_0_i_32 
       (.I0(\num[13]_11 ),
        .I1(\num[1]_1 ),
        .I2(\num[13]_12 ),
        .I3(\num[13]_13 ),
        .I4(sel[0]),
        .I5(\num[13]_14 ),
        .O(\cathodes[6]_INST_0_i_32_n_0 ));
  MUXF7 \cathodes[6]_INST_0_i_4 
       (.I0(\cathodes[6]_INST_0_i_11_n_0 ),
        .I1(\cathodes[6]_INST_0_i_12_n_0 ),
        .O(\umux_digit/out__29 [2]),
        .S(\cathodes[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888888803303030)) 
    \cathodes[6]_INST_0_i_5 
       (.I0(\cathodes[6]_INST_0_i_13_n_0 ),
        .I1(\cathodes[6]_INST_0_i_6_n_0 ),
        .I2(num_1_sn_1),
        .I3(shift1),
        .I4(\num[1]_0 ),
        .I5(\cathodes[6]_INST_0_i_17_n_0 ),
        .O(\umux_digit/out__29 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    \cathodes[6]_INST_0_i_6 
       (.I0(sel[1]),
        .I1(sel[2]),
        .O(\cathodes[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6A006A6A00000000)) 
    \cathodes[6]_INST_0_i_7 
       (.I0(\num[1]_4 ),
        .I1(shift1),
        .I2(\num[1]_5 ),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(\cathodes[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \cathodes[6]_INST_0_i_8 
       (.I0(sel[2]),
        .I1(\cathodes[6]_INST_0_i_20_n_0 ),
        .I2(sel[1]),
        .I3(\num[13]_4 ),
        .I4(sel[0]),
        .I5(data3[0]),
        .O(\cathodes[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cathodes[6]_INST_0_i_9 
       (.I0(\num[1]_2 ),
        .I1(shift1),
        .I2(\num[1]_3 ),
        .I3(\num[1]_0 ),
        .I4(\cathodes[6]_INST_0_i_17_n_0 ),
        .O(\cathodes[6]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count[0]_i_1 
       (.I0(sel[0]),
        .I1(rst),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1A00)) 
    \count[1]_i_1 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[0]),
        .I3(rst),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2C00)) 
    \count[2]_i_1 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[0]),
        .I3(rst),
        .O(\count[2]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(\counter_reg[14] ),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(sel[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(\counter_reg[14] ),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(sel[1]),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(\counter_reg[14] ),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(sel[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hex_display_controller
   (cathodes,
    anodes,
    num,
    \num[13] ,
    data3,
    \num[13]_0 ,
    \num[13]_1 ,
    \num[13]_2 ,
    \num[13]_3 ,
    \num[13]_4 ,
    \num[13]_5 ,
    converted_num,
    num_1_sp_1,
    shift1,
    \num[1]_0 ,
    \num[13]_6 ,
    \num[13]_7 ,
    \num[13]_8 ,
    \num[13]_9 ,
    \num[13]_10 ,
    \num[13]_11 ,
    \num[1]_1 ,
    \num[13]_12 ,
    \num[13]_13 ,
    \num[13]_14 ,
    \num[1]_2 ,
    \num[1]_3 ,
    \num[1]_4 ,
    \num[1]_5 ,
    rst,
    clk);
  output [6:0]cathodes;
  output [5:0]anodes;
  input [1:0]num;
  input \num[13] ;
  input [2:0]data3;
  input \num[13]_0 ;
  input \num[13]_1 ;
  input \num[13]_2 ;
  input \num[13]_3 ;
  input \num[13]_4 ;
  input \num[13]_5 ;
  input [0:0]converted_num;
  input num_1_sp_1;
  input shift1;
  input \num[1]_0 ;
  input \num[13]_6 ;
  input \num[13]_7 ;
  input \num[13]_8 ;
  input \num[13]_9 ;
  input \num[13]_10 ;
  input \num[13]_11 ;
  input \num[1]_1 ;
  input \num[13]_12 ;
  input \num[13]_13 ;
  input \num[13]_14 ;
  input \num[1]_2 ;
  input \num[1]_3 ;
  input \num[1]_4 ;
  input \num[1]_5 ;
  input rst;
  input clk;

  wire [5:0]anodes;
  wire [6:0]cathodes;
  wire clk;
  wire [0:0]converted_num;
  wire [2:0]data3;
  wire [1:0]num;
  wire \num[13] ;
  wire \num[13]_0 ;
  wire \num[13]_1 ;
  wire \num[13]_10 ;
  wire \num[13]_11 ;
  wire \num[13]_12 ;
  wire \num[13]_13 ;
  wire \num[13]_14 ;
  wire \num[13]_2 ;
  wire \num[13]_3 ;
  wire \num[13]_4 ;
  wire \num[13]_5 ;
  wire \num[13]_6 ;
  wire \num[13]_7 ;
  wire \num[13]_8 ;
  wire \num[13]_9 ;
  wire \num[1]_0 ;
  wire \num[1]_1 ;
  wire \num[1]_2 ;
  wire \num[1]_3 ;
  wire \num[1]_4 ;
  wire \num[1]_5 ;
  wire num_1_sn_1;
  wire rst;
  wire shift1;
  wire uclk_divider_n_0;

  assign num_1_sn_1 = num_1_sp_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider uclk_divider
       (.clk(clk),
        .\count_reg[0] (uclk_divider_n_0),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter ucounter
       (.anodes(anodes),
        .cathodes(cathodes),
        .converted_num(converted_num),
        .\counter_reg[14] (uclk_divider_n_0),
        .data3(data3),
        .num(num),
        .\num[13] (\num[13] ),
        .\num[13]_0 (\num[13]_0 ),
        .\num[13]_1 (\num[13]_1 ),
        .\num[13]_10 (\num[13]_10 ),
        .\num[13]_11 (\num[13]_11 ),
        .\num[13]_12 (\num[13]_12 ),
        .\num[13]_13 (\num[13]_13 ),
        .\num[13]_14 (\num[13]_14 ),
        .\num[13]_2 (\num[13]_2 ),
        .\num[13]_3 (\num[13]_3 ),
        .\num[13]_4 (\num[13]_4 ),
        .\num[13]_5 (\num[13]_5 ),
        .\num[13]_6 (\num[13]_6 ),
        .\num[13]_7 (\num[13]_7 ),
        .\num[13]_8 (\num[13]_8 ),
        .\num[13]_9 (\num[13]_9 ),
        .\num[1]_0 (\num[1]_0 ),
        .\num[1]_1 (\num[1]_1 ),
        .\num[1]_2 (\num[1]_2 ),
        .\num[1]_3 (\num[1]_3 ),
        .\num[1]_4 (\num[1]_4 ),
        .\num[1]_5 (\num[1]_5 ),
        .num_1_sp_1(num_1_sn_1),
        .rst(rst),
        .shift1(shift1));
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
