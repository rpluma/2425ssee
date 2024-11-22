--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bloque_convol.vhf
-- /___/   /\     Timestamp : 11/19/2024 13:11:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/siselec/Downloads/practica1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/siselec/Downloads/practica1/bloque_convol.vhf -w C:/Users/siselec/Downloads/practica1/bloque_convol.sch
--Design Name: bloque_convol
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM4_HXILINX_bloque_convol -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM4_HXILINX_bloque_convol is
  
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMPM4_HXILINX_bloque_convol;

architecture COMPM4_HXILINX_bloque_convol_V of COMPM4_HXILINX_bloque_convol is
  signal a_tmp: std_logic_vector(3 downto 0);
  signal b_tmp: std_logic_vector(3 downto 0);

begin

   a_tmp <= A3&A2&A1&A0;
   b_tmp <= B3&B2&B1&B0;
   
   GT <= '1' when (a_tmp > b_tmp ) else '0';
   LT <= '1' when (a_tmp < b_tmp ) else '0';
     
end COMPM4_HXILINX_bloque_convol_V;
----- CELL FD4RE_HXILINX_bloque_convol -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4RE_HXILINX_bloque_convol is
  port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC;
    R   : in STD_LOGIC
    );
end FD4RE_HXILINX_bloque_convol;

architecture Behavioral of FD4RE_HXILINX_bloque_convol is

begin

process(C)
begin
  if (C'event and C = '1') then
    if (R='1') then
      Q3 <= '0';
      Q2 <= '0';
      Q1 <= '0';
      Q0 <= '0';
    elsif (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;

----- CELL COMP4_HXILINX_bloque_convol -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_bloque_convol is
  
port(
    EQ  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMP4_HXILINX_bloque_convol;

architecture COMP4_HXILINX_bloque_convol_V of COMP4_HXILINX_bloque_convol is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_bloque_convol_V;
----- CELL M8_1E_HXILINX_bloque_convol -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_bloque_convol is
  
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
end M8_1E_HXILINX_bloque_convol;

architecture M8_1E_HXILINX_bloque_convol_V of M8_1E_HXILINX_bloque_convol is
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
end M8_1E_HXILINX_bloque_convol_V;
----- CELL FD8RE_HXILINX_bloque_convol -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_bloque_convol is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_bloque_convol;

architecture Behavioral of FD8RE_HXILINX_bloque_convol is

begin

process(C)
begin
  if (C'event and C = '1') then
    if (R='1') then
      Q <= (others => '0');
    elsif (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL M2_1_HXILINX_bloque_convol -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_bloque_convol is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_bloque_convol;

architecture M2_1_HXILINX_bloque_convol_V of M2_1_HXILINX_bloque_convol is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_bloque_convol_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcX_i_MUSER_bloque_convol is
   port ( acceder    : in    std_logic; 
          ck         : in    std_logic; 
          dato_ent   : in    std_logic_vector (7 downto 0); 
          dato_nuevo : in    std_logic; 
          indice     : in    std_logic_vector (2 downto 0); 
          x_i        : out   std_logic_vector (7 downto 0));
end bCalcX_i_MUSER_bloque_convol;

architecture BEHAVIORAL of bCalcX_i_MUSER_bloque_convol is
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
   component M8_1E_HXILINX_bloque_convol
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
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_9_0 : label is "XLXI_9_0_48";
   attribute HU_SET of XLXI_9_1 : label is "XLXI_9_1_47";
   attribute HU_SET of XLXI_9_2 : label is "XLXI_9_2_46";
   attribute HU_SET of XLXI_9_3 : label is "XLXI_9_3_45";
   attribute HU_SET of XLXI_9_4 : label is "XLXI_9_4_44";
   attribute HU_SET of XLXI_9_5 : label is "XLXI_9_5_43";
   attribute HU_SET of XLXI_9_6 : label is "XLXI_9_6_42";
   attribute HU_SET of XLXI_9_7 : label is "XLXI_9_7_41";
begin
   XLXI_9_0 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_1 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_2 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_3 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_4 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_5 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_6 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_9_7 : M8_1E_HXILINX_bloque_convol
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
   
   XLXI_24_0 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(0),
                Q=>x_i(0));
   
   XLXI_24_1 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(1),
                Q=>x_i(1));
   
   XLXI_24_2 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(2),
                Q=>x_i(2));
   
   XLXI_24_3 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(3),
                Q=>x_i(3));
   
   XLXI_24_4 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(4),
                Q=>x_i(4));
   
   XLXI_24_5 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(5),
                Q=>x_i(5));
   
   XLXI_24_6 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(6),
                Q=>x_i(6));
   
   XLXI_24_7 : FDE
      port map (C=>ck,
                CE=>acceder,
                D=>XLXN_1(7),
                Q=>x_i(7));
   
   XLXI_25 : VCC
      port map (P=>uno);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcConv_MUSER_bloque_convol is
   port ( ck            : in    std_logic; 
          dato_ent      : in    std_logic_vector (7 downto 0); 
          dato_nuevo    : in    std_logic; 
          reset         : in    std_logic; 
          ventana       : in    std_logic_vector (1 downto 0); 
          dato_sal_sync : out   std_logic; 
          dat_sal       : out   std_logic_vector (7 downto 0));
end bCalcConv_MUSER_bloque_convol;

