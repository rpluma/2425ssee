--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bCalcX_i.vhf
-- /___/   /\     Timestamp : 10/30/2024 09:28:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl bCalcX_i.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/bCalcX_i.sch
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
          indice     : in    std_logic_vector (2 downto 0); 
          reset      : in    std_logic; 
          x_i        : out   std_logic_vector (7 downto 0));
end bCalcX_i;

architecture BEHAVIORAL of bCalcX_i is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal uno        : std_logic;
   signal x_0        : std_logic_vector (7 downto 0);
   signal x_1        : std_logic_vector (7 downto 0);
   signal x_2        : std_logic_vector (7 downto 0);
   signal x_3        : std_logic_vector (7 downto 0);
   signal x_4        : std_logic_vector (7 downto 0);
   signal x_5        : std_logic_vector (7 downto 0);
   signal x_6        : std_logic_vector (7 downto 0);
   signal x_7        : std_logic_vector (7 downto 0);
   component FDRE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDRE : component is "BLACK_BOX";
   
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
   
   attribute HU_SET of XLXI_9_0 : label is "XLXI_9_0_7";
   attribute HU_SET of XLXI_9_1 : label is "XLXI_9_1_6";
   attribute HU_SET of XLXI_9_2 : label is "XLXI_9_2_5";
   attribute HU_SET of XLXI_9_3 : label is "XLXI_9_3_4";
   attribute HU_SET of XLXI_9_4 : label is "XLXI_9_4_3";
   attribute HU_SET of XLXI_9_5 : label is "XLXI_9_5_2";
   attribute HU_SET of XLXI_9_6 : label is "XLXI_9_6_1";
   attribute HU_SET of XLXI_9_7 : label is "XLXI_9_7_0";
