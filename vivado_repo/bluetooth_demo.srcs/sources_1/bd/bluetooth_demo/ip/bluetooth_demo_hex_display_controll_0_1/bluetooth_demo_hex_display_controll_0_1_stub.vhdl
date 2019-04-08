-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Mar 27 23:56:09 2019
-- Host        : Jason-Antec running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jason/Documents/University/Year_4/ECE532/Project/bluetooth_demo/bluetooth_demo.srcs/sources_1/bd/bluetooth_demo/ip/bluetooth_demo_hex_display_controll_0_1/bluetooth_demo_hex_display_controll_0_1_stub.vhdl
-- Design      : bluetooth_demo_hex_display_controll_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bluetooth_demo_hex_display_controll_0_1 is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    num : in STD_LOGIC_VECTOR ( 15 downto 0 );
    anodes : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cathodes : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp : out STD_LOGIC
  );

end bluetooth_demo_hex_display_controll_0_1;

architecture stub of bluetooth_demo_hex_display_controll_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,num[15:0],anodes[7:0],cathodes[6:0],dp";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hex_display_controller,Vivado 2018.1";
begin
end;