architecture BEHAVIORAL of bCalcConv_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   signal acceder       : std_logic;
   signal acumular      : std_logic;
   signal ceros         : std_logic_vector (7 downto 0);
   signal c_i           : std_logic_vector (7 downto 0);
   signal guardar       : std_logic;
   signal indice        : std_logic_vector (2 downto 0);
   signal inicializar   : std_logic;
   signal multiplicar   : std_logic;
   signal res_parc      : std_logic_vector (18 downto 0);
   signal res_parcl     : std_logic_vector (7 downto 0);
   signal xi_por_ci     : std_logic_vector (15 downto 0);
   signal x_i           : std_logic_vector (7 downto 0);
   component bCalcX_i_MUSER_bloque_convol
      port ( dato_nuevo : in    std_logic; 
             ck         : in    std_logic; 
             dato_ent   : in    std_logic_vector (7 downto 0); 
             indice     : in    std_logic_vector (2 downto 0); 
             x_i        : out   std_logic_vector (7 downto 0); 
             acceder    : in    std_logic);
   end component;
   
   component bIpMemory
      port ( addra : in    std_logic_vector (4 downto 0); 
             dina  : in    std_logic_vector (7 downto 0); 
             ena   : in    std_logic; 
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
      port ( b     : in    std_logic_vector (15 downto 0); 
             clk   : in    std_logic; 
             ce    : in    std_logic; 
             sinit : in    std_logic; 
             q     : out   std_logic_vector (18 downto 0));
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
   
   component fsm_convol
      port ( ck            : in    std_logic; 
             dato_nuevo    : in    std_logic; 
             reset         : in    std_logic; 
             inicializar   : out   std_logic; 
             multiplicar   : out   std_logic; 
             acumular      : out   std_logic; 
             guardar       : out   std_logic; 
             dato_sal_sync : out   std_logic; 
             indice        : out   std_logic_vector (2 downto 0); 
             acceder       : out   std_logic);
   end component;
   
begin
   XLXI_2 : bCalcX_i_MUSER_bloque_convol
      port map (acceder=>acceder,
                ck=>ck,
                dato_ent(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo,
                indice(2 downto 0)=>indice(2 downto 0),
                x_i(7 downto 0)=>x_i(7 downto 0));
   
   XLXI_5 : bIpMemory
      port map (addra(4 downto 3)=>ventana(1 downto 0),
                addra(2 downto 0)=>indice(2 downto 0),
                clka=>ck,
                dina(7 downto 0)=>ceros(7 downto 0),
                ena=>acceder,
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
                sinit=>inicializar,
                q(18 downto 0)=>res_parc(18 downto 0));
   
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
      port map (I=>res_parc(18),
                O=>res_parcl(7));
   
   XLXI_22 : fsm_convol
      port map (ck=>ck,
                dato_nuevo=>dato_nuevo,
                reset=>reset,
                acceder=>acceder,
                acumular=>acumular,
                dato_sal_sync=>dato_sal_sync,
                guardar=>guardar,
                indice(2 downto 0)=>indice(2 downto 0),
                inicializar=>inicializar,
                multiplicar=>multiplicar);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcSignoMag_MUSER_bloque_convol is
   port ( ck                : in    std_logic; 
          dato_sal          : in    std_logic_vector (7 downto 0); 
          dato_sal_sync     : in    std_logic; 
          dato_sal_pos      : out   std_logic_vector (7 downto 0); 
          dato_sal_pos_sync : out   std_logic; 
          signo_sal         : out   std_logic);
end bCalcSignoMag_MUSER_bloque_convol;

architecture BEHAVIORAL of bCalcSignoMag_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   signal ceros             : std_logic_vector (7 downto 0);
   signal XLXN_5            : std_logic;
   component bIpSumador
      port ( a   : in    std_logic_vector (7 downto 0); 
             b   : in    std_logic_vector (7 downto 0); 
             clk : in    std_logic; 
             add : in    std_logic; 
             ce  : in    std_logic; 
             s   : out   std_logic_vector (7 downto 0));
   end component;
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
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
   
begin
   XLXI_2 : bIpSumador
      port map (a(7 downto 0)=>ceros(7 downto 0),
                add=>XLXN_5,
                b(7 downto 0)=>dato_sal(7 downto 0),
                ce=>dato_sal_sync,
                clk=>ck,
                s(7 downto 0)=>dato_sal_pos(7 downto 0));
   
   XLXI_4 : FDE
      port map (C=>ck,
                CE=>dato_sal_sync,
                D=>dato_sal(7),
                Q=>signo_sal);
   
   XLXI_5_0 : GND
      port map (G=>ceros(0));
   
   XLXI_5_1 : GND
      port map (G=>ceros(1));
   
   XLXI_5_2 : GND
      port map (G=>ceros(2));
   
   XLXI_5_3 : GND
      port map (G=>ceros(3));
   
   XLXI_5_4 : GND
      port map (G=>ceros(4));
   
   XLXI_5_5 : GND
      port map (G=>ceros(5));
   
   XLXI_5_6 : GND
      port map (G=>ceros(6));
   
   XLXI_5_7 : GND
      port map (G=>ceros(7));
   
   XLXI_6 : FD
      port map (C=>ck,
                D=>dato_sal_sync,
                Q=>dato_sal_pos_sync);
   
   XLXI_7 : INV
      port map (I=>dato_sal(7),
                O=>XLXN_5);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Bin_A_BCD_MUSER_bloque_convol is
   port ( ck      : in    std_logic; 
          initZ   : in    std_logic; 
          mod_in  : in    std_logic; 
          mod_out : out   std_logic; 
          q       : out   std_logic_vector (3 downto 0));
end Bin_A_BCD_MUSER_bloque_convol;

architecture BEHAVIORAL of Bin_A_BCD_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal cero          : std_logic;
   signal init          : std_logic;
   signal uno           : std_logic;
   signal XLXN_6        : std_logic;
   signal XLXN_7        : std_logic;
   signal XLXN_8        : std_logic;
   signal XLXN_42       : std_logic;
   signal XLXN_48       : std_logic;
   signal XLXN_49       : std_logic;
   signal XLXN_50       : std_logic;
   signal mod_out_DUMMY : std_logic;
   signal q_DUMMY       : std_logic_vector (3 downto 0);
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component M2_1_HXILINX_bloque_convol
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FDR
      port ( C : in    std_logic; 
             D : in    std_logic; 
             R : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FDR : component is "BLACK_BOX";
   
   component COMPM4_HXILINX_bloque_convol
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_12 : label is "XLXI_12_51";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_49";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_50";
   attribute HU_SET of XLXI_53 : label is "XLXI_53_52";
begin
   mod_out <= mod_out_DUMMY;
   q(3 downto 0) <= q_DUMMY(3 downto 0);
   XLXI_8 : AND2
      port map (I0=>XLXN_42,
                I1=>initZ,
                O=>mod_out_DUMMY);
   
   XLXI_9 : AND2
      port map (I0=>q_DUMMY(0),
                I1=>q_DUMMY(3),
                O=>XLXN_48);
   
   XLXI_10 : XNOR2
      port map (I0=>q_DUMMY(0),
                I1=>q_DUMMY(1),
                O=>XLXN_49);
   
   XLXI_11 : INV
      port map (I=>q_DUMMY(0),
                O=>XLXN_50);
   
   XLXI_12 : M2_1_HXILINX_bloque_convol
      port map (D0=>q_DUMMY(2),
                D1=>XLXN_48,
                S0=>mod_out_DUMMY,
                O=>XLXN_6);
   
   XLXI_13 : M2_1_HXILINX_bloque_convol
      port map (D0=>q_DUMMY(1),
                D1=>XLXN_49,
                S0=>mod_out_DUMMY,
                O=>XLXN_7);
   
   XLXI_30 : M2_1_HXILINX_bloque_convol
      port map (D0=>q_DUMMY(0),
                D1=>XLXN_50,
                S0=>mod_out_DUMMY,
                O=>XLXN_8);
   
   XLXI_38 : FDR
      port map (C=>ck,
                D=>XLXN_6,
                R=>init,
                Q=>q_DUMMY(3));
   
   XLXI_39 : FDR
      port map (C=>ck,
                D=>XLXN_7,
                R=>init,
                Q=>q_DUMMY(2));
   
   XLXI_40 : FDR
      port map (C=>ck,
                D=>XLXN_8,
                R=>init,
                Q=>q_DUMMY(1));
   
   XLXI_41 : FDR
      port map (C=>ck,
                D=>mod_in,
                R=>init,
                Q=>q_DUMMY(0));
   
   XLXI_53 : COMPM4_HXILINX_bloque_convol
      port map (A0=>q_DUMMY(0),
                A1=>q_DUMMY(1),
                A2=>q_DUMMY(2),
                A3=>q_DUMMY(3),
                B0=>cero,
                B1=>cero,
                B2=>uno,
                B3=>cero,
                GT=>XLXN_42,
                LT=>open);
   
   XLXI_54 : GND
      port map (G=>cero);
   
   XLXI_55 : VCC
      port map (P=>uno);
   
   XLXI_56 : INV
      port map (I=>initZ,
                O=>init);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity regdesp8b_MUSER_bloque_convol is
   port ( ce          : in    std_logic; 
          ck          : in    std_logic; 
          data        : in    std_logic_vector (7 downto 0); 
          load        : in    std_logic; 
          sinc_reset  : in    std_logic; 
          ser_out_msb : out   std_logic);
end regdesp8b_MUSER_bloque_convol;

architecture BEHAVIORAL of regdesp8b_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal cero        : std_logic;
   signal ce_total    : std_logic;
   signal q           : std_logic_vector (7 downto 0);
   signal XLXN_26     : std_logic_vector (7 downto 0);
   component FDRE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDRE : component is "BLACK_BOX";
   
   component M2_1_HXILINX_bloque_convol
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_2_0 : label is "XLXI_2_0_60";
   attribute HU_SET of XLXI_2_1 : label is "XLXI_2_1_59";
   attribute HU_SET of XLXI_2_2 : label is "XLXI_2_2_58";
   attribute HU_SET of XLXI_2_3 : label is "XLXI_2_3_57";
   attribute HU_SET of XLXI_2_4 : label is "XLXI_2_4_56";
   attribute HU_SET of XLXI_2_5 : label is "XLXI_2_5_55";
   attribute HU_SET of XLXI_2_6 : label is "XLXI_2_6_54";
   attribute HU_SET of XLXI_2_7 : label is "XLXI_2_7_53";
begin
   XLXI_1_0 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(0),
                R=>sinc_reset,
                Q=>q(0));
   
   XLXI_1_1 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(1),
                R=>sinc_reset,
                Q=>q(1));
   
   XLXI_1_2 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(2),
                R=>sinc_reset,
                Q=>q(2));
   
   XLXI_1_3 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(3),
                R=>sinc_reset,
                Q=>q(3));
   
   XLXI_1_4 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(4),
                R=>sinc_reset,
                Q=>q(4));
   
   XLXI_1_5 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(5),
                R=>sinc_reset,
                Q=>q(5));
   
   XLXI_1_6 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(6),
                R=>sinc_reset,
                Q=>q(6));
   
   XLXI_1_7 : FDRE
      port map (C=>ck,
                CE=>ce_total,
                D=>XLXN_26(7),
                R=>sinc_reset,
                Q=>q(7));
   
   XLXI_2_0 : M2_1_HXILINX_bloque_convol
      port map (D0=>cero,
                D1=>data(0),
                S0=>load,
                O=>XLXN_26(0));
   
   XLXI_2_1 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(0),
                D1=>data(1),
                S0=>load,
                O=>XLXN_26(1));
   
   XLXI_2_2 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(1),
                D1=>data(2),
                S0=>load,
                O=>XLXN_26(2));
   
   XLXI_2_3 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(2),
                D1=>data(3),
                S0=>load,
                O=>XLXN_26(3));
   
   XLXI_2_4 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(3),
                D1=>data(4),
                S0=>load,
                O=>XLXN_26(4));
   
   XLXI_2_5 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(4),
                D1=>data(5),
                S0=>load,
                O=>XLXN_26(5));
   
   XLXI_2_6 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(5),
                D1=>data(6),
                S0=>load,
                O=>XLXN_26(6));
   
   XLXI_2_7 : M2_1_HXILINX_bloque_convol
      port map (D0=>q(6),
                D1=>data(7),
                S0=>load,
                O=>XLXN_26(7));
   
   XLXI_6 : BUF
      port map (I=>q(7),
                O=>ser_out_msb);
   
   XLXI_10 : GND
      port map (G=>cero);
   
   XLXI_19 : OR2
      port map (I0=>load,
                I1=>ce,
                O=>ce_total);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Conversor_Bin_BCD_3cifras_MUSER_bloque_convol is
   port ( ck              : in    std_logic; 
          dato_bin_entero : in    std_logic_vector (7 downto 0); 
          inicio          : in    std_logic; 
          reset           : in    std_logic; 
          cent            : out   std_logic_vector (3 downto 0); 
          dato_nuevo      : out   std_logic; 
          dec             : out   std_logic_vector (3 downto 0); 
          unid            : out   std_logic_vector (3 downto 0));
