--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bCalcConv.vhf
-- /___/   /\     Timestamp : 11/13/2024 19:51:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/bCalcConv.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/bCalcConv.sch
--Design Name: bCalcConv
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_bCalcConv -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_bCalcConv is
  
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
end M8_1E_HXILINX_bCalcConv;

architecture M8_1E_HXILINX_bCalcConv_V of M8_1E_HXILINX_bCalcConv is
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
end M8_1E_HXILINX_bCalcConv_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcX_i_MUSER_bCalcConv is
   port ( ck         : in    std_logic; 
          dato_ent   : in    std_logic_vector (7 downto 0); 
          dato_nuevo : in    std_logic; 
          indice     : in    std_logic_vector (3 downto 0); 
          x_i        : out   std_logic_vector (7 downto 0));
end bCalcX_i_MUSER_bCalcConv;

architecture BEHAVIORAL of bCalcX_i_MUSER_bCalcConv is
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
   component M8_1E_HXILINX_bCalcConv
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
   
   attribute HU_SET of XLXI_9_0 : label is "XLXI_9_0_57";
   attribute HU_SET of XLXI_9_1 : label is "XLXI_9_1_56";
   attribute HU_SET of XLXI_9_2 : label is "XLXI_9_2_55";
   attribute HU_SET of XLXI_9_3 : label is "XLXI_9_3_54";
   attribute HU_SET of XLXI_9_4 : label is "XLXI_9_4_53";
   attribute HU_SET of XLXI_9_5 : label is "XLXI_9_5_52";
   attribute HU_SET of XLXI_9_6 : label is "XLXI_9_6_51";
   attribute HU_SET of XLXI_9_7 : label is "XLXI_9_7_50";
begin
   XLXI_9_0 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_1 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_2 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_3 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_4 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_5 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_6 : M8_1E_HXILINX_bCalcConv
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
   
   XLXI_9_7 : M8_1E_HXILINX_bCalcConv
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcConv is
   port ( ck            : in    std_logic; 
          dato_ent      : in    std_logic_vector (7 downto 0); 
          dato_nuevo    : in    std_logic; 
          reset         : in    std_logic; 
          ventana       : in    std_logic_vector (1 downto 0); 
          dato_sal_sync : out   std_logic; 
          dat_sal       : out   std_logic_vector (7 downto 0));
end bCalcConv;

