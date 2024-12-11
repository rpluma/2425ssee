--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : calc_potencia.vhf
-- /___/   /\     Timestamp : 12/09/2024 09:37:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/calc_potencia.vhf -w C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/calc_potencia.sch
--Design Name: calc_potencia
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_calc_potencia -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_calc_potencia is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_calc_potencia;

architecture M4_1E_HXILINX_calc_potencia_V of M4_1E_HXILINX_calc_potencia is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_calc_potencia_V;
----- CELL M2_1_HXILINX_calc_potencia -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_calc_potencia is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_calc_potencia;

architecture M2_1_HXILINX_calc_potencia_V of M2_1_HXILINX_calc_potencia is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_calc_potencia_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity calc_potencia is
   port ( ck         : in    std_logic; 
          reset      : in    std_logic; 
          TemIn      : in    std_logic_vector (7 downto 0); 
          TemMax     : in    std_logic_vector (7 downto 0); 
          TemMin     : in    std_logic_vector (7 downto 0); 
          TemOb      : in    std_logic_vector (7 downto 0); 
          Tem_n      : in    std_logic; 
          potencia   : out   std_logic_vector (7 downto 0); 
          potencia_p : out   std_logic);
end calc_potencia;

architecture BEHAVIORAL of calc_potencia is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal add          : std_logic;
   signal c            : std_logic;
   signal calor        : std_logic_vector (7 downto 0);
   signal calorx100    : std_logic_vector (15 downto 0);
   signal ce_calor     : std_logic;
   signal ce_calorx100 : std_logic;
   signal ce_rango     : std_logic;
   signal divisor      : std_logic;
   signal LimInf       : std_logic_vector (7 downto 0);
   signal LimSup       : std_logic_vector (7 downto 0);
   signal quot         : std_logic_vector (15 downto 0);
   signal rango        : std_logic_vector (7 downto 0);
   signal res          : std_logic_vector (15 downto 0);
   signal s            : std_logic;
   signal sa           : std_logic_vector (15 downto 0);
   signal sb           : std_logic_vector (12 downto 0);
   signal sel_sum      : std_logic_vector (1 downto 0);
   signal sumador      : std_logic;
   signal TemInt       : std_logic_vector (7 downto 0);
   signal TemObj       : std_logic_vector (7 downto 0);
   signal Tem_p        : std_logic;
   signal XLXN_12      : std_logic_vector (7 downto 0);
   signal XLXN_14      : std_logic_vector (7 downto 0);
   signal XLXN_38      : std_logic;
   signal XLXN_42      : std_logic;
   signal XLXN_70      : std_logic;
   signal XLXN_105     : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component M2_1_HXILINX_calc_potencia
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component bIpSumRes
      port ( a   : in    std_logic_vector (15 downto 0); 
             b   : in    std_logic_vector (12 downto 0); 
             add : in    std_logic; 
             s   : out   std_logic_vector (15 downto 0));
   end component;
   
   component bIpDividir
      port ( clk        : in    std_logic; 
             ce         : in    std_logic; 
             dividend   : in    std_logic_vector (15 downto 0); 
             divisor    : in    std_logic_vector (7 downto 0); 
             rfd        : out   std_logic; 
             quotient   : out   std_logic_vector (15 downto 0); 
             fractional : out   std_logic_vector (7 downto 0));
   end component;
   
   component M4_1E_HXILINX_calc_potencia
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component fsm_calcpotencia
      port ( reset        : in    std_logic; 
             ck           : in    std_logic; 
             Tem_p        : in    std_logic; 
             sumador      : out   std_logic; 
             divisor      : out   std_logic; 
             ce_calor     : out   std_logic; 
             ce_calorx100 : out   std_logic; 
             ce_rango     : out   std_logic; 
             potencia_p   : out   std_logic; 
             sum          : out   std_logic; 
             sel_sum      : out   std_logic_vector (1 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_37_0 : label is "XLXI_37_0_92";
   attribute HU_SET of XLXI_37_1 : label is "XLXI_37_1_91";
   attribute HU_SET of XLXI_37_2 : label is "XLXI_37_2_90";
   attribute HU_SET of XLXI_37_3 : label is "XLXI_37_3_89";
   attribute HU_SET of XLXI_37_4 : label is "XLXI_37_4_88";
   attribute HU_SET of XLXI_37_5 : label is "XLXI_37_5_87";
   attribute HU_SET of XLXI_37_6 : label is "XLXI_37_6_86";
   attribute HU_SET of XLXI_37_7 : label is "XLXI_37_7_85";
   attribute HU_SET of XLXI_76_0 : label is "XLXI_76_0_100";
   attribute HU_SET of XLXI_76_1 : label is "XLXI_76_1_99";
   attribute HU_SET of XLXI_76_2 : label is "XLXI_76_2_98";
   attribute HU_SET of XLXI_76_3 : label is "XLXI_76_3_97";
   attribute HU_SET of XLXI_76_4 : label is "XLXI_76_4_96";
   attribute HU_SET of XLXI_76_5 : label is "XLXI_76_5_95";
   attribute HU_SET of XLXI_76_6 : label is "XLXI_76_6_94";
   attribute HU_SET of XLXI_76_7 : label is "XLXI_76_7_93";
   attribute HU_SET of XLXI_95_0 : label is "XLXI_95_0_84";
   attribute HU_SET of XLXI_95_1 : label is "XLXI_95_1_83";
   attribute HU_SET of XLXI_95_2 : label is "XLXI_95_2_82";
   attribute HU_SET of XLXI_95_3 : label is "XLXI_95_3_81";
   attribute HU_SET of XLXI_95_4 : label is "XLXI_95_4_80";
   attribute HU_SET of XLXI_95_5 : label is "XLXI_95_5_79";
   attribute HU_SET of XLXI_95_6 : label is "XLXI_95_6_78";
   attribute HU_SET of XLXI_95_7 : label is "XLXI_95_7_77";
   attribute HU_SET of XLXI_95_8 : label is "XLXI_95_8_76";
   attribute HU_SET of XLXI_95_9 : label is "XLXI_95_9_75";
   attribute HU_SET of XLXI_95_10 : label is "XLXI_95_10_74";
   attribute HU_SET of XLXI_95_11 : label is "XLXI_95_11_73";
   attribute HU_SET of XLXI_95_12 : label is "XLXI_95_12_72";
   attribute HU_SET of XLXI_95_13 : label is "XLXI_95_13_71";
   attribute HU_SET of XLXI_95_14 : label is "XLXI_95_14_70";
   attribute HU_SET of XLXI_95_15 : label is "XLXI_95_15_69";
   attribute HU_SET of XLXI_97_0 : label is "XLXI_97_0_113";
   attribute HU_SET of XLXI_97_1 : label is "XLXI_97_1_112";
   attribute HU_SET of XLXI_97_2 : label is "XLXI_97_2_111";
   attribute HU_SET of XLXI_97_3 : label is "XLXI_97_3_110";
   attribute HU_SET of XLXI_97_4 : label is "XLXI_97_4_109";
   attribute HU_SET of XLXI_97_5 : label is "XLXI_97_5_108";
   attribute HU_SET of XLXI_97_6 : label is "XLXI_97_6_107";
   attribute HU_SET of XLXI_97_7 : label is "XLXI_97_7_106";
   attribute HU_SET of XLXI_97_8 : label is "XLXI_97_8_105";
   attribute HU_SET of XLXI_97_9 : label is "XLXI_97_9_104";
   attribute HU_SET of XLXI_97_10 : label is "XLXI_97_10_103";
   attribute HU_SET of XLXI_97_11 : label is "XLXI_97_11_102";
   attribute HU_SET of XLXI_97_12 : label is "XLXI_97_12_101";
begin
   XLXI_1_0 : FD
      port map (C=>ck,
                D=>XLXN_12(0),
                Q=>TemObj(0));
   
   XLXI_1_1 : FD
      port map (C=>ck,
                D=>XLXN_12(1),
                Q=>TemObj(1));
   
   XLXI_1_2 : FD
      port map (C=>ck,
                D=>XLXN_12(2),
                Q=>TemObj(2));
   
   XLXI_1_3 : FD
      port map (C=>ck,
                D=>XLXN_12(3),
                Q=>TemObj(3));
   
   XLXI_1_4 : FD
      port map (C=>ck,
                D=>XLXN_12(4),
                Q=>TemObj(4));
   
   XLXI_1_5 : FD
      port map (C=>ck,
                D=>XLXN_12(5),
                Q=>TemObj(5));
   
   XLXI_1_6 : FD
      port map (C=>ck,
                D=>XLXN_12(6),
                Q=>TemObj(6));
   
   XLXI_1_7 : FD
      port map (C=>ck,
                D=>XLXN_12(7),
                Q=>TemObj(7));
   
   XLXI_2_0 : FD
      port map (C=>ck,
                D=>XLXN_14(0),
                Q=>TemInt(0));
   
   XLXI_2_1 : FD
      port map (C=>ck,
                D=>XLXN_14(1),
                Q=>TemInt(1));
   
   XLXI_2_2 : FD
      port map (C=>ck,
                D=>XLXN_14(2),
                Q=>TemInt(2));
   
   XLXI_2_3 : FD
      port map (C=>ck,
                D=>XLXN_14(3),
                Q=>TemInt(3));
   
   XLXI_2_4 : FD
      port map (C=>ck,
                D=>XLXN_14(4),
                Q=>TemInt(4));
   
   XLXI_2_5 : FD
      port map (C=>ck,
                D=>XLXN_14(5),
                Q=>TemInt(5));
   
   XLXI_2_6 : FD
      port map (C=>ck,
                D=>XLXN_14(6),
                Q=>TemInt(6));
   
   XLXI_2_7 : FD
      port map (C=>ck,
                D=>XLXN_14(7),
                Q=>TemInt(7));
   
   XLXI_4 : FD
      port map (C=>ck,
                D=>Tem_n,
                Q=>XLXN_105);
   
   XLXI_5_0 : FD
      port map (C=>ck,
                D=>TemOb(0),
                Q=>XLXN_12(0));
   
   XLXI_5_1 : FD
      port map (C=>ck,
                D=>TemOb(1),
                Q=>XLXN_12(1));
   
   XLXI_5_2 : FD
      port map (C=>ck,
                D=>TemOb(2),
                Q=>XLXN_12(2));
   
   XLXI_5_3 : FD
      port map (C=>ck,
                D=>TemOb(3),
                Q=>XLXN_12(3));
   
   XLXI_5_4 : FD
      port map (C=>ck,
                D=>TemOb(4),
                Q=>XLXN_12(4));
   
   XLXI_5_5 : FD
      port map (C=>ck,
                D=>TemOb(5),
                Q=>XLXN_12(5));
   
   XLXI_5_6 : FD
      port map (C=>ck,
                D=>TemOb(6),
                Q=>XLXN_12(6));
   
   XLXI_5_7 : FD
      port map (C=>ck,
                D=>TemOb(7),
                Q=>XLXN_12(7));
   
   XLXI_6_0 : FD
      port map (C=>ck,
                D=>TemIn(0),
                Q=>XLXN_14(0));
   
   XLXI_6_1 : FD
      port map (C=>ck,
                D=>TemIn(1),
                Q=>XLXN_14(1));
   
   XLXI_6_2 : FD
      port map (C=>ck,
                D=>TemIn(2),
                Q=>XLXN_14(2));
   
   XLXI_6_3 : FD
      port map (C=>ck,
                D=>TemIn(3),
                Q=>XLXN_14(3));
   
   XLXI_6_4 : FD
      port map (C=>ck,
                D=>TemIn(4),
                Q=>XLXN_14(4));
   
   XLXI_6_5 : FD
      port map (C=>ck,
                D=>TemIn(5),
                Q=>XLXN_14(5));
   
   XLXI_6_6 : FD
      port map (C=>ck,
                D=>TemIn(6),
                Q=>XLXN_14(6));
   
   XLXI_6_7 : FD
      port map (C=>ck,
                D=>TemIn(7),
                Q=>XLXN_14(7));
   
   XLXI_9 : FD
      port map (C=>ck,
                D=>XLXN_42,
                Q=>XLXN_38);
   
   XLXI_10 : INV
      port map (I=>XLXN_38,
                O=>XLXN_70);
   
   XLXI_11 : AND2
      port map (I0=>XLXN_70,
                I1=>XLXN_42,
                O=>Tem_p);
   
   XLXI_37_0 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(0),
                D1=>TemObj(0),
                S0=>s,
                O=>LimSup(0));
   
   XLXI_37_1 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(1),
                D1=>TemObj(1),
                S0=>s,
                O=>LimSup(1));
   
   XLXI_37_2 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(2),
                D1=>TemObj(2),
                S0=>s,
                O=>LimSup(2));
   
   XLXI_37_3 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(3),
                D1=>TemObj(3),
                S0=>s,
                O=>LimSup(3));
   
   XLXI_37_4 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(4),
                D1=>TemObj(4),
                S0=>s,
                O=>LimSup(4));
   
   XLXI_37_5 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(5),
                D1=>TemObj(5),
                S0=>s,
                O=>LimSup(5));
   
   XLXI_37_6 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(6),
                D1=>TemObj(6),
                S0=>s,
                O=>LimSup(6));
   
   XLXI_37_7 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemMax(7),
                D1=>TemObj(7),
                S0=>s,
                O=>LimSup(7));
   
   XLXI_58 : FD
      port map (C=>ck,
                D=>XLXN_105,
                Q=>XLXN_42);
   
   XLXI_76_0 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(0),
                D1=>TemMin(0),
                S0=>s,
                O=>LimInf(0));
   
   XLXI_76_1 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(1),
                D1=>TemMin(1),
                S0=>s,
                O=>LimInf(1));
   
   XLXI_76_2 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(2),
                D1=>TemMin(2),
                S0=>s,
                O=>LimInf(2));
   
   XLXI_76_3 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(3),
                D1=>TemMin(3),
                S0=>s,
                O=>LimInf(3));
   
   XLXI_76_4 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(4),
                D1=>TemMin(4),
                S0=>s,
                O=>LimInf(4));
   
   XLXI_76_5 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(5),
                D1=>TemMin(5),
                S0=>s,
                O=>LimInf(5));
   
   XLXI_76_6 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(6),
                D1=>TemMin(6),
                S0=>s,
                O=>LimInf(6));
   
   XLXI_76_7 : M2_1_HXILINX_calc_potencia
      port map (D0=>TemObj(7),
                D1=>TemMin(7),
                S0=>s,
                O=>LimInf(7));
   
   XLXI_84_0 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(0),
                Q=>calor(0));
   
   XLXI_84_1 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(1),
                Q=>calor(1));
   
   XLXI_84_2 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(2),
                Q=>calor(2));
   
   XLXI_84_3 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(3),
                Q=>calor(3));
   
   XLXI_84_4 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(4),
                Q=>calor(4));
   
   XLXI_84_5 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(5),
                Q=>calor(5));
   
   XLXI_84_6 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(6),
                Q=>calor(6));
   
   XLXI_84_7 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(7),
                Q=>calor(7));
   
   XLXI_86_0 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(0),
                Q=>calorx100(0));
   
   XLXI_86_1 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(1),
                Q=>calorx100(1));
   
   XLXI_86_2 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(2),
                Q=>calorx100(2));
   
   XLXI_86_3 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(3),
                Q=>calorx100(3));
   
   XLXI_86_4 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(4),
                Q=>calorx100(4));
   
   XLXI_86_5 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(5),
                Q=>calorx100(5));
   
   XLXI_86_6 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(6),
                Q=>calorx100(6));
   
   XLXI_86_7 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(7),
                Q=>calorx100(7));
   
   XLXI_86_8 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(8),
                Q=>calorx100(8));
   
   XLXI_86_9 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(9),
                Q=>calorx100(9));
   
   XLXI_86_10 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(10),
                Q=>calorx100(10));
   
   XLXI_86_11 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(11),
                Q=>calorx100(11));
   
   XLXI_86_12 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(12),
                Q=>calorx100(12));
   
   XLXI_86_13 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(13),
                Q=>calorx100(13));
   
   XLXI_86_14 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(14),
                Q=>calorx100(14));
   
   XLXI_86_15 : FDE
      port map (C=>ck,
                CE=>ce_calorx100,
                D=>res(15),
                Q=>calorx100(15));
   
   XLXI_87 : FDE
      port map (C=>ck,
                CE=>ce_calor,
                D=>res(7),
                Q=>s);
   
   XLXI_92_0 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(0),
                Q=>rango(0));
   
   XLXI_92_1 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(1),
                Q=>rango(1));
   
   XLXI_92_2 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(2),
                Q=>rango(2));
   
   XLXI_92_3 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(3),
                Q=>rango(3));
   
   XLXI_92_4 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(4),
                Q=>rango(4));
   
   XLXI_92_5 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(5),
                Q=>rango(5));
   
   XLXI_92_6 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(6),
                Q=>rango(6));
   
   XLXI_92_7 : FDE
      port map (C=>ck,
                CE=>ce_rango,
                D=>res(7),
                Q=>rango(7));
   
   XLXI_93 : bIpSumRes
      port map (a(15 downto 0)=>sa(15 downto 0),
                add=>add,
                b(12 downto 0)=>sb(12 downto 0),
                s(15 downto 0)=>res(15 downto 0));
   
   XLXI_94 : bIpDividir
      port map (ce=>divisor,
                clk=>ck,
                dividend(15 downto 0)=>calorx100(15 downto 0),
                divisor(7 downto 0)=>rango(7 downto 0),
                fractional=>open,
                quotient(15 downto 0)=>quot(15 downto 0),
                rfd=>open);
   
   XLXI_95_0 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(0),
                D1=>c,
                D2=>calorx100(0),
                D3=>LimSup(0),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(0));
   
   XLXI_95_1 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(1),
                D1=>c,
                D2=>calorx100(1),
                D3=>LimSup(1),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(1));
   
   XLXI_95_2 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(2),
                D1=>c,
                D2=>calorx100(2),
                D3=>LimSup(2),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(2));
   
   XLXI_95_3 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(3),
                D1=>c,
                D2=>calorx100(3),
                D3=>LimSup(3),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(3));
   
   XLXI_95_4 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(4),
                D1=>c,
                D2=>calorx100(4),
                D3=>LimSup(4),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(4));
   
   XLXI_95_5 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(5),
                D1=>c,
                D2=>calorx100(5),
                D3=>LimSup(5),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(5));
   
   XLXI_95_6 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(6),
                D1=>calor(0),
                D2=>calorx100(6),
                D3=>LimSup(6),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(6));
   
   XLXI_95_7 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemInt(7),
                D1=>calor(1),
                D2=>calorx100(7),
                D3=>LimSup(7),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(7));
   
   XLXI_95_8 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(2),
                D2=>calorx100(8),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(8));
   
   XLXI_95_9 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(3),
                D2=>calorx100(9),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(9));
   
   XLXI_95_10 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(4),
                D2=>calorx100(10),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(10));
   
   XLXI_95_11 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(5),
                D2=>calorx100(11),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(11));
   
   XLXI_95_12 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(6),
                D2=>calorx100(12),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(12));
   
   XLXI_95_13 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(7),
                D2=>calorx100(13),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(13));
   
   XLXI_95_14 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>s,
                D2=>calorx100(14),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(14));
   
   XLXI_95_15 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>s,
                D2=>calorx100(15),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(15));
   
   XLXI_97_0 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(0),
                D1=>c,
                D2=>c,
                D3=>LimInf(0),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(0));
   
   XLXI_97_1 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(1),
                D1=>c,
                D2=>c,
                D3=>LimInf(1),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(1));
   
   XLXI_97_2 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(2),
                D1=>c,
                D2=>calor(0),
                D3=>LimInf(2),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(2));
   
   XLXI_97_3 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(3),
                D1=>c,
                D2=>calor(1),
                D3=>LimInf(3),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(3));
   
   XLXI_97_4 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(4),
                D1=>c,
                D2=>calor(2),
                D3=>LimInf(4),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(4));
   
   XLXI_97_5 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(5),
                D1=>calor(0),
                D2=>calor(3),
                D3=>LimInf(5),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(5));
   
   XLXI_97_6 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(6),
                D1=>calor(1),
                D2=>calor(4),
                D3=>LimInf(6),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(6));
   
   XLXI_97_7 : M4_1E_HXILINX_calc_potencia
      port map (D0=>TemObj(7),
                D1=>calor(2),
                D2=>calor(5),
                D3=>LimInf(7),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(7));
   
   XLXI_97_8 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(3),
                D2=>calor(6),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(8));
   
   XLXI_97_9 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(4),
                D2=>calor(7),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(9));
   
   XLXI_97_10 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(5),
                D2=>s,
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(10));
   
   XLXI_97_11 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(6),
                D2=>s,
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(11));
   
   XLXI_97_12 : M4_1E_HXILINX_calc_potencia
      port map (D0=>c,
                D1=>calor(7),
                D2=>s,
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(12));
   
   XLXI_98 : fsm_calcpotencia
      port map (ck=>ck,
                reset=>reset,
                Tem_p=>Tem_p,
                ce_calor=>ce_calor,
                ce_calorx100=>ce_calorx100,
                ce_rango=>ce_rango,
                divisor=>divisor,
                potencia_p=>potencia_p,
                sel_sum(1 downto 0)=>sel_sum(1 downto 0),
                sum=>add,
                sumador=>sumador);
   
   XLXI_130 : GND
      port map (G=>c);
   
   XLXI_143_0 : BUF
      port map (I=>quot(0),
                O=>potencia(0));
   
   XLXI_143_1 : BUF
      port map (I=>quot(1),
                O=>potencia(1));
   
   XLXI_143_2 : BUF
      port map (I=>quot(2),
                O=>potencia(2));
   
   XLXI_143_3 : BUF
      port map (I=>quot(3),
                O=>potencia(3));
   
   XLXI_143_4 : BUF
      port map (I=>quot(4),
                O=>potencia(4));
   
   XLXI_143_5 : BUF
      port map (I=>quot(5),
                O=>potencia(5));
   
   XLXI_143_6 : BUF
      port map (I=>quot(6),
                O=>potencia(6));
   
   XLXI_143_7 : BUF
      port map (I=>quot(7),
                O=>potencia(7));
   
end BEHAVIORAL;