end Conversor_Bin_BCD_3cifras_MUSER_bloque_convol;

architecture BEHAVIORAL of Conversor_Bin_BCD_3cifras_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal bin_serie_msb   : std_logic;
   signal cent_tmp        : std_logic_vector (3 downto 0);
   signal ce_reg_salida   : std_logic;
   signal dec_tmp         : std_logic_vector (3 downto 0);
   signal initZ           : std_logic;
   signal load            : std_logic;
   signal unid_tmp        : std_logic_vector (3 downto 0);
   signal XLXN_8          : std_logic;
   signal XLXN_9          : std_logic;
   signal XLXN_116        : std_logic;
   signal XLXN_198        : std_logic;
   signal XLXN_199        : std_logic;
   signal XLXN_200        : std_logic;
   component Bin_A_BCD_MUSER_bloque_convol
      port ( initZ   : in    std_logic; 
             ck      : in    std_logic; 
             mod_in  : in    std_logic; 
             mod_out : out   std_logic; 
             q       : out   std_logic_vector (3 downto 0));
   end component;
   
   component regdesp8b_MUSER_bloque_convol
      port ( ck          : in    std_logic; 
             ce          : in    std_logic; 
             sinc_reset  : in    std_logic; 
             load        : in    std_logic; 
             data        : in    std_logic_vector (7 downto 0); 
             ser_out_msb : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FD4RE_HXILINX_bloque_convol
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             R  : in    std_logic; 
             Q0 : out   std_logic; 
             Q1 : out   std_logic; 
             Q2 : out   std_logic; 
             Q3 : out   std_logic);
   end component;
   
   component control_bin_bcd
      port ( CK            : in    std_logic; 
             inicio        : in    std_logic; 
             reset         : in    std_logic; 
             ce_reg_salida : out   std_logic; 
             dato_nuevo    : out   std_logic; 
             initZ         : out   std_logic; 
             load          : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_31 : label is "XLXI_31_63";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_61";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_62";
begin
   XLXI_1 : Bin_A_BCD_MUSER_bloque_convol
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>bin_serie_msb,
                mod_out=>XLXN_9,
                q(3 downto 0)=>unid_tmp(3 downto 0));
   
   XLXI_2 : Bin_A_BCD_MUSER_bloque_convol
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>XLXN_9,
                mod_out=>XLXN_8,
                q(3 downto 0)=>dec_tmp(3 downto 0));
   
   XLXI_3 : Bin_A_BCD_MUSER_bloque_convol
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>XLXN_8,
                mod_out=>open,
                q(3 downto 0)=>cent_tmp(3 downto 0));
   
   XLXI_9 : regdesp8b_MUSER_bloque_convol
      port map (ce=>initZ,
                ck=>ck,
                data(7 downto 0)=>dato_bin_entero(7 downto 0),
                load=>load,
                sinc_reset=>XLXN_116,
                ser_out_msb=>bin_serie_msb);
   
   XLXI_26 : GND
      port map (G=>XLXN_116);
   
   XLXI_31 : FD4RE_HXILINX_bloque_convol
      port map (C=>ck,
                CE=>ce_reg_salida,
                D0=>unid_tmp(0),
                D1=>unid_tmp(1),
                D2=>unid_tmp(2),
                D3=>unid_tmp(3),
                R=>XLXN_198,
                Q0=>unid(0),
                Q1=>unid(1),
                Q2=>unid(2),
                Q3=>unid(3));
   
   XLXI_32 : GND
      port map (G=>XLXN_198);
   
   XLXI_35 : FD4RE_HXILINX_bloque_convol
      port map (C=>ck,
                CE=>ce_reg_salida,
                D0=>dec_tmp(0),
                D1=>dec_tmp(1),
                D2=>dec_tmp(2),
                D3=>dec_tmp(3),
                R=>XLXN_199,
                Q0=>dec(0),
                Q1=>dec(1),
                Q2=>dec(2),
                Q3=>dec(3));
   
   XLXI_36 : GND
      port map (G=>XLXN_199);
   
   XLXI_37 : FD4RE_HXILINX_bloque_convol
      port map (C=>ck,
                CE=>ce_reg_salida,
                D0=>cent_tmp(0),
                D1=>cent_tmp(1),
                D2=>cent_tmp(2),
                D3=>cent_tmp(3),
                R=>XLXN_200,
                Q0=>cent(0),
                Q1=>cent(1),
                Q2=>cent(2),
                Q3=>cent(3));
   
   XLXI_38 : GND
      port map (G=>XLXN_200);
   
   XLXI_46 : control_bin_bcd
      port map (CK=>ck,
                inicio=>inicio,
                reset=>reset,
                ce_reg_salida=>ce_reg_salida,
                dato_nuevo=>dato_nuevo,
                initZ=>initZ,
                load=>load);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux_Ent_Sal_7seg_4cifras_MUSER_bloque_convol is
   port ( cent_ent        : in    std_logic_vector (3 downto 0); 
          cent_sal        : in    std_logic_vector (3 downto 0); 
          ck              : in    std_logic; 
          conmuta_entrada : in    std_logic; 
          conmuta_salida  : in    std_logic; 
          dec_ent         : in    std_logic_vector (3 downto 0); 
          dec_sal         : in    std_logic_vector (3 downto 0); 
          mill_ent        : in    std_logic_vector (3 downto 0); 
          mill_sal        : in    std_logic_vector (3 downto 0); 
          signo_sal       : in    std_logic; 
          unid_ent        : in    std_logic_vector (3 downto 0); 
          unid_sal        : in    std_logic_vector (3 downto 0); 
          cent            : out   std_logic_vector (3 downto 0); 
          dec             : out   std_logic_vector (3 downto 0); 
          entZ_sal        : out   std_logic; 
          mill            : out   std_logic_vector (3 downto 0); 
          punto_decimal   : out   std_logic_vector (4 downto 1); 
          unid            : out   std_logic_vector (3 downto 0));
