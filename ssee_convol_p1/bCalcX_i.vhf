--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bCalcX_i.vhf
-- /___/   /\     Timestamp : 11/04/2024 13:27:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1_roto/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1_roto/bCalcX_i.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1_roto/bCalcX_i.sch
--Design Name: bCalcX_i
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_bCalcX_i -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_bCalcX_i is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_bCalcX_i;

architecture M8_1E_HXILINX_bCalcX_i_V of M8_1E_HXILINX_bCalcX_i is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_bCalcX_i_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcX_i is
   port ( ck         : in    std_logic; 
          dato_ent   : in    std_logic_vector (7 downto 0); 
          dato_nuevo : in    std_logic; 
          indice     : in    std_logic_vector (3 downto 0); 
          x_i        : out   std_logic_vector (7 downto 0));
end bCalcX_i;

architecture BEHAVIORAL of bCalcX_i is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal uno        : std_logic;
   signal XLXN_1     : std_logic_vector (7 downto 0);
   signal x_0        : std_logic_vector (7 downto 0);
   signal x_1        : std_logic_vector (7 downto 0);
   signal x_2        : std_logic_vector (7 downto 0);
   signal x_3        : std_logic_vector (7 downto 0);
   signal x_4        : std_logic_vector (7 downto 0);
   signal x_5        : std_logic_vector (7 downto 0);
   signal x_6        : std_logic_vector (7 downto 0);
   signal x_7        : std_logic_vector (7 downto 0);
   component M8_1E_HXILINX_bCalcX_i
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_9_0 : label is "XLXI_9_0_218";
   attribute HU_SET of XLXI_9_1 : label is "XLXI_9_1_217";
   attribute HU_SET of XLXI_9_2 : label is "XLXI_9_2_216";
   attribute HU_SET of XLXI_9_3 : label is "XLXI_9_3_215";
   attribute HU_SET of XLXI_9_4 : label is "XLXI_9_4_214";
   attribute HU_SET of XLXI_9_5 : label is "XLXI_9_5_213";
   attribute HU_SET of XLXI_9_6 : label is "XLXI_9_6_212";
   attribute HU_SET of XLXI_9_7 : label is "XLXI_9_7_211";