begin
   fdrex0_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(0),
                R=>reset,
                Q=>x_0(0));
   
   fdrex0_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(1),
                R=>reset,
                Q=>x_0(1));
   
   fdrex0_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(2),
                R=>reset,
                Q=>x_0(2));
   
   fdrex0_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(3),
                R=>reset,
                Q=>x_0(3));
   
   fdrex0_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(4),
                R=>reset,
                Q=>x_0(4));
   
   fdrex0_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(5),
                R=>reset,
                Q=>x_0(5));
   
   fdrex0_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(6),
                R=>reset,
                Q=>x_0(6));
   
   fdrex0_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>dato_ent(7),
                R=>reset,
                Q=>x_0(7));
   
   fdrex1_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(0),
                R=>reset,
                Q=>x_1(0));
   
   fdrex1_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(1),
                R=>reset,
                Q=>x_1(1));
   
   fdrex1_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(2),
                R=>reset,
                Q=>x_1(2));
   
   fdrex1_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(3),
                R=>reset,
                Q=>x_1(3));
   
   fdrex1_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(4),
                R=>reset,
                Q=>x_1(4));
   
   fdrex1_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(5),
                R=>reset,
                Q=>x_1(5));
   
   fdrex1_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(6),
                R=>reset,
                Q=>x_1(6));
   
   fdrex1_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_0(7),
                R=>reset,
                Q=>x_1(7));
   
   fdrex2_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(0),
                R=>reset,
                Q=>x_2(0));
   
   fdrex2_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(1),
                R=>reset,
                Q=>x_2(1));
   
   fdrex2_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(2),
                R=>reset,
                Q=>x_2(2));
   
   fdrex2_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(3),
                R=>reset,
                Q=>x_2(3));
   
   fdrex2_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(4),
                R=>reset,
                Q=>x_2(4));
   
   fdrex2_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(5),
                R=>reset,
                Q=>x_2(5));
   
   fdrex2_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(6),
                R=>reset,
                Q=>x_2(6));
   
   fdrex2_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_1(7),
                R=>reset,
                Q=>x_2(7));
   
   fdrex3_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(0),
                R=>reset,
                Q=>x_3(0));
   
   fdrex3_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(1),
                R=>reset,
                Q=>x_3(1));
   
   fdrex3_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(2),
                R=>reset,
                Q=>x_3(2));
   
   fdrex3_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(3),
                R=>reset,
                Q=>x_3(3));
   
   fdrex3_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(4),
                R=>reset,
                Q=>x_3(4));
   
   fdrex3_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(5),
                R=>reset,
                Q=>x_3(5));
   
   fdrex3_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(6),
                R=>reset,
                Q=>x_3(6));
   
   fdrex3_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_2(7),
                R=>reset,
                Q=>x_3(7));
   
   fdrex4_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(0),
                R=>reset,
                Q=>x_4(0));
   
   fdrex4_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(1),
                R=>reset,
                Q=>x_4(1));
   
   fdrex4_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(2),
                R=>reset,
                Q=>x_4(2));
   
   fdrex4_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(3),
                R=>reset,
                Q=>x_4(3));
   
   fdrex4_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(4),
                R=>reset,
                Q=>x_4(4));
   
   fdrex4_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(5),
                R=>reset,
                Q=>x_4(5));
   
   fdrex4_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(6),
                R=>reset,
                Q=>x_4(6));
   
   fdrex4_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_3(7),
                R=>reset,
                Q=>x_4(7));
   
   fdrex5_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(0),
                R=>reset,
                Q=>x_5(0));
   
   fdrex5_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(1),
                R=>reset,
                Q=>x_5(1));
   
   fdrex5_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(2),
                R=>reset,
                Q=>x_5(2));
   
   fdrex5_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(3),
                R=>reset,
                Q=>x_5(3));
   
   fdrex5_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(4),
                R=>reset,
                Q=>x_5(4));
   
   fdrex5_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(5),
                R=>reset,
                Q=>x_5(5));
   
   fdrex5_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(6),
                R=>reset,
                Q=>x_5(6));
   
   fdrex5_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_4(7),
                R=>reset,
                Q=>x_5(7));
   
   fdrex6_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(0),
                R=>reset,
                Q=>x_6(0));
   
   fdrex6_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(1),
                R=>reset,
                Q=>x_6(1));
   
   fdrex6_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(2),
                R=>reset,
                Q=>x_6(2));
   
   fdrex6_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(3),
                R=>reset,
                Q=>x_6(3));
   
   fdrex6_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(4),
                R=>reset,
                Q=>x_6(4));
   
   fdrex6_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(5),
                R=>reset,
                Q=>x_6(5));
   
   fdrex6_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(6),
                R=>reset,
                Q=>x_6(6));
   
   fdrex6_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_5(7),
                R=>reset,
                Q=>x_6(7));
   
   fdrex7_0 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(0),
                R=>reset,
                Q=>x_7(0));
   
   fdrex7_1 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(1),
                R=>reset,
                Q=>x_7(1));
   
   fdrex7_2 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(2),
                R=>reset,
                Q=>x_7(2));
   
   fdrex7_3 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(3),
                R=>reset,
                Q=>x_7(3));
   
   fdrex7_4 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(4),
                R=>reset,
                Q=>x_7(4));
   
   fdrex7_5 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(5),
                R=>reset,
                Q=>x_7(5));
   
   fdrex7_6 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(6),
                R=>reset,
                Q=>x_7(6));
   
   fdrex7_7 : FDRE
      port map (C=>ck,
                CE=>dato_nuevo,
                D=>x_6(7),
                R=>reset,
                Q=>x_7(7));
   
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
                O=>x_i(0));
   
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
                O=>x_i(1));
   
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
                O=>x_i(2));
   
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
                O=>x_i(3));
   
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
                O=>x_i(4));
   
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
                O=>x_i(5));
   
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
                O=>x_i(6));
   
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
                O=>x_i(7));
   
   XLXI_10 : VCC
      port map (P=>uno);
   
end BEHAVIORAL;