end Mux_Ent_Sal_7seg_4cifras_MUSER_bloque_convol;

architecture BEHAVIORAL of Mux_Ent_Sal_7seg_4cifras_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal cero            : std_logic;
   signal signo_sal_def   : std_logic;
   signal XLXN_130        : std_logic;
   signal XLXN_132        : std_logic;
   signal entZ_sal_DUMMY  : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component M2_1_HXILINX_bloque_convol
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_14_0 : label is "XLXI_14_0_75";
   attribute HU_SET of XLXI_14_1 : label is "XLXI_14_1_74";
   attribute HU_SET of XLXI_14_2 : label is "XLXI_14_2_73";
   attribute HU_SET of XLXI_14_3 : label is "XLXI_14_3_72";
   attribute HU_SET of XLXI_15_0 : label is "XLXI_15_0_79";
   attribute HU_SET of XLXI_15_1 : label is "XLXI_15_1_78";
   attribute HU_SET of XLXI_15_2 : label is "XLXI_15_2_77";
   attribute HU_SET of XLXI_15_3 : label is "XLXI_15_3_76";
   attribute HU_SET of XLXI_16_0 : label is "XLXI_16_0_67";
   attribute HU_SET of XLXI_16_1 : label is "XLXI_16_1_66";
   attribute HU_SET of XLXI_16_2 : label is "XLXI_16_2_65";
   attribute HU_SET of XLXI_16_3 : label is "XLXI_16_3_64";
   attribute HU_SET of XLXI_17_0 : label is "XLXI_17_0_71";
   attribute HU_SET of XLXI_17_1 : label is "XLXI_17_1_70";
   attribute HU_SET of XLXI_17_2 : label is "XLXI_17_2_69";
   attribute HU_SET of XLXI_17_3 : label is "XLXI_17_3_68";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_80";