begin
   XLXI_9_0 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(0),
                D1=>x_1(0),
                D2=>x_2(0),
                D3=>x_3(0),
                D4=>x_4(0),
                D5=>x_5(0),
                D6=>x_6(0),
                D7=>x_7(0),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(0));
   
   XLXI_9_1 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(1),
                D1=>x_1(1),
                D2=>x_2(1),
                D3=>x_3(1),
                D4=>x_4(1),
                D5=>x_5(1),
                D6=>x_6(1),
                D7=>x_7(1),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(1));
   
   XLXI_9_2 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(2),
                D1=>x_1(2),
                D2=>x_2(2),
                D3=>x_3(2),
                D4=>x_4(2),
                D5=>x_5(2),
                D6=>x_6(2),
                D7=>x_7(2),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(2));
   
   XLXI_9_3 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(3),
                D1=>x_1(3),
                D2=>x_2(3),
                D3=>x_3(3),
                D4=>x_4(3),
                D5=>x_5(3),
                D6=>x_6(3),
                D7=>x_7(3),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(3));
   
   XLXI_9_4 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(4),
                D1=>x_1(4),
                D2=>x_2(4),
                D3=>x_3(4),
                D4=>x_4(4),
                D5=>x_5(4),
                D6=>x_6(4),
                D7=>x_7(4),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(4));
   
   XLXI_9_5 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(5),
                D1=>x_1(5),
                D2=>x_2(5),
                D3=>x_3(5),
                D4=>x_4(5),
                D5=>x_5(5),
                D6=>x_6(5),
                D7=>x_7(5),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(5));
   
   XLXI_9_6 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(6),
                D1=>x_1(6),
                D2=>x_2(6),
                D3=>x_3(6),
                D4=>x_4(6),
                D5=>x_5(6),
                D6=>x_6(6),
                D7=>x_7(6),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(6));
   
   XLXI_9_7 : M8_1E_HXILINX_bCalcX_i
      port map (D0=>x_0(7),
                D1=>x_1(7),
                D2=>x_2(7),
                D3=>x_3(7),
                D4=>x_4(7),
                D5=>x_5(7),
                D6=>x_6(7),
                D7=>x_7(7),
                E=>uno,
                S0=>indice(0),
                S1=>indice(1),
                S2=>indice(2),
                O=>XLXN_1(7));
   
   XLXI_10 : VCC
      port map (P=>uno);
   
   XLXI_11_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(0),
                Q=>x_0(0));
   
   XLXI_11_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(1),
                Q=>x_0(1));
   
   XLXI_11_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(2),
                Q=>x_0(2));
   
   XLXI_11_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(3),
                Q=>x_0(3));
   
   XLXI_11_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(4),
                Q=>x_0(4));
   
   XLXI_11_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(5),
                Q=>x_0(5));
   
   XLXI_11_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(6),
                Q=>x_0(6));
   
   XLXI_11_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(7),
                Q=>x_0(7));
   
   XLXI_15_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(0),
                Q=>x_1(0));
   
   XLXI_15_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(1),
                Q=>x_1(1));
   
   XLXI_15_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(2),
                Q=>x_1(2));
   
   XLXI_15_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(3),
                Q=>x_1(3));
   
   XLXI_15_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(4),
                Q=>x_1(4));
   
   XLXI_15_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(5),
                Q=>x_1(5));
   
   XLXI_15_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(6),
                Q=>x_1(6));
   
   XLXI_15_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(7),
                Q=>x_1(7));
   
   XLXI_16_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(0),
                Q=>x_2(0));
   
   XLXI_16_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(1),
                Q=>x_2(1));
   
   XLXI_16_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(2),
                Q=>x_2(2));
   
   XLXI_16_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(3),
                Q=>x_2(3));
   
   XLXI_16_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(4),
                Q=>x_2(4));
   
   XLXI_16_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(5),
                Q=>x_2(5));
   
   XLXI_16_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(6),
                Q=>x_2(6));
   
   XLXI_16_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(7),
                Q=>x_2(7));
   
   XLXI_17_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(0),
                Q=>x_3(0));
   
   XLXI_17_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(1),
                Q=>x_3(1));
   
   XLXI_17_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(2),
                Q=>x_3(2));
   
   XLXI_17_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(3),
                Q=>x_3(3));
   
   XLXI_17_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(4),
                Q=>x_3(4));
   
   XLXI_17_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(5),
                Q=>x_3(5));
   
   XLXI_17_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(6),
                Q=>x_3(6));
   
   XLXI_17_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(7),
                Q=>x_3(7));
   
   XLXI_18_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(0),
                Q=>x_4(0));
   
   XLXI_18_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(1),
                Q=>x_4(1));
   
   XLXI_18_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(2),
                Q=>x_4(2));
   
   XLXI_18_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(3),
                Q=>x_4(3));
   
   XLXI_18_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(4),
                Q=>x_4(4));
   
   XLXI_18_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(5),
                Q=>x_4(5));
   
   XLXI_18_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(6),
                Q=>x_4(6));
   
   XLXI_18_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(7),
                Q=>x_4(7));
   
   XLXI_19_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(0),
                Q=>x_5(0));
   
   XLXI_19_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(1),
                Q=>x_5(1));
   
   XLXI_19_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(2),
                Q=>x_5(2));
   
   XLXI_19_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(3),
                Q=>x_5(3));
   
   XLXI_19_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(4),
                Q=>x_5(4));
   
   XLXI_19_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(5),
                Q=>x_5(5));
   
   XLXI_19_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(6),
                Q=>x_5(6));
   
   XLXI_19_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(7),
                Q=>x_5(7));
   
   XLXI_20_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(0),
                Q=>x_6(0));
   
   XLXI_20_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(1),
                Q=>x_6(1));
   
   XLXI_20_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(2),
                Q=>x_6(2));
   
   XLXI_20_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(3),
                Q=>x_6(3));
   
   XLXI_20_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(4),
                Q=>x_6(4));
   
   XLXI_20_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(5),
                Q=>x_6(5));
   
   XLXI_20_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(6),
                Q=>x_6(6));
   
   XLXI_20_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(7),
                Q=>x_6(7));
   
   XLXI_21_0 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(0),
                Q=>x_7(0));
   
   XLXI_21_1 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(1),
                Q=>x_7(1));
   
   XLXI_21_2 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(2),
                Q=>x_7(2));
   
   XLXI_21_3 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(3),
                Q=>x_7(3));
   
   XLXI_21_4 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(4),
                Q=>x_7(4));
   
   XLXI_21_5 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(5),
                Q=>x_7(5));
   
   XLXI_21_6 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(6),
                Q=>x_7(6));
   
   XLXI_21_7 : FDE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(7),
                Q=>x_7(7));
   
   XLXI_23_0 : FD
      port map (C=>ck,
                D=>XLXN_1(0),
                Q=>x_i(0));
   
   XLXI_23_1 : FD
      port map (C=>ck,
                D=>XLXN_1(1),
                Q=>x_i(1));
   
   XLXI_23_2 : FD
      port map (C=>ck,
                D=>XLXN_1(2),
                Q=>x_i(2));
   
   XLXI_23_3 : FD
      port map (C=>ck,
                D=>XLXN_1(3),
                Q=>x_i(3));
   
   XLXI_23_4 : FD
      port map (C=>ck,
                D=>XLXN_1(4),
                Q=>x_i(4));
   
   XLXI_23_5 : FD
      port map (C=>ck,
                D=>XLXN_1(5),
                Q=>x_i(5));
   
   XLXI_23_6 : FD
      port map (C=>ck,
                D=>XLXN_1(6),
                Q=>x_i(6));
   
   XLXI_23_7 : FD
      port map (C=>ck,
                D=>XLXN_1(7),
                Q=>x_i(7));
   
end BEHAVIORAL;