architecture BEHAVIORAL of bCalcConv is
   attribute BOX_TYPE   : string ;
   signal acumular      : std_logic;
   signal ceros         : std_logic_vector (7 downto 0);
   signal c_i           : std_logic_vector (7 downto 0);
   signal guardar       : std_logic;
   signal indice        : std_logic_vector (3 downto 0);
   signal inicializar   : std_logic;
   signal multiplicar   : std_logic;
   signal res_parc      : std_logic_vector (15 downto 0);
   signal res_parcl     : std_logic_vector (7 downto 0);
   signal xi_por_ci     : std_logic_vector (15 downto 0);
   signal x_i           : std_logic_vector (7 downto 0);
   component bCalcX_i_MUSER_bCalcConv
      port ( dato_nuevo : in    std_logic; 
             ck         : in    std_logic; 
             dato_ent   : in    std_logic_vector (7 downto 0); 
             indice     : in    std_logic_vector (3 downto 0); 
             x_i        : out   std_logic_vector (7 downto 0));
   end component;
   
   component bIpMemory
      port ( addra : in    std_logic_vector (4 downto 0); 
             dina  : in    std_logic_vector (7 downto 0); 
             wea   : in    std_logic_vector (0 downto 0); 
             clka  : in    std_logic; 
             douta : out   std_logic_vector (7 downto 0));
   end component;
   
   component bIpMultiplier
      port ( a   : in    std_logic_vector (7 downto 0); 
             b   : in    std_logic_vector (7 downto 0); 
             clk : in    std_logic; 
             ce  : in    std_logic; 
             p   : out   std_logic_vector (15 downto 0));
   end component;
   
   component biPAccumlator
      port ( b    : in    std_logic_vector (15 downto 0); 
             clk  : in    std_logic; 
             ce   : in    std_logic; 
             sclr : in    std_logic; 
             q    : out   std_logic_vector (15 downto 0));
   end component;
   
   component fsm_convol
      port ( ck            : in    std_logic; 
             dato_nuevo    : in    std_logic; 
             reset         : in    std_logic; 
             inicializar   : out   std_logic; 
             acumular      : out   std_logic; 
             dato_sal_sync : out   std_logic; 
             multiplicar   : out   std_logic; 
             guardar       : out   std_logic; 
             indice        : out   std_logic_vector (3 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_2 : bCalcX_i_MUSER_bCalcConv
      port map (ck=>ck,
                dato_ent(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo,
                indice(3 downto 0)=>indice(3 downto 0),
                x_i(7 downto 0)=>x_i(7 downto 0));
   
   XLXI_5 : bIpMemory
      port map (addra(4 downto 3)=>ventana(1 downto 0),
                addra(2 downto 0)=>indice(2 downto 0),
                clka=>ck,
                dina(7 downto 0)=>ceros(7 downto 0),
                wea(0)=>ceros(0),
                douta(7 downto 0)=>c_i(7 downto 0));
   
   XLXI_6 : bIpMultiplier
      port map (a(7 downto 0)=>x_i(7 downto 0),
                b(7 downto 0)=>c_i(7 downto 0),
                ce=>multiplicar,
                clk=>ck,
                p(15 downto 0)=>xi_por_ci(15 downto 0));
   
   XLXI_7 : biPAccumlator
      port map (b(15 downto 0)=>xi_por_ci(15 downto 0),
                ce=>acumular,
                clk=>ck,
                sclr=>inicializar,
                q(15 downto 0)=>res_parc(15 downto 0));
   
   XLXI_16 : fsm_convol
      port map (ck=>ck,
                dato_nuevo=>dato_nuevo,
                reset=>reset,
                acumular=>acumular,
                dato_sal_sync=>dato_sal_sync,
                guardar=>guardar,
                indice(3 downto 0)=>indice(3 downto 0),
                inicializar=>inicializar,
                multiplicar=>multiplicar);
   
   XLXI_17_0 : GND
      port map (G=>ceros(0));
   
   XLXI_17_1 : GND
      port map (G=>ceros(1));
   
   XLXI_17_2 : GND
      port map (G=>ceros(2));
   
   XLXI_17_3 : GND
      port map (G=>ceros(3));
   
   XLXI_17_4 : GND
      port map (G=>ceros(4));
   
   XLXI_17_5 : GND
      port map (G=>ceros(5));
   
   XLXI_17_6 : GND
      port map (G=>ceros(6));
   
   XLXI_17_7 : GND
      port map (G=>ceros(7));
   
   XLXI_18_0 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(0),
                Q=>dat_sal(0));
   
   XLXI_18_1 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(1),
                Q=>dat_sal(1));
   
   XLXI_18_2 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(2),
                Q=>dat_sal(2));
   
   XLXI_18_3 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(3),
                Q=>dat_sal(3));
   
   XLXI_18_4 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(4),
                Q=>dat_sal(4));
   
   XLXI_18_5 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(5),
                Q=>dat_sal(5));
   
   XLXI_18_6 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(6),
                Q=>dat_sal(6));
   
   XLXI_18_7 : FDE
      port map (C=>ck,
                CE=>guardar,
                D=>res_parcl(7),
                Q=>dat_sal(7));
   
   XLXI_21_0 : BUF
      port map (I=>res_parc(6),
                O=>res_parcl(0));
   
   XLXI_21_1 : BUF
      port map (I=>res_parc(7),
                O=>res_parcl(1));
   
   XLXI_21_2 : BUF
      port map (I=>res_parc(8),
                O=>res_parcl(2));
   
   XLXI_21_3 : BUF
      port map (I=>res_parc(9),
                O=>res_parcl(3));
   
   XLXI_21_4 : BUF
      port map (I=>res_parc(10),
                O=>res_parcl(4));
   
   XLXI_21_5 : BUF
      port map (I=>res_parc(11),
                O=>res_parcl(5));
   
   XLXI_21_6 : BUF
      port map (I=>res_parc(12),
                O=>res_parcl(6));
   
   XLXI_21_7 : BUF
      port map (I=>res_parc(13),
                O=>res_parcl(7));
   
end BEHAVIORAL;