begin
   entZ_sal <= entZ_sal_DUMMY;
   XLXI_2 : GND
      port map (G=>XLXN_130);
   
   XLXI_5 : FDCE
      port map (C=>ck,
                CE=>XLXN_132,
                CLR=>XLXN_130,
                D=>conmuta_salida,
                Q=>entZ_sal_DUMMY);
   
   XLXI_6 : OR2
      port map (I0=>conmuta_salida,
                I1=>conmuta_entrada,
                O=>XLXN_132);
   
   XLXI_14_0 : M2_1_HXILINX_bloque_convol
      port map (D0=>dec_ent(0),
                D1=>dec_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>dec(0));
   
   XLXI_14_1 : M2_1_HXILINX_bloque_convol
      port map (D0=>dec_ent(1),
                D1=>dec_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>dec(1));
   
   XLXI_14_2 : M2_1_HXILINX_bloque_convol
      port map (D0=>dec_ent(2),
                D1=>dec_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>dec(2));
   
   XLXI_14_3 : M2_1_HXILINX_bloque_convol
      port map (D0=>dec_ent(3),
                D1=>dec_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>dec(3));
   
   XLXI_15_0 : M2_1_HXILINX_bloque_convol
      port map (D0=>unid_ent(0),
                D1=>unid_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>unid(0));
   
   XLXI_15_1 : M2_1_HXILINX_bloque_convol
      port map (D0=>unid_ent(1),
                D1=>unid_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>unid(1));
   
   XLXI_15_2 : M2_1_HXILINX_bloque_convol
      port map (D0=>unid_ent(2),
                D1=>unid_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>unid(2));
   
   XLXI_15_3 : M2_1_HXILINX_bloque_convol
      port map (D0=>unid_ent(3),
                D1=>unid_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>unid(3));
   
   XLXI_16_0 : M2_1_HXILINX_bloque_convol
      port map (D0=>cent_ent(0),
                D1=>cent_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>cent(0));
   
   XLXI_16_1 : M2_1_HXILINX_bloque_convol
      port map (D0=>cent_ent(1),
                D1=>cent_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>cent(1));
   
   XLXI_16_2 : M2_1_HXILINX_bloque_convol
      port map (D0=>cent_ent(2),
                D1=>cent_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>cent(2));
   
   XLXI_16_3 : M2_1_HXILINX_bloque_convol
      port map (D0=>cent_ent(3),
                D1=>cent_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>cent(3));
   
   XLXI_17_0 : M2_1_HXILINX_bloque_convol
      port map (D0=>mill_ent(0),
                D1=>mill_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>mill(0));
   
   XLXI_17_1 : M2_1_HXILINX_bloque_convol
      port map (D0=>mill_ent(1),
                D1=>mill_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>mill(1));
   
   XLXI_17_2 : M2_1_HXILINX_bloque_convol
      port map (D0=>mill_ent(2),
                D1=>mill_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>mill(2));
   
   XLXI_17_3 : M2_1_HXILINX_bloque_convol
      port map (D0=>mill_ent(3),
                D1=>mill_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>mill(3));
   
   XLXI_26 : GND
      port map (G=>cero);
   
   XLXI_27 : BUF
      port map (I=>signo_sal_def,
                O=>punto_decimal(1));
   
   XLXI_28 : BUF
      port map (I=>signo_sal_def,
                O=>punto_decimal(2));
   
   XLXI_29 : BUF
      port map (I=>signo_sal_def,
                O=>punto_decimal(3));
   
   XLXI_30 : BUF
      port map (I=>signo_sal_def,
                O=>punto_decimal(4));
   
   XLXI_31 : M2_1_HXILINX_bloque_convol
      port map (D0=>cero,
                D1=>signo_sal,
                S0=>entZ_sal_DUMMY,
                O=>signo_sal_def);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BCD_A_Bin_MUSER_bloque_convol is
   port ( ck  : in    std_logic; 
          d   : in    std_logic_vector (3 downto 0); 
          ldZ : in    std_logic; 
          sin : in    std_logic; 
          q0  : out   std_logic);
end BCD_A_Bin_MUSER_bloque_convol;

architecture BEHAVIORAL of BCD_A_Bin_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal c1      : std_logic;
   signal q1      : std_logic;
   signal q2      : std_logic;
   signal q3      : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_49 : std_logic;
   signal XLXN_53 : std_logic;
   signal XLXN_58 : std_logic;
   signal XLXN_59 : std_logic;
   signal XLXN_60 : std_logic;
   signal XLXN_61 : std_logic;
   signal XLXN_62 : std_logic;
   signal XLXN_82 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component M2_1_HXILINX_bloque_convol
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_12 : label is "XLXI_12_83";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_81";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_82";
   attribute HU_SET of XLXI_62 : label is "XLXI_62_84";
begin
   XLXI_9 : AND2
      port map (I0=>sin,
                I1=>q3,
                O=>XLXN_48);
   
   XLXI_12 : M2_1_HXILINX_bloque_convol
      port map (D0=>d(3),
                D1=>XLXN_48,
                S0=>ldZ,
                O=>XLXN_6);
   
   XLXI_13 : M2_1_HXILINX_bloque_convol
      port map (D0=>d(2),
                D1=>XLXN_49,
                S0=>ldZ,
                O=>XLXN_7);
   
   XLXI_30 : M2_1_HXILINX_bloque_convol
      port map (D0=>d(1),
                D1=>q2,
                S0=>ldZ,
                O=>XLXN_8);
   
   XLXI_56 : FD
      port map (C=>ck,
                D=>XLXN_6,
                Q=>q3);
   
   XLXI_57 : FD
      port map (C=>ck,
                D=>XLXN_7,
                Q=>q2);
   
   XLXI_58 : FD
      port map (C=>ck,
                D=>XLXN_8,
                Q=>q1);
   
   XLXI_60 : FD
      port map (C=>ck,
                D=>XLXN_62,
                Q=>c1);
   
   XLXI_61 : FD
      port map (C=>ck,
                D=>XLXN_53,
                Q=>q0);
   
   XLXI_62 : M2_1_HXILINX_bloque_convol
      port map (D0=>d(0),
                D1=>XLXN_82,
                S0=>ldZ,
                O=>XLXN_53);
   
   XLXI_63 : XOR2
      port map (I0=>sin,
                I1=>q3,
                O=>XLXN_49);
   
   XLXI_64 : AND2
      port map (I0=>q1,
                I1=>c1,
                O=>XLXN_59);
   
   XLXI_65 : AND2
      port map (I0=>sin,
                I1=>c1,
                O=>XLXN_58);
   
   XLXI_66 : AND2
      port map (I0=>q1,
                I1=>sin,
                O=>XLXN_60);
   
   XLXI_67 : OR3
      port map (I0=>XLXN_60,
                I1=>XLXN_58,
                I2=>XLXN_59,
                O=>XLXN_61);
   
   XLXI_68 : AND2
      port map (I0=>XLXN_61,
                I1=>ldZ,
                O=>XLXN_62);
   
   XLXI_82 : XOR3
      port map (I0=>sin,
                I1=>c1,
                I2=>q1,
                O=>XLXN_82);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Conversor_BCD_Bin_MUSER_bloque_convol is
   port ( cent       : in    std_logic_vector (3 downto 0); 
          ck         : in    std_logic; 
          dec        : in    std_logic_vector (3 downto 0); 
          inicio     : in    std_logic; 
          reset      : in    std_logic; 
          unid       : in    std_logic_vector (3 downto 0); 
          dato_bin   : out   std_logic_vector (7 downto 0); 
          dato_nuevo : out   std_logic);
end Conversor_BCD_Bin_MUSER_bloque_convol;

architecture BEHAVIORAL of Conversor_BCD_Bin_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal ce_reg_salida : std_logic;
   signal dato_bin_lsb  : std_logic;
   signal dato_desp     : std_logic_vector (7 downto 0);
   signal ldZ           : std_logic;
   signal XLXN_14       : std_logic;
   signal XLXN_15       : std_logic;
   signal XLXN_17       : std_logic;
   signal XLXN_72       : std_logic;
   signal XLXN_77       : std_logic;
   component BCD_A_Bin_MUSER_bloque_convol
      port ( ck  : in    std_logic; 
             ldZ : in    std_logic; 
             sin : in    std_logic; 
             d   : in    std_logic_vector (3 downto 0); 
             q0  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FD8RE_HXILINX_bloque_convol
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic_vector (7 downto 0); 
             R  : in    std_logic; 
             Q  : out   std_logic_vector (7 downto 0));
   end component;
   
   component control_bcd_bin
      port ( CK            : in    std_logic; 
             inicio        : in    std_logic; 
             reset         : in    std_logic; 
             ce_reg_salida : out   std_logic; 
             dato_nuevo    : out   std_logic; 
             ldZ           : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_85";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_86";
begin
   XLXI_1 : BCD_A_Bin_MUSER_bloque_convol
      port map (ck=>ck,
                d(3 downto 0)=>cent(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_17,
                q0=>XLXN_14);
   
   XLXI_2 : BCD_A_Bin_MUSER_bloque_convol
      port map (ck=>ck,
                d(3 downto 0)=>dec(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_14,
                q0=>XLXN_15);
   
   XLXI_3 : BCD_A_Bin_MUSER_bloque_convol
      port map (ck=>ck,
                d(3 downto 0)=>unid(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_15,
                q0=>dato_bin_lsb);
   
   XLXI_4 : GND
      port map (G=>XLXN_17);
   
   XLXI_16 : FD8RE_HXILINX_bloque_convol
      port map (C=>ck,
                CE=>ce_reg_salida,
                D(7 downto 0)=>dato_desp(7 downto 0),
                R=>XLXN_72,
                Q(7 downto 0)=>dato_bin(7 downto 0));
   
   XLXI_19 : GND
      port map (G=>XLXN_72);
   
   XLXI_22 : control_bcd_bin
      port map (CK=>ck,
                inicio=>inicio,
                reset=>reset,
                ce_reg_salida=>ce_reg_salida,
                dato_nuevo=>dato_nuevo,
                ldZ=>ldZ);
   
   XLXI_23 : FD8RE_HXILINX_bloque_convol
      port map (C=>ck,
                CE=>ldZ,
                D(7)=>dato_bin_lsb,
                D(6 downto 0)=>dato_desp(7 downto 1),
                R=>XLXN_77,
                Q(7 downto 0)=>dato_desp(7 downto 0));
   
   XLXI_24 : GND
      port map (G=>XLXN_77);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reg_desp_4_cifras_MUSER_bloque_convol is
   port ( ce         : in    std_logic; 
          ck         : in    std_logic; 
          entrada    : in    std_logic_vector (3 downto 0); 
          sinc_reset : in    std_logic; 
          dato1      : out   std_logic_vector (3 downto 0); 
          dato2      : out   std_logic_vector (3 downto 0); 
          dato3      : out   std_logic_vector (3 downto 0); 
          dato4      : out   std_logic_vector (3 downto 0));
end reg_desp_4_cifras_MUSER_bloque_convol;

architecture BEHAVIORAL of reg_desp_4_cifras_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   signal dato1_DUMMY : std_logic_vector (3 downto 0);
   signal dato2_DUMMY : std_logic_vector (3 downto 0);
   signal dato3_DUMMY : std_logic_vector (3 downto 0);
   component FDRE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDRE : component is "BLACK_BOX";
   
begin
   dato1(3 downto 0) <= dato1_DUMMY(3 downto 0);
   dato2(3 downto 0) <= dato2_DUMMY(3 downto 0);
   dato3(3 downto 0) <= dato3_DUMMY(3 downto 0);
   XLXI_18_0 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>entrada(0),
                R=>sinc_reset,
                Q=>dato1_DUMMY(0));
   
   XLXI_18_1 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>entrada(1),
                R=>sinc_reset,
                Q=>dato1_DUMMY(1));
   
   XLXI_18_2 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>entrada(2),
                R=>sinc_reset,
                Q=>dato1_DUMMY(2));
   
   XLXI_18_3 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>entrada(3),
                R=>sinc_reset,
                Q=>dato1_DUMMY(3));
   
   XLXI_19_0 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato1_DUMMY(0),
                R=>sinc_reset,
                Q=>dato2_DUMMY(0));
   
   XLXI_19_1 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato1_DUMMY(1),
                R=>sinc_reset,
                Q=>dato2_DUMMY(1));
   
   XLXI_19_2 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato1_DUMMY(2),
                R=>sinc_reset,
                Q=>dato2_DUMMY(2));
   
   XLXI_19_3 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato1_DUMMY(3),
                R=>sinc_reset,
                Q=>dato2_DUMMY(3));
   
   XLXI_20_0 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato2_DUMMY(0),
                R=>sinc_reset,
                Q=>dato3_DUMMY(0));
   
   XLXI_20_1 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato2_DUMMY(1),
                R=>sinc_reset,
                Q=>dato3_DUMMY(1));
   
   XLXI_20_2 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato2_DUMMY(2),
                R=>sinc_reset,
                Q=>dato3_DUMMY(2));
   
   XLXI_20_3 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato2_DUMMY(3),
                R=>sinc_reset,
                Q=>dato3_DUMMY(3));
   
   XLXI_21_0 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato3_DUMMY(0),
                R=>sinc_reset,
                Q=>dato4(0));
   
   XLXI_21_1 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato3_DUMMY(1),
                R=>sinc_reset,
                Q=>dato4(1));
   
   XLXI_21_2 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato3_DUMMY(2),
                R=>sinc_reset,
                Q=>dato4(2));
   
   XLXI_21_3 : FDRE
      port map (C=>ck,
                CE=>ce,
                D=>dato3_DUMMY(3),
                R=>sinc_reset,
                Q=>dato4(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Comp_Num_Letra_MUSER_bloque_convol is
   port ( ck            : in    std_logic; 
          cod_tecla     : in    std_logic_vector (3 downto 0); 
          entZ_sal      : in    std_logic; 
          tecla_pulsada : in    std_logic; 
          carga_cifra   : out   std_logic; 
          cifra         : out   std_logic_vector (3 downto 0); 
          letra_a       : out   std_logic; 
          letra_c       : out   std_logic);
end Comp_Num_Letra_MUSER_bloque_convol;

architecture BEHAVIORAL of Comp_Num_Letra_MUSER_bloque_convol is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal cero           : std_logic;
   signal ce_carga_cifra : std_logic;
   signal ce_letra_a     : std_logic;
   signal ce_letra_c     : std_logic;
   signal uno            : std_logic;
   signal XLXN_19        : std_logic;
   signal XLXN_64        : std_logic;
   signal XLXN_169       : std_logic;
   signal XLXN_170       : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component COMPM4_HXILINX_bloque_convol
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component FD4RE_HXILINX_bloque_convol
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             R  : in    std_logic; 
             Q0 : out   std_logic; 
             Q1 : out   std_logic; 
             Q2 : out   std_logic; 
             Q3 : out   std_logic);
   end component;
   
   component COMP4_HXILINX_bloque_convol
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             EQ : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_88";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_89";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_87";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_90";
begin
   XLXI_2 : GND
      port map (G=>cero);
   
   XLXI_3 : VCC
      port map (P=>uno);
   
   XLXI_4 : COMPM4_HXILINX_bloque_convol
      port map (A0=>cod_tecla(0),
                A1=>cod_tecla(1),
                A2=>cod_tecla(2),
                A3=>cod_tecla(3),
                B0=>cero,
                B1=>uno,
                B2=>cero,
                B3=>uno,
                GT=>open,
                LT=>XLXN_19);
   
   XLXI_6 : FD
      port map (C=>ck,
                D=>ce_carga_cifra,
                Q=>carga_cifra);
   
   XLXI_14 : FD4RE_HXILINX_bloque_convol
      port map (C=>ck,
                CE=>ce_carga_cifra,
                D0=>cod_tecla(0),
                D1=>cod_tecla(1),
                D2=>cod_tecla(2),
                D3=>cod_tecla(3),
                R=>XLXN_64,
                Q0=>cifra(0),
                Q1=>cifra(1),
                Q2=>cifra(2),
                Q3=>cifra(3));
   
   XLXI_15 : GND
      port map (G=>XLXN_64);
   
   XLXI_24 : COMP4_HXILINX_bloque_convol
      port map (A0=>cod_tecla(0),
                A1=>cod_tecla(1),
                A2=>cod_tecla(2),
                A3=>cod_tecla(3),
                B0=>cero,
                B1=>uno,
                B2=>cero,
                B3=>uno,
                EQ=>XLXN_169);
   
   XLXI_26 : FD
      port map (C=>ck,
                D=>ce_letra_a,
                Q=>letra_a);
   
   XLXI_35 : COMP4_HXILINX_bloque_convol
      port map (A0=>cod_tecla(0),
                A1=>cod_tecla(1),
                A2=>cod_tecla(2),
                A3=>cod_tecla(3),
                B0=>cero,
                B1=>cero,
                B2=>uno,
                B3=>uno,
                EQ=>XLXN_170);
   
   XLXI_36 : AND2
      port map (I0=>tecla_pulsada,
                I1=>XLXN_170,
                O=>ce_letra_c);
   
   XLXI_37 : FD
      port map (C=>ck,
                D=>ce_letra_c,
                Q=>letra_c);
   
   XLXI_40 : AND3B1
      port map (I0=>entZ_sal,
                I1=>tecla_pulsada,
                I2=>XLXN_169,
                O=>ce_letra_a);
   
   XLXI_42 : AND3B1
      port map (I0=>entZ_sal,
                I1=>tecla_pulsada,
                I2=>XLXN_19,
                O=>ce_carga_cifra);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bloque_convol is
   port ( ck            : in    std_logic; 
          cod_tecla     : in    std_logic_vector (3 downto 0); 
          reset         : in    std_logic; 
          tecla_pulsada : in    std_logic; 
          ventana       : in    std_logic_vector (1 downto 0); 
          display1      : out   std_logic_vector (3 downto 0); 
          display2      : out   std_logic_vector (3 downto 0); 
          display3      : out   std_logic_vector (3 downto 0); 
          display4      : out   std_logic_vector (3 downto 0); 
          punto_decimal : out   std_logic_vector (4 downto 1));
end bloque_convol;

architecture BEHAVIORAL of bloque_convol is
   attribute BOX_TYPE   : string ;
   signal carga_cifra       : std_logic;
   signal ceros             : std_logic_vector (13 downto 0);
   signal cifra             : std_logic_vector (3 downto 0);
   signal dato_ent          : std_logic_vector (7 downto 0);
   signal dato_nuevo        : std_logic;
   signal dato_sal          : std_logic_vector (7 downto 0);
   signal dato_sal_pos      : std_logic_vector (7 downto 0);
   signal dato_sal_pos_sync : std_logic;
   signal dato_sal_sync     : std_logic;
   signal entZ_sal          : std_logic;
   signal ent_cent          : std_logic_vector (3 downto 0);
   signal ent_dec           : std_logic_vector (3 downto 0);
   signal ent_unid          : std_logic_vector (3 downto 0);
   signal letra_a           : std_logic;
   signal letra_c           : std_logic;
   signal salida_bcd_nueva  : std_logic;
   signal sal_cent          : std_logic_vector (3 downto 0);
   signal sal_dec           : std_logic_vector (3 downto 0);
   signal sal_unid          : std_logic_vector (3 downto 0);
   signal signo_sal         : std_logic;
   component Conversor_BCD_Bin_MUSER_bloque_convol
      port ( unid       : in    std_logic_vector (3 downto 0); 
             dec        : in    std_logic_vector (3 downto 0); 
             cent       : in    std_logic_vector (3 downto 0); 
             ck         : in    std_logic; 
             inicio     : in    std_logic; 
             reset      : in    std_logic; 
             dato_nuevo : out   std_logic; 
             dato_bin   : out   std_logic_vector (7 downto 0));
   end component;
   
   component Comp_Num_Letra_MUSER_bloque_convol
      port ( tecla_pulsada : in    std_logic; 
             ck            : in    std_logic; 
             cod_tecla     : in    std_logic_vector (3 downto 0); 
             entZ_sal      : in    std_logic; 
             carga_cifra   : out   std_logic; 
             letra_a       : out   std_logic; 
             letra_c       : out   std_logic; 
             cifra         : out   std_logic_vector (3 downto 0));
   end component;
   
   component reg_desp_4_cifras_MUSER_bloque_convol
      port ( ck         : in    std_logic; 
             ce         : in    std_logic; 
             entrada    : in    std_logic_vector (3 downto 0); 
             sinc_reset : in    std_logic; 
             dato1      : out   std_logic_vector (3 downto 0); 
             dato2      : out   std_logic_vector (3 downto 0); 
             dato3      : out   std_logic_vector (3 downto 0); 
             dato4      : out   std_logic_vector (3 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component Mux_Ent_Sal_7seg_4cifras_MUSER_bloque_convol
      port ( conmuta_salida  : in    std_logic; 
             cent_ent        : in    std_logic_vector (3 downto 0); 
             dec_ent         : in    std_logic_vector (3 downto 0); 
             conmuta_entrada : in    std_logic; 
             ck              : in    std_logic; 
             unid_ent        : in    std_logic_vector (3 downto 0); 
             mill_ent        : in    std_logic_vector (3 downto 0); 
             unid_sal        : in    std_logic_vector (3 downto 0); 
             dec_sal         : in    std_logic_vector (3 downto 0); 
             cent_sal        : in    std_logic_vector (3 downto 0); 
             mill_sal        : in    std_logic_vector (3 downto 0); 
             signo_sal       : in    std_logic; 
             punto_decimal   : out   std_logic_vector (4 downto 1); 
             entZ_sal        : out   std_logic; 
             unid            : out   std_logic_vector (3 downto 0); 
             dec             : out   std_logic_vector (3 downto 0); 
             cent            : out   std_logic_vector (3 downto 0); 
             mill            : out   std_logic_vector (3 downto 0));
   end component;
   
   component Conversor_Bin_BCD_3cifras_MUSER_bloque_convol
      port ( ck              : in    std_logic; 
             dato_bin_entero : in    std_logic_vector (7 downto 0); 
             inicio          : in    std_logic; 
             reset           : in    std_logic; 
             dato_nuevo      : out   std_logic; 
             unid            : out   std_logic_vector (3 downto 0); 
             dec             : out   std_logic_vector (3 downto 0); 
             cent            : out   std_logic_vector (3 downto 0));
   end component;
   
   component bCalcSignoMag_MUSER_bloque_convol
      port ( dato_sal          : in    std_logic_vector (7 downto 0); 
             dato_sal_sync     : in    std_logic; 
             ck                : in    std_logic; 
             signo_sal         : out   std_logic; 
             dato_sal_pos_sync : out   std_logic; 
             dato_sal_pos      : out   std_logic_vector (7 downto 0));
   end component;
   
   component bCalcConv_MUSER_bloque_convol
      port ( dato_nuevo    : in    std_logic; 
             ck            : in    std_logic; 
             reset         : in    std_logic; 
             dato_ent      : in    std_logic_vector (7 downto 0); 
             ventana       : in    std_logic_vector (1 downto 0); 
             dat_sal       : out   std_logic_vector (7 downto 0); 
             dato_sal_sync : out   std_logic);
   end component;
   
begin
   XLXI_1 : Conversor_BCD_Bin_MUSER_bloque_convol
      port map (cent(3 downto 0)=>ent_cent(3 downto 0),
                ck=>ck,
                dec(3 downto 0)=>ent_dec(3 downto 0),
                inicio=>letra_a,
                reset=>reset,
                unid(3 downto 0)=>ent_unid(3 downto 0),
                dato_bin(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo);
   
   XLXI_3 : Comp_Num_Letra_MUSER_bloque_convol
      port map (ck=>ck,
                cod_tecla(3 downto 0)=>cod_tecla(3 downto 0),
                entZ_sal=>entZ_sal,
                tecla_pulsada=>tecla_pulsada,
                carga_cifra=>carga_cifra,
                cifra(3 downto 0)=>cifra(3 downto 0),
                letra_a=>letra_a,
                letra_c=>letra_c);
   
   XLXI_6 : reg_desp_4_cifras_MUSER_bloque_convol
      port map (ce=>carga_cifra,
                ck=>ck,
                entrada(3 downto 0)=>cifra(3 downto 0),
                sinc_reset=>dato_nuevo,
                dato1(3 downto 0)=>ent_unid(3 downto 0),
                dato2(3 downto 0)=>ent_dec(3 downto 0),
                dato3(3 downto 0)=>ent_cent(3 downto 0),
                dato4=>open);
   
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
   
   XLXI_17_8 : GND
      port map (G=>ceros(8));
   
   XLXI_17_9 : GND
      port map (G=>ceros(9));
   
   XLXI_17_10 : GND
      port map (G=>ceros(10));
   
   XLXI_17_11 : GND
      port map (G=>ceros(11));
   
   XLXI_17_12 : GND
      port map (G=>ceros(12));
   
   XLXI_17_13 : GND
      port map (G=>ceros(13));
   
   XLXI_32 : Mux_Ent_Sal_7seg_4cifras_MUSER_bloque_convol
      port map (cent_ent(3 downto 0)=>ent_cent(3 downto 0),
                cent_sal(3 downto 0)=>sal_cent(3 downto 0),
                ck=>ck,
                conmuta_entrada=>letra_c,
                conmuta_salida=>salida_bcd_nueva,
                dec_ent(3 downto 0)=>ent_dec(3 downto 0),
                dec_sal(3 downto 0)=>sal_dec(3 downto 0),
                mill_ent(3 downto 0)=>ceros(3 downto 0),
                mill_sal(3 downto 0)=>ceros(3 downto 0),
                signo_sal=>signo_sal,
                unid_ent(3 downto 0)=>ent_unid(3 downto 0),
                unid_sal(3 downto 0)=>sal_unid(3 downto 0),
                cent(3 downto 0)=>display2(3 downto 0),
                dec(3 downto 0)=>display3(3 downto 0),
                entZ_sal=>entZ_sal,
                mill(3 downto 0)=>display1(3 downto 0),
                punto_decimal(4 downto 1)=>punto_decimal(4 downto 1),
                unid(3 downto 0)=>display4(3 downto 0));
   
   XLXI_33 : Conversor_Bin_BCD_3cifras_MUSER_bloque_convol
      port map (ck=>ck,
                dato_bin_entero(7 downto 0)=>dato_sal_pos(7 downto 0),
                inicio=>dato_sal_pos_sync,
                reset=>reset,
                cent(3 downto 0)=>sal_cent(3 downto 0),
                dato_nuevo=>salida_bcd_nueva,
                dec(3 downto 0)=>sal_dec(3 downto 0),
                unid(3 downto 0)=>sal_unid(3 downto 0));
   
   XLXI_34 : bCalcSignoMag_MUSER_bloque_convol
      port map (ck=>ck,
                dato_sal(7 downto 0)=>dato_sal(7 downto 0),
                dato_sal_sync=>dato_sal_sync,
                dato_sal_pos(7 downto 0)=>dato_sal_pos(7 downto 0),
                dato_sal_pos_sync=>dato_sal_pos_sync,
                signo_sal=>signo_sal);
   
   XLXI_36 : bCalcConv_MUSER_bloque_convol
      port map (ck=>ck,
                dato_ent(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo,
                reset=>reset,
                ventana(1 downto 0)=>ventana(1 downto 0),
                dato_sal_sync=>dato_sal_sync,
                dat_sal(7 downto 0)=>dato_sal(7 downto 0));
   
end BEHAVIORAL;


