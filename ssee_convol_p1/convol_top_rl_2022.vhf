--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : convol_top_rl_2022.vhf
-- /___/   /\     Timestamp : 11/03/2024 13:07:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/convol_top_rl_2022.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/convol_top_rl_2022.sch
--Design Name: convol_top_rl_2022
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM4_HXILINX_convol_top_rl_2022 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM4_HXILINX_convol_top_rl_2022 is
  
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
end COMPM4_HXILINX_convol_top_rl_2022;

architecture COMPM4_HXILINX_convol_top_rl_2022_V of COMPM4_HXILINX_convol_top_rl_2022 is
  signal a_tmp: std_logic_vector(3 downto 0);
  signal b_tmp: std_logic_vector(3 downto 0);

begin

   a_tmp <= A3&A2&A1&A0;
   b_tmp <= B3&B2&B1&B0;
   
   GT <= '1' when (a_tmp > b_tmp ) else '0';
   LT <= '1' when (a_tmp < b_tmp ) else '0';
     
end COMPM4_HXILINX_convol_top_rl_2022_V;
----- CELL FD4RE_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4RE_HXILINX_convol_top_rl_2022 is
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
end FD4RE_HXILINX_convol_top_rl_2022;

architecture Behavioral of FD4RE_HXILINX_convol_top_rl_2022 is

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

----- CELL IFD4_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD4_HXILINX_convol_top_rl_2022 is
port (
    Q0  : out STD_LOGIC;
    Q1  : out STD_LOGIC;
    Q2  : out STD_LOGIC;
    Q3  : out STD_LOGIC;
    C   : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC
    );

attribute IOB         : string ;
attribute IOB of Q0 : signal is "True";
attribute IOB of Q1 : signal is "True";
attribute IOB of Q2 : signal is "True";
attribute IOB of Q3 : signal is "True";

end IFD4_HXILINX_convol_top_rl_2022;

architecture Behavioral of IFD4_HXILINX_convol_top_rl_2022 is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
  end if;
end process;


end Behavioral;

----- CELL IFD8_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD8_HXILINX_convol_top_rl_2022 is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );

attribute IOB         : string ;
attribute IOB of Q : signal is "True";

end IFD8_HXILINX_convol_top_rl_2022;

architecture Behavioral of IFD8_HXILINX_convol_top_rl_2022 is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL COMP4_HXILINX_convol_top_rl_2022 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_convol_top_rl_2022 is
  
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
end COMP4_HXILINX_convol_top_rl_2022;

architecture COMP4_HXILINX_convol_top_rl_2022_V of COMP4_HXILINX_convol_top_rl_2022 is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_convol_top_rl_2022_V;
----- CELL M8_1E_HXILINX_convol_top_rl_2022 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_convol_top_rl_2022 is
  
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
end M8_1E_HXILINX_convol_top_rl_2022;

architecture M8_1E_HXILINX_convol_top_rl_2022_V of M8_1E_HXILINX_convol_top_rl_2022 is
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
end M8_1E_HXILINX_convol_top_rl_2022_V;
----- CELL OFD8_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OFD8_HXILINX_convol_top_rl_2022 is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );

attribute IOB         : string ;
attribute IOB of Q : signal is "True";

end OFD8_HXILINX_convol_top_rl_2022;

architecture Behavioral of OFD8_HXILINX_convol_top_rl_2022 is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL OR8_HXILINX_convol_top_rl_2022 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR8_HXILINX_convol_top_rl_2022 is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic
  );
end OR8_HXILINX_convol_top_rl_2022;

architecture OR8_HXILINX_convol_top_rl_2022_V of OR8_HXILINX_convol_top_rl_2022 is
begin
  O <= (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end OR8_HXILINX_convol_top_rl_2022_V;
----- CELL FD4CE_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_convol_top_rl_2022 is
port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC
    );
end FD4CE_HXILINX_convol_top_rl_2022;

architecture Behavioral of FD4CE_HXILINX_convol_top_rl_2022 is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q3 <= '0';
    Q2 <= '0';
    Q1 <= '0';
    Q0 <= '0';
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;

----- CELL OFD_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OFD_HXILINX_convol_top_rl_2022 is
generic(
    INIT : bit := '0'
    );

port (
    Q  : out STD_LOGIC;
    C  : in STD_LOGIC;
    D  : in STD_LOGIC
    );
attribute IOB         : string ;
attribute IOB of Q : signal is "True";	

end OFD_HXILINX_convol_top_rl_2022;

architecture Behavioral of OFD_HXILINX_convol_top_rl_2022 is
signal q_tmp : std_logic := TO_X01(INIT);
begin
  Q <= q_tmp;

process(C)
begin
  if (C'event and C = '1') then
      q_tmp <= D;
  end if;
end process;


end Behavioral;

----- CELL FD8RE_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_convol_top_rl_2022 is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_convol_top_rl_2022;

architecture Behavioral of FD8RE_HXILINX_convol_top_rl_2022 is

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

----- CELL M2_1_HXILINX_convol_top_rl_2022 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_convol_top_rl_2022 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_convol_top_rl_2022;

architecture M2_1_HXILINX_convol_top_rl_2022_V of M2_1_HXILINX_convol_top_rl_2022 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_convol_top_rl_2022_V;
----- CELL IFD_HXILINX_convol_top_rl_2022 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD_HXILINX_convol_top_rl_2022 is
generic(
    INIT : bit := '0'
    );

port (
    Q  : out STD_LOGIC;
    C  : in STD_LOGIC;
    D  : in STD_LOGIC
    );
attribute IOB         : string ;
attribute IOB of Q : signal is "True";	

end IFD_HXILINX_convol_top_rl_2022;

architecture Behavioral of IFD_HXILINX_convol_top_rl_2022 is
signal q_tmp : std_logic := TO_X01(INIT);

begin
     Q <= q_tmp;

process(C)

begin

  if (C'event and C = '1') then
      q_tmp <= D;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcX_i_MUSER_convol_top_rl_2022 is
   port ( ck         : in    std_logic; 
          dato_ent   : in    std_logic_vector (7 downto 0); 
          dato_nuevo : in    std_logic; 
          indice     : in    std_logic_vector (3 downto 0); 
          x_i        : out   std_logic_vector (7 downto 0));
end bCalcX_i_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of bCalcX_i_MUSER_convol_top_rl_2022 is
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
   component M8_1E_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_9_0 : label is "XLXI_9_0_187";
   attribute HU_SET of XLXI_9_1 : label is "XLXI_9_1_186";
   attribute HU_SET of XLXI_9_2 : label is "XLXI_9_2_185";
   attribute HU_SET of XLXI_9_3 : label is "XLXI_9_3_184";
   attribute HU_SET of XLXI_9_4 : label is "XLXI_9_4_183";
   attribute HU_SET of XLXI_9_5 : label is "XLXI_9_5_182";
   attribute HU_SET of XLXI_9_6 : label is "XLXI_9_6_181";
   attribute HU_SET of XLXI_9_7 : label is "XLXI_9_7_180";
begin
   XLXI_9_0 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_1 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_2 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_3 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_4 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_5 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_6 : M8_1E_HXILINX_convol_top_rl_2022
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
   
   XLXI_9_7 : M8_1E_HXILINX_convol_top_rl_2022
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

entity bCalcConv_MUSER_convol_top_rl_2022 is
   port ( ck            : in    std_logic; 
          dato_ent      : in    std_logic_vector (7 downto 0); 
          dato_nuevo    : in    std_logic; 
          reset         : in    std_logic; 
          dato_sal_sync : out   std_logic; 
          dat_sal       : out   std_logic_vector (7 downto 0));
end bCalcConv_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of bCalcConv_MUSER_convol_top_rl_2022 is
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
   component bCalcX_i_MUSER_convol_top_rl_2022
      port ( dato_nuevo : in    std_logic; 
             ck         : in    std_logic; 
             dato_ent   : in    std_logic_vector (7 downto 0); 
             indice     : in    std_logic_vector (3 downto 0); 
             x_i        : out   std_logic_vector (7 downto 0));
   end component;
   
   component bIpMemory
      port ( addra : in    std_logic_vector (2 downto 0); 
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
   XLXI_2 : bCalcX_i_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                dato_ent(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo,
                indice(3 downto 0)=>indice(3 downto 0),
                x_i(7 downto 0)=>x_i(7 downto 0));
   
   XLXI_5 : bIpMemory
      port map (addra(2 downto 0)=>indice(2 downto 0),
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcSignoMag_MUSER_convol_top_rl_2022 is
   port ( ck                : in    std_logic; 
          dato_sal          : in    std_logic_vector (7 downto 0); 
          dato_sal_sync     : in    std_logic; 
          dato_sal_pos      : out   std_logic_vector (7 downto 0); 
          dato_sal_pos_sync : out   std_logic; 
          signo_sal         : out   std_logic);
end bCalcSignoMag_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of bCalcSignoMag_MUSER_convol_top_rl_2022 is
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

entity Bin_A_BCD_MUSER_convol_top_rl_2022 is
   port ( ck      : in    std_logic; 
          initZ   : in    std_logic; 
          mod_in  : in    std_logic; 
          mod_out : out   std_logic; 
          q       : out   std_logic_vector (3 downto 0));
end Bin_A_BCD_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of Bin_A_BCD_MUSER_convol_top_rl_2022 is
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
   
   component M2_1_HXILINX_convol_top_rl_2022
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
   
   component COMPM4_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_12 : label is "XLXI_12_190";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_188";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_189";
   attribute HU_SET of XLXI_53 : label is "XLXI_53_191";
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
   
   XLXI_12 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q_DUMMY(2),
                D1=>XLXN_48,
                S0=>mod_out_DUMMY,
                O=>XLXN_6);
   
   XLXI_13 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q_DUMMY(1),
                D1=>XLXN_49,
                S0=>mod_out_DUMMY,
                O=>XLXN_7);
   
   XLXI_30 : M2_1_HXILINX_convol_top_rl_2022
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
   
   XLXI_53 : COMPM4_HXILINX_convol_top_rl_2022
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

entity regdesp8b_MUSER_convol_top_rl_2022 is
   port ( ce          : in    std_logic; 
          ck          : in    std_logic; 
          data        : in    std_logic_vector (7 downto 0); 
          load        : in    std_logic; 
          sinc_reset  : in    std_logic; 
          ser_out_msb : out   std_logic);
end regdesp8b_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of regdesp8b_MUSER_convol_top_rl_2022 is
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
   
   component M2_1_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_2_0 : label is "XLXI_2_0_199";
   attribute HU_SET of XLXI_2_1 : label is "XLXI_2_1_198";
   attribute HU_SET of XLXI_2_2 : label is "XLXI_2_2_197";
   attribute HU_SET of XLXI_2_3 : label is "XLXI_2_3_196";
   attribute HU_SET of XLXI_2_4 : label is "XLXI_2_4_195";
   attribute HU_SET of XLXI_2_5 : label is "XLXI_2_5_194";
   attribute HU_SET of XLXI_2_6 : label is "XLXI_2_6_193";
   attribute HU_SET of XLXI_2_7 : label is "XLXI_2_7_192";
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
   
   XLXI_2_0 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>cero,
                D1=>data(0),
                S0=>load,
                O=>XLXN_26(0));
   
   XLXI_2_1 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q(0),
                D1=>data(1),
                S0=>load,
                O=>XLXN_26(1));
   
   XLXI_2_2 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q(1),
                D1=>data(2),
                S0=>load,
                O=>XLXN_26(2));
   
   XLXI_2_3 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q(2),
                D1=>data(3),
                S0=>load,
                O=>XLXN_26(3));
   
   XLXI_2_4 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q(3),
                D1=>data(4),
                S0=>load,
                O=>XLXN_26(4));
   
   XLXI_2_5 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q(4),
                D1=>data(5),
                S0=>load,
                O=>XLXN_26(5));
   
   XLXI_2_6 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>q(5),
                D1=>data(6),
                S0=>load,
                O=>XLXN_26(6));
   
   XLXI_2_7 : M2_1_HXILINX_convol_top_rl_2022
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

entity Conversor_Bin_BCD_3cifras_MUSER_convol_top_rl_2022 is
   port ( ck              : in    std_logic; 
          dato_bin_entero : in    std_logic_vector (7 downto 0); 
          inicio          : in    std_logic; 
          reset           : in    std_logic; 
          cent            : out   std_logic_vector (3 downto 0); 
          dato_nuevo      : out   std_logic; 
          dec             : out   std_logic_vector (3 downto 0); 
          unid            : out   std_logic_vector (3 downto 0));
end Conversor_Bin_BCD_3cifras_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of Conversor_Bin_BCD_3cifras_MUSER_convol_top_rl_2022 is
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
   component Bin_A_BCD_MUSER_convol_top_rl_2022
      port ( mod_out : out   std_logic; 
             q       : out   std_logic_vector (3 downto 0); 
             mod_in  : in    std_logic; 
             initZ   : in    std_logic; 
             ck      : in    std_logic);
   end component;
   
   component regdesp8b_MUSER_convol_top_rl_2022
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
   
   component FD4RE_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_31 : label is "XLXI_31_202";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_200";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_201";
begin
   XLXI_1 : Bin_A_BCD_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>bin_serie_msb,
                mod_out=>XLXN_9,
                q(3 downto 0)=>unid_tmp(3 downto 0));
   
   XLXI_2 : Bin_A_BCD_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>XLXN_9,
                mod_out=>XLXN_8,
                q(3 downto 0)=>dec_tmp(3 downto 0));
   
   XLXI_3 : Bin_A_BCD_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>XLXN_8,
                mod_out=>open,
                q(3 downto 0)=>cent_tmp(3 downto 0));
   
   XLXI_9 : regdesp8b_MUSER_convol_top_rl_2022
      port map (ce=>initZ,
                ck=>ck,
                data(7 downto 0)=>dato_bin_entero(7 downto 0),
                load=>load,
                sinc_reset=>XLXN_116,
                ser_out_msb=>bin_serie_msb);
   
   XLXI_26 : GND
      port map (G=>XLXN_116);
   
   XLXI_31 : FD4RE_HXILINX_convol_top_rl_2022
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
   
   XLXI_35 : FD4RE_HXILINX_convol_top_rl_2022
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
   
   XLXI_37 : FD4RE_HXILINX_convol_top_rl_2022
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

entity Mux_Ent_Sal_7seg_4cifras_MUSER_convol_top_rl_2022 is
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
end Mux_Ent_Sal_7seg_4cifras_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of Mux_Ent_Sal_7seg_4cifras_MUSER_convol_top_rl_2022 is
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
   
   component M2_1_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_14_0 : label is "XLXI_14_0_214";
   attribute HU_SET of XLXI_14_1 : label is "XLXI_14_1_213";
   attribute HU_SET of XLXI_14_2 : label is "XLXI_14_2_212";
   attribute HU_SET of XLXI_14_3 : label is "XLXI_14_3_211";
   attribute HU_SET of XLXI_15_0 : label is "XLXI_15_0_218";
   attribute HU_SET of XLXI_15_1 : label is "XLXI_15_1_217";
   attribute HU_SET of XLXI_15_2 : label is "XLXI_15_2_216";
   attribute HU_SET of XLXI_15_3 : label is "XLXI_15_3_215";
   attribute HU_SET of XLXI_16_0 : label is "XLXI_16_0_206";
   attribute HU_SET of XLXI_16_1 : label is "XLXI_16_1_205";
   attribute HU_SET of XLXI_16_2 : label is "XLXI_16_2_204";
   attribute HU_SET of XLXI_16_3 : label is "XLXI_16_3_203";
   attribute HU_SET of XLXI_17_0 : label is "XLXI_17_0_210";
   attribute HU_SET of XLXI_17_1 : label is "XLXI_17_1_209";
   attribute HU_SET of XLXI_17_2 : label is "XLXI_17_2_208";
   attribute HU_SET of XLXI_17_3 : label is "XLXI_17_3_207";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_219";
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
   
   XLXI_14_0 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>dec_ent(0),
                D1=>dec_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>dec(0));
   
   XLXI_14_1 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>dec_ent(1),
                D1=>dec_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>dec(1));
   
   XLXI_14_2 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>dec_ent(2),
                D1=>dec_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>dec(2));
   
   XLXI_14_3 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>dec_ent(3),
                D1=>dec_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>dec(3));
   
   XLXI_15_0 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>unid_ent(0),
                D1=>unid_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>unid(0));
   
   XLXI_15_1 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>unid_ent(1),
                D1=>unid_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>unid(1));
   
   XLXI_15_2 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>unid_ent(2),
                D1=>unid_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>unid(2));
   
   XLXI_15_3 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>unid_ent(3),
                D1=>unid_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>unid(3));
   
   XLXI_16_0 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>cent_ent(0),
                D1=>cent_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>cent(0));
   
   XLXI_16_1 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>cent_ent(1),
                D1=>cent_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>cent(1));
   
   XLXI_16_2 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>cent_ent(2),
                D1=>cent_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>cent(2));
   
   XLXI_16_3 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>cent_ent(3),
                D1=>cent_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>cent(3));
   
   XLXI_17_0 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>mill_ent(0),
                D1=>mill_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>mill(0));
   
   XLXI_17_1 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>mill_ent(1),
                D1=>mill_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>mill(1));
   
   XLXI_17_2 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>mill_ent(2),
                D1=>mill_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>mill(2));
   
   XLXI_17_3 : M2_1_HXILINX_convol_top_rl_2022
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
   
   XLXI_31 : M2_1_HXILINX_convol_top_rl_2022
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

entity BCD_A_Bin_MUSER_convol_top_rl_2022 is
   port ( ck  : in    std_logic; 
          d   : in    std_logic_vector (3 downto 0); 
          ldZ : in    std_logic; 
          sin : in    std_logic; 
          q0  : out   std_logic);
end BCD_A_Bin_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of BCD_A_Bin_MUSER_convol_top_rl_2022 is
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
   
   component M2_1_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_12 : label is "XLXI_12_222";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_220";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_221";
   attribute HU_SET of XLXI_62 : label is "XLXI_62_223";
begin
   XLXI_9 : AND2
      port map (I0=>sin,
                I1=>q3,
                O=>XLXN_48);
   
   XLXI_12 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>d(3),
                D1=>XLXN_48,
                S0=>ldZ,
                O=>XLXN_6);
   
   XLXI_13 : M2_1_HXILINX_convol_top_rl_2022
      port map (D0=>d(2),
                D1=>XLXN_49,
                S0=>ldZ,
                O=>XLXN_7);
   
   XLXI_30 : M2_1_HXILINX_convol_top_rl_2022
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
   
   XLXI_62 : M2_1_HXILINX_convol_top_rl_2022
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

entity Conversor_BCD_Bin_MUSER_convol_top_rl_2022 is
   port ( cent       : in    std_logic_vector (3 downto 0); 
          ck         : in    std_logic; 
          dec        : in    std_logic_vector (3 downto 0); 
          inicio     : in    std_logic; 
          reset      : in    std_logic; 
          unid       : in    std_logic_vector (3 downto 0); 
          dato_bin   : out   std_logic_vector (7 downto 0); 
          dato_nuevo : out   std_logic);
end Conversor_BCD_Bin_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of Conversor_BCD_Bin_MUSER_convol_top_rl_2022 is
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
   component BCD_A_Bin_MUSER_convol_top_rl_2022
      port ( q0  : out   std_logic; 
             sin : in    std_logic; 
             ck  : in    std_logic; 
             d   : in    std_logic_vector (3 downto 0); 
             ldZ : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FD8RE_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_224";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_225";
begin
   XLXI_1 : BCD_A_Bin_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                d(3 downto 0)=>cent(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_17,
                q0=>XLXN_14);
   
   XLXI_2 : BCD_A_Bin_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                d(3 downto 0)=>dec(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_14,
                q0=>XLXN_15);
   
   XLXI_3 : BCD_A_Bin_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                d(3 downto 0)=>unid(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_15,
                q0=>dato_bin_lsb);
   
   XLXI_4 : GND
      port map (G=>XLXN_17);
   
   XLXI_16 : FD8RE_HXILINX_convol_top_rl_2022
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
   
   XLXI_23 : FD8RE_HXILINX_convol_top_rl_2022
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

entity reg_desp_4_cifras_MUSER_convol_top_rl_2022 is
   port ( ce         : in    std_logic; 
          ck         : in    std_logic; 
          entrada    : in    std_logic_vector (3 downto 0); 
          sinc_reset : in    std_logic; 
          dato1      : out   std_logic_vector (3 downto 0); 
          dato2      : out   std_logic_vector (3 downto 0); 
          dato3      : out   std_logic_vector (3 downto 0); 
          dato4      : out   std_logic_vector (3 downto 0));
end reg_desp_4_cifras_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of reg_desp_4_cifras_MUSER_convol_top_rl_2022 is
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

entity Comp_Num_Letra_MUSER_convol_top_rl_2022 is
   port ( ck            : in    std_logic; 
          cod_tecla     : in    std_logic_vector (3 downto 0); 
          entZ_sal      : in    std_logic; 
          tecla_pulsada : in    std_logic; 
          carga_cifra   : out   std_logic; 
          cifra         : out   std_logic_vector (3 downto 0); 
          letra_a       : out   std_logic; 
          letra_c       : out   std_logic);
end Comp_Num_Letra_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of Comp_Num_Letra_MUSER_convol_top_rl_2022 is
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
   
   component COMPM4_HXILINX_convol_top_rl_2022
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
   
   component FD4RE_HXILINX_convol_top_rl_2022
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
   
   component COMP4_HXILINX_convol_top_rl_2022
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
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_227";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_228";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_226";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_229";
begin
   XLXI_2 : GND
      port map (G=>cero);
   
   XLXI_3 : VCC
      port map (P=>uno);
   
   XLXI_4 : COMPM4_HXILINX_convol_top_rl_2022
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
   
   XLXI_14 : FD4RE_HXILINX_convol_top_rl_2022
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
   
   XLXI_24 : COMP4_HXILINX_convol_top_rl_2022
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
   
   XLXI_35 : COMP4_HXILINX_convol_top_rl_2022
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

entity bloque_convol_MUSER_convol_top_rl_2022 is
   port ( ck            : in    std_logic; 
          cod_tecla     : in    std_logic_vector (3 downto 0); 
          reset         : in    std_logic; 
          tecla_pulsada : in    std_logic; 
          display1      : out   std_logic_vector (3 downto 0); 
          display2      : out   std_logic_vector (3 downto 0); 
          display3      : out   std_logic_vector (3 downto 0); 
          display4      : out   std_logic_vector (3 downto 0); 
          punto_decimal : out   std_logic_vector (4 downto 1));
end bloque_convol_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of bloque_convol_MUSER_convol_top_rl_2022 is
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
   component Conversor_BCD_Bin_MUSER_convol_top_rl_2022
      port ( unid       : in    std_logic_vector (3 downto 0); 
             dec        : in    std_logic_vector (3 downto 0); 
             cent       : in    std_logic_vector (3 downto 0); 
             ck         : in    std_logic; 
             inicio     : in    std_logic; 
             reset      : in    std_logic; 
             dato_nuevo : out   std_logic; 
             dato_bin   : out   std_logic_vector (7 downto 0));
   end component;
   
   component Comp_Num_Letra_MUSER_convol_top_rl_2022
      port ( cod_tecla     : in    std_logic_vector (3 downto 0); 
             carga_cifra   : out   std_logic; 
             letra_a       : out   std_logic; 
             letra_c       : out   std_logic; 
             cifra         : out   std_logic_vector (3 downto 0); 
             ck            : in    std_logic; 
             tecla_pulsada : in    std_logic; 
             entZ_sal      : in    std_logic);
   end component;
   
   component reg_desp_4_cifras_MUSER_convol_top_rl_2022
      port ( entrada    : in    std_logic_vector (3 downto 0); 
             dato1      : out   std_logic_vector (3 downto 0); 
             dato2      : out   std_logic_vector (3 downto 0); 
             dato3      : out   std_logic_vector (3 downto 0); 
             dato4      : out   std_logic_vector (3 downto 0); 
             ck         : in    std_logic; 
             sinc_reset : in    std_logic; 
             ce         : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component Mux_Ent_Sal_7seg_4cifras_MUSER_convol_top_rl_2022
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
             punto_decimal   : out   std_logic_vector (4 downto 1); 
             entZ_sal        : out   std_logic; 
             unid            : out   std_logic_vector (3 downto 0); 
             dec             : out   std_logic_vector (3 downto 0); 
             cent            : out   std_logic_vector (3 downto 0); 
             mill            : out   std_logic_vector (3 downto 0); 
             signo_sal       : in    std_logic);
   end component;
   
   component Conversor_Bin_BCD_3cifras_MUSER_convol_top_rl_2022
      port ( reset           : in    std_logic; 
             dato_nuevo      : out   std_logic; 
             unid            : out   std_logic_vector (3 downto 0); 
             dec             : out   std_logic_vector (3 downto 0); 
             cent            : out   std_logic_vector (3 downto 0); 
             dato_bin_entero : in    std_logic_vector (7 downto 0); 
             inicio          : in    std_logic; 
             ck              : in    std_logic);
   end component;
   
   component bCalcSignoMag_MUSER_convol_top_rl_2022
      port ( dato_sal          : in    std_logic_vector (7 downto 0); 
             dato_sal_sync     : in    std_logic; 
             ck                : in    std_logic; 
             signo_sal         : out   std_logic; 
             dato_sal_pos_sync : out   std_logic; 
             dato_sal_pos      : out   std_logic_vector (7 downto 0));
   end component;
   
   component bCalcConv_MUSER_convol_top_rl_2022
      port ( dato_nuevo    : in    std_logic; 
             ck            : in    std_logic; 
             reset         : in    std_logic; 
             dato_ent      : in    std_logic_vector (7 downto 0); 
             dat_sal       : out   std_logic_vector (7 downto 0); 
             dato_sal_sync : out   std_logic);
   end component;
   
begin
   XLXI_1 : Conversor_BCD_Bin_MUSER_convol_top_rl_2022
      port map (cent(3 downto 0)=>ent_cent(3 downto 0),
                ck=>ck,
                dec(3 downto 0)=>ent_dec(3 downto 0),
                inicio=>letra_a,
                reset=>reset,
                unid(3 downto 0)=>ent_unid(3 downto 0),
                dato_bin(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo);
   
   XLXI_3 : Comp_Num_Letra_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                cod_tecla(3 downto 0)=>cod_tecla(3 downto 0),
                entZ_sal=>entZ_sal,
                tecla_pulsada=>tecla_pulsada,
                carga_cifra=>carga_cifra,
                cifra(3 downto 0)=>cifra(3 downto 0),
                letra_a=>letra_a,
                letra_c=>letra_c);
   
   XLXI_6 : reg_desp_4_cifras_MUSER_convol_top_rl_2022
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
   
   XLXI_32 : Mux_Ent_Sal_7seg_4cifras_MUSER_convol_top_rl_2022
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
   
   XLXI_33 : Conversor_Bin_BCD_3cifras_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                dato_bin_entero(7 downto 0)=>dato_sal_pos(7 downto 0),
                inicio=>dato_sal_pos_sync,
                reset=>reset,
                cent(3 downto 0)=>sal_cent(3 downto 0),
                dato_nuevo=>salida_bcd_nueva,
                dec(3 downto 0)=>sal_dec(3 downto 0),
                unid(3 downto 0)=>sal_unid(3 downto 0));
   
   XLXI_34 : bCalcSignoMag_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                dato_sal(7 downto 0)=>dato_sal(7 downto 0),
                dato_sal_sync=>dato_sal_sync,
                dato_sal_pos(7 downto 0)=>dato_sal_pos(7 downto 0),
                dato_sal_pos_sync=>dato_sal_pos_sync,
                signo_sal=>signo_sal);
   
   XLXI_36 : bCalcConv_MUSER_convol_top_rl_2022
      port map (ck=>ck,
                dato_ent(7 downto 0)=>dato_ent(7 downto 0),
                dato_nuevo=>dato_nuevo,
                reset=>reset,
                dato_sal_sync=>dato_sal_sync,
                dat_sal(7 downto 0)=>dato_sal(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity displays_7seg_nexys3_RemLab_MUSER_convol_top_rl_2022 is
   port ( cent_bcd   : in    std_logic_vector (3 downto 0); 
          ck_display : in    std_logic; 
          dec_bcd    : in    std_logic_vector (3 downto 0); 
          mill_bcd   : in    std_logic_vector (3 downto 0); 
          punto_dec  : in    std_logic_vector (3 downto 0); 
          unid_bcd   : in    std_logic_vector (3 downto 0); 
          anodo      : out   std_logic_vector (3 downto 0); 
          siete_seg0 : out   std_logic_vector (7 downto 0); 
          siete_seg1 : out   std_logic_vector (7 downto 0); 
          siete_seg2 : out   std_logic_vector (7 downto 0); 
          siete_seg3 : out   std_logic_vector (7 downto 0));
end displays_7seg_nexys3_RemLab_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of displays_7seg_nexys3_RemLab_MUSER_convol_top_rl_2022 
      is
   attribute BOX_TYPE   : string ;
   signal sel0        : std_logic;
   signal sel1        : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_18     : std_logic;
   signal XLXN_19     : std_logic;
   signal XLXN_20     : std_logic;
   signal XLXN_58     : std_logic;
   signal XLXN_59     : std_logic;
   signal XLXN_60     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_91     : std_logic_vector (6 downto 0);
   signal XLXN_92     : std_logic_vector (6 downto 0);
   signal XLXN_93     : std_logic_vector (6 downto 0);
   signal XLXN_94     : std_logic_vector (6 downto 0);
   signal anodo_DUMMY : std_logic_vector (3 downto 0);
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component bcd_7seg_neg
      port ( BCD          : in    std_logic_vector (3 downto 0); 
             SEGMENTO_NEG : out   std_logic_vector (6 downto 0));
   end component;
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component FDSE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             S  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDSE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   anodo(3 downto 0) <= anodo_DUMMY(3 downto 0);
   XLXI_7 : FDCE
      port map (C=>ck_display,
                CE=>XLXN_20,
                CLR=>XLXN_61,
                D=>anodo_DUMMY(3),
                Q=>anodo_DUMMY(0));
   
   XLXI_12 : VCC
      port map (P=>XLXN_20);
   
   XLXI_13 : VCC
      port map (P=>XLXN_19);
   
   XLXI_14 : VCC
      port map (P=>XLXN_18);
   
   XLXI_15 : VCC
      port map (P=>XLXN_17);
   
   XLXI_16 : bcd_7seg_neg
      port map (BCD(3 downto 0)=>mill_bcd(3 downto 0),
                SEGMENTO_NEG(6 downto 0)=>XLXN_91(6 downto 0));
   
   XLXI_26 : NAND2
      port map (I0=>anodo_DUMMY(3),
                I1=>anodo_DUMMY(2),
                O=>sel1);
   
   XLXI_27 : NAND2
      port map (I0=>anodo_DUMMY(3),
                I1=>anodo_DUMMY(1),
                O=>sel0);
   
   XLXI_30 : FDSE
      port map (C=>ck_display,
                CE=>XLXN_19,
                D=>anodo_DUMMY(0),
                S=>XLXN_60,
                Q=>anodo_DUMMY(1));
   
   XLXI_31 : FDSE
      port map (C=>ck_display,
                CE=>XLXN_18,
                D=>anodo_DUMMY(1),
                S=>XLXN_59,
                Q=>anodo_DUMMY(2));
   
   XLXI_32 : FDSE
      port map (C=>ck_display,
                CE=>XLXN_17,
                D=>anodo_DUMMY(2),
                S=>XLXN_58,
                Q=>anodo_DUMMY(3));
   
   XLXI_33 : GND
      port map (G=>XLXN_61);
   
   XLXI_34 : GND
      port map (G=>XLXN_60);
   
   XLXI_35 : GND
      port map (G=>XLXN_59);
   
   XLXI_36 : GND
      port map (G=>XLXN_58);
   
   XLXI_38 : bcd_7seg_neg
      port map (BCD(3 downto 0)=>cent_bcd(3 downto 0),
                SEGMENTO_NEG(6 downto 0)=>XLXN_92(6 downto 0));
   
   XLXI_39 : bcd_7seg_neg
      port map (BCD(3 downto 0)=>dec_bcd(3 downto 0),
                SEGMENTO_NEG(6 downto 0)=>XLXN_93(6 downto 0));
   
   XLXI_40 : bcd_7seg_neg
      port map (BCD(3 downto 0)=>unid_bcd(3 downto 0),
                SEGMENTO_NEG(6 downto 0)=>XLXN_94(6 downto 0));
   
   XLXI_46 : BUF
      port map (I=>punto_dec(3),
                O=>siete_seg3(7));
   
   XLXI_47 : BUF
      port map (I=>punto_dec(2),
                O=>siete_seg2(7));
   
   XLXI_48 : BUF
      port map (I=>punto_dec(1),
                O=>siete_seg1(7));
   
   XLXI_49 : BUF
      port map (I=>punto_dec(0),
                O=>siete_seg0(7));
   
   XLXI_50_0 : INV
      port map (I=>XLXN_91(0),
                O=>siete_seg3(0));
   
   XLXI_50_1 : INV
      port map (I=>XLXN_91(1),
                O=>siete_seg3(1));
   
   XLXI_50_2 : INV
      port map (I=>XLXN_91(2),
                O=>siete_seg3(2));
   
   XLXI_50_3 : INV
      port map (I=>XLXN_91(3),
                O=>siete_seg3(3));
   
   XLXI_50_4 : INV
      port map (I=>XLXN_91(4),
                O=>siete_seg3(4));
   
   XLXI_50_5 : INV
      port map (I=>XLXN_91(5),
                O=>siete_seg3(5));
   
   XLXI_50_6 : INV
      port map (I=>XLXN_91(6),
                O=>siete_seg3(6));
   
   XLXI_51_0 : INV
      port map (I=>XLXN_92(0),
                O=>siete_seg2(0));
   
   XLXI_51_1 : INV
      port map (I=>XLXN_92(1),
                O=>siete_seg2(1));
   
   XLXI_51_2 : INV
      port map (I=>XLXN_92(2),
                O=>siete_seg2(2));
   
   XLXI_51_3 : INV
      port map (I=>XLXN_92(3),
                O=>siete_seg2(3));
   
   XLXI_51_4 : INV
      port map (I=>XLXN_92(4),
                O=>siete_seg2(4));
   
   XLXI_51_5 : INV
      port map (I=>XLXN_92(5),
                O=>siete_seg2(5));
   
   XLXI_51_6 : INV
      port map (I=>XLXN_92(6),
                O=>siete_seg2(6));
   
   XLXI_52_0 : INV
      port map (I=>XLXN_93(0),
                O=>siete_seg1(0));
   
   XLXI_52_1 : INV
      port map (I=>XLXN_93(1),
                O=>siete_seg1(1));
   
   XLXI_52_2 : INV
      port map (I=>XLXN_93(2),
                O=>siete_seg1(2));
   
   XLXI_52_3 : INV
      port map (I=>XLXN_93(3),
                O=>siete_seg1(3));
   
   XLXI_52_4 : INV
      port map (I=>XLXN_93(4),
                O=>siete_seg1(4));
   
   XLXI_52_5 : INV
      port map (I=>XLXN_93(5),
                O=>siete_seg1(5));
   
   XLXI_52_6 : INV
      port map (I=>XLXN_93(6),
                O=>siete_seg1(6));
   
   XLXI_53_0 : INV
      port map (I=>XLXN_94(0),
                O=>siete_seg0(0));
   
   XLXI_53_1 : INV
      port map (I=>XLXN_94(1),
                O=>siete_seg0(1));
   
   XLXI_53_2 : INV
      port map (I=>XLXN_94(2),
                O=>siete_seg0(2));
   
   XLXI_53_3 : INV
      port map (I=>XLXN_94(3),
                O=>siete_seg0(3));
   
   XLXI_53_4 : INV
      port map (I=>XLXN_94(4),
                O=>siete_seg0(4));
   
   XLXI_53_5 : INV
      port map (I=>XLXN_94(5),
                O=>siete_seg0(5));
   
   XLXI_53_6 : INV
      port map (I=>XLXN_94(6),
                O=>siete_seg0(6));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sincroniza_MUSER_convol_top_rl_2022 is
   port ( ck        : in    std_logic; 
          dato_ent  : in    std_logic; 
          dato_sinc : out   std_logic);
end sincroniza_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of sincroniza_MUSER_convol_top_rl_2022 is
   attribute BOX_TYPE   : string ;
   signal XLXN_4    : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>ck,
                D=>dato_ent,
                Q=>XLXN_4);
   
   XLXI_2 : FD
      port map (C=>ck,
                D=>XLXN_4,
                Q=>dato_sinc);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity nivel_a_pulso_MUSER_convol_top_rl_2022 is
   port ( ck      : in    std_logic; 
          entrada : in    std_logic; 
          salida  : out   std_logic);
end nivel_a_pulso_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of nivel_a_pulso_MUSER_convol_top_rl_2022 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>ck,
                D=>entrada,
                Q=>XLXN_1);
   
   XLXI_2 : AND2B1
      port map (I0=>XLXN_1,
                I1=>entrada,
                O=>salida);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sinc_entrada_MUSER_convol_top_rl_2022 is
   port ( ck_MHz            : in    std_logic; 
          codigo_tecla_KHz  : in    std_logic_vector (3 downto 0); 
          tecla_pulsada_KHz : in    std_logic; 
          codigo_tecla_MHz  : out   std_logic_vector (3 downto 0); 
          tecla_pulsada_MHz : out   std_logic);
end sinc_entrada_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of sinc_entrada_MUSER_convol_top_rl_2022 is
   signal XLXN_33           : std_logic;
   component nivel_a_pulso_MUSER_convol_top_rl_2022
      port ( salida  : out   std_logic; 
             ck      : in    std_logic; 
             entrada : in    std_logic);
   end component;
   
   component sincroniza_MUSER_convol_top_rl_2022
      port ( dato_sinc : out   std_logic; 
             ck        : in    std_logic; 
             dato_ent  : in    std_logic);
   end component;
   
begin
   XLXI_9 : nivel_a_pulso_MUSER_convol_top_rl_2022
      port map (ck=>ck_MHz,
                entrada=>XLXN_33,
                salida=>tecla_pulsada_MHz);
   
   XLXI_10 : sincroniza_MUSER_convol_top_rl_2022
      port map (ck=>ck_MHz,
                dato_ent=>tecla_pulsada_KHz,
                dato_sinc=>XLXN_33);
   
   XLXI_17_0 : sincroniza_MUSER_convol_top_rl_2022
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(0),
                dato_sinc=>codigo_tecla_MHz(0));
   
   XLXI_17_1 : sincroniza_MUSER_convol_top_rl_2022
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(1),
                dato_sinc=>codigo_tecla_MHz(1));
   
   XLXI_17_2 : sincroniza_MUSER_convol_top_rl_2022
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(2),
                dato_sinc=>codigo_tecla_MHz(2));
   
   XLXI_17_3 : sincroniza_MUSER_convol_top_rl_2022
      port map (ck=>ck_MHz,
                dato_ent=>codigo_tecla_KHz(3),
                dato_sinc=>codigo_tecla_MHz(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cont_anillo_ce_MUSER_convol_top_rl_2022 is
   port ( ce  : in    std_logic; 
          ck  : in    std_logic; 
          ce1 : out   std_logic; 
          ce2 : out   std_logic; 
          ce3 : out   std_logic; 
          ce4 : out   std_logic);
end cont_anillo_ce_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of cont_anillo_ce_MUSER_convol_top_rl_2022 is
   attribute BOX_TYPE   : string ;
   signal XLXN_14   : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_16   : std_logic;
   signal XLXN_17   : std_logic;
   signal ce1_DUMMY : std_logic;
   signal ce2_DUMMY : std_logic;
   signal ce3_DUMMY : std_logic;
   signal ce4_DUMMY : std_logic;
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDSE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             S  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDSE : component is "BLACK_BOX";
   
begin
   ce1 <= ce1_DUMMY;
   ce2 <= ce2_DUMMY;
   ce3 <= ce3_DUMMY;
   ce4 <= ce4_DUMMY;
   XLXI_1 : FDCE
      port map (C=>ck,
                CE=>ce,
                CLR=>XLXN_14,
                D=>ce1_DUMMY,
                Q=>ce2_DUMMY);
   
   XLXI_2 : FDCE
      port map (C=>ck,
                CE=>ce,
                CLR=>XLXN_15,
                D=>ce2_DUMMY,
                Q=>ce3_DUMMY);
   
   XLXI_3 : FDCE
      port map (C=>ck,
                CE=>ce,
                CLR=>XLXN_16,
                D=>ce3_DUMMY,
                Q=>ce4_DUMMY);
   
   XLXI_8 : GND
      port map (G=>XLXN_14);
   
   XLXI_9 : GND
      port map (G=>XLXN_15);
   
   XLXI_10 : GND
      port map (G=>XLXN_16);
   
   XLXI_11 : GND
      port map (G=>XLXN_17);
   
   XLXI_12 : FDSE
      port map (C=>ck,
                CE=>ce,
                D=>ce4_DUMMY,
                S=>XLXN_17,
                Q=>ce1_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity teclado_4x4_MUSER_convol_top_rl_2022 is
   port ( ck_teclado : in    std_logic; 
          col1       : in    std_logic; 
          col2       : in    std_logic; 
          col3       : in    std_logic; 
          col4       : in    std_logic; 
          fila1      : out   std_logic; 
          fila2      : out   std_logic; 
          fila3      : out   std_logic; 
          fila4      : out   std_logic; 
          tecla      : out   std_logic_vector (15 downto 0));
end teclado_4x4_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of teclado_4x4_MUSER_convol_top_rl_2022 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ce_cuenta   : std_logic;
   signal cuenta      : std_logic_vector (2 downto 0);
   signal XLXN_13     : std_logic;
   signal XLXN_19     : std_logic;
   signal XLXN_45     : std_logic;
   signal XLXN_51     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_67     : std_logic;
   signal XLXN_77     : std_logic;
   signal XLXN_83     : std_logic;
   signal fila1_DUMMY : std_logic;
   signal fila2_DUMMY : std_logic;
   signal fila3_DUMMY : std_logic;
   signal fila4_DUMMY : std_logic;
   component FD4CE_HXILINX_convol_top_rl_2022
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component cont_anillo_ce_MUSER_convol_top_rl_2022
      port ( ck  : in    std_logic; 
             ce  : in    std_logic; 
             ce4 : out   std_logic; 
             ce3 : out   std_logic; 
             ce2 : out   std_logic; 
             ce1 : out   std_logic);
   end component;
   
   component cont_3b
      port ( clk : in    std_logic; 
             q   : out   std_logic_vector (2 downto 0));
   end component;
   
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_230";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_231";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_232";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_233";
begin
   fila1 <= fila1_DUMMY;
   fila2 <= fila2_DUMMY;
   fila3 <= fila3_DUMMY;
   fila4 <= fila4_DUMMY;
   XLXI_1 : FD4CE_HXILINX_convol_top_rl_2022
      port map (C=>ck_teclado,
                CE=>XLXN_13,
                CLR=>XLXN_19,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(1),
                Q1=>tecla(2),
                Q2=>tecla(3),
                Q3=>tecla(15));
   
   XLXI_2 : cont_anillo_ce_MUSER_convol_top_rl_2022
      port map (ce=>ce_cuenta,
                ck=>ck_teclado,
                ce1=>fila1_DUMMY,
                ce2=>fila2_DUMMY,
                ce3=>fila3_DUMMY,
                ce4=>fila4_DUMMY);
   
   XLXI_3 : cont_3b
      port map (clk=>ck_teclado,
                q(2 downto 0)=>cuenta(2 downto 0));
   
   XLXI_4 : AND5B3
      port map (I0=>fila4_DUMMY,
                I1=>fila3_DUMMY,
                I2=>fila2_DUMMY,
                I3=>fila1_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_13);
   
   XLXI_5 : GND
      port map (G=>XLXN_19);
   
   XLXI_9 : FD4CE_HXILINX_convol_top_rl_2022
      port map (C=>ck_teclado,
                CE=>XLXN_45,
                CLR=>XLXN_51,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(7),
                Q1=>tecla(8),
                Q2=>tecla(9),
                Q3=>tecla(13));
   
   XLXI_10 : AND5B3
      port map (I0=>fila4_DUMMY,
                I1=>fila1_DUMMY,
                I2=>fila2_DUMMY,
                I3=>fila3_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_45);
   
   XLXI_11 : GND
      port map (G=>XLXN_51);
   
   XLXI_12 : FD4CE_HXILINX_convol_top_rl_2022
      port map (C=>ck_teclado,
                CE=>XLXN_61,
                CLR=>XLXN_67,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(4),
                Q1=>tecla(5),
                Q2=>tecla(6),
                Q3=>tecla(14));
   
   XLXI_13 : AND5B3
      port map (I0=>fila4_DUMMY,
                I1=>fila3_DUMMY,
                I2=>fila1_DUMMY,
                I3=>fila2_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_61);
   
   XLXI_14 : GND
      port map (G=>XLXN_67);
   
   XLXI_15 : FD4CE_HXILINX_convol_top_rl_2022
      port map (C=>ck_teclado,
                CE=>XLXN_77,
                CLR=>XLXN_83,
                D0=>col1,
                D1=>col2,
                D2=>col3,
                D3=>col4,
                Q0=>tecla(10),
                Q1=>tecla(0),
                Q2=>tecla(11),
                Q3=>tecla(12));
   
   XLXI_16 : AND5B3
      port map (I0=>fila1_DUMMY,
                I1=>fila3_DUMMY,
                I2=>fila2_DUMMY,
                I3=>fila4_DUMMY,
                I4=>ce_cuenta,
                O=>XLXN_77);
   
   XLXI_17 : GND
      port map (G=>XLXN_83);
   
   XLXI_18 : AND3
      port map (I0=>cuenta(2),
                I1=>cuenta(1),
                I2=>cuenta(0),
                O=>ce_cuenta);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity detector_MUSER_convol_top_rl_2022 is
   port ( ck      : in    std_logic; 
          dato    : in    std_logic; 
          dato_ok : out   std_logic);
end detector_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of detector_MUSER_convol_top_rl_2022 is
   attribute BOX_TYPE   : string ;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>ck,
                D=>dato,
                Q=>dato_ok);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity codif_tecla_MUSER_convol_top_rl_2022 is
   port ( ck_teclado    : in    std_logic; 
          tecla         : in    std_logic_vector (15 downto 0); 
          codigo_tecla  : out   std_logic_vector (3 downto 0); 
          tecla_pulsada : out   std_logic);
end codif_tecla_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of codif_tecla_MUSER_convol_top_rl_2022 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ce_tecla_pulsada    : std_logic;
   signal tecla_codif0        : std_logic;
   signal tecla_codif1        : std_logic;
   signal tecla_codif2        : std_logic;
   signal tecla_codif3        : std_logic;
   signal tecla_pulsada_nivel : std_logic;
   signal XLXN_141            : std_logic;
   signal XLXN_209            : std_logic;
   signal XLXN_210            : std_logic;
   component OR8_HXILINX_convol_top_rl_2022
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FD4CE_HXILINX_convol_top_rl_2022
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component nivel_a_pulso_MUSER_convol_top_rl_2022
      port ( salida  : out   std_logic; 
             ck      : in    std_logic; 
             entrada : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_235";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_236";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_237";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_238";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_234";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_239";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_240";
begin
   XLXI_1 : OR8_HXILINX_convol_top_rl_2022
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(11),
                I5=>tecla(10),
                I6=>tecla(9),
                I7=>tecla(8),
                O=>tecla_codif3);
   
   XLXI_3 : OR8_HXILINX_convol_top_rl_2022
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(11),
                I3=>tecla(10),
                I4=>tecla(7),
                I5=>tecla(6),
                I6=>tecla(3),
                I7=>tecla(2),
                O=>tecla_codif1);
   
   XLXI_4 : OR8_HXILINX_convol_top_rl_2022
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(7),
                I5=>tecla(6),
                I6=>tecla(5),
                I7=>tecla(4),
                O=>tecla_codif2);
   
   XLXI_5 : OR8_HXILINX_convol_top_rl_2022
      port map (I0=>tecla(15),
                I1=>tecla(13),
                I2=>tecla(11),
                I3=>tecla(9),
                I4=>tecla(7),
                I5=>tecla(5),
                I6=>tecla(3),
                I7=>tecla(1),
                O=>tecla_codif0);
   
   XLXI_10 : FD4CE_HXILINX_convol_top_rl_2022
      port map (C=>ck_teclado,
                CE=>ce_tecla_pulsada,
                CLR=>XLXN_141,
                D0=>tecla_codif0,
                D1=>tecla_codif1,
                D2=>tecla_codif2,
                D3=>tecla_codif3,
                Q0=>codigo_tecla(0),
                Q1=>codigo_tecla(1),
                Q2=>codigo_tecla(2),
                Q3=>codigo_tecla(3));
   
   XLXI_11 : GND
      port map (G=>XLXN_141);
   
   XLXI_12 : FD
      port map (C=>ck_teclado,
                D=>ce_tecla_pulsada,
                Q=>tecla_pulsada);
   
   XLXI_13 : OR8_HXILINX_convol_top_rl_2022
      port map (I0=>tecla(7),
                I1=>tecla(6),
                I2=>tecla(5),
                I3=>tecla(4),
                I4=>tecla(3),
                I5=>tecla(2),
                I6=>tecla(1),
                I7=>tecla(0),
                O=>XLXN_209);
   
   XLXI_14 : OR8_HXILINX_convol_top_rl_2022
      port map (I0=>tecla(15),
                I1=>tecla(14),
                I2=>tecla(13),
                I3=>tecla(12),
                I4=>tecla(11),
                I5=>tecla(10),
                I6=>tecla(9),
                I7=>tecla(8),
                O=>XLXN_210);
   
   XLXI_15 : OR2
      port map (I0=>XLXN_210,
                I1=>XLXN_209,
                O=>tecla_pulsada_nivel);
   
   XLXI_41 : nivel_a_pulso_MUSER_convol_top_rl_2022
      port map (ck=>ck_teclado,
                entrada=>tecla_pulsada_nivel,
                salida=>ce_tecla_pulsada);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity teclado_hexa_completo_MUSER_convol_top_rl_2022 is
   port ( ck_teclado    : in    std_logic; 
          col1          : in    std_logic; 
          col2          : in    std_logic; 
          col3          : in    std_logic; 
          col4          : in    std_logic; 
          codigo_tecla  : out   std_logic_vector (3 downto 0); 
          fila1         : out   std_logic; 
          fila2         : out   std_logic; 
          fila3         : out   std_logic; 
          fila4         : out   std_logic; 
          tecla         : out   std_logic_vector (15 downto 0); 
          tecla_pulsada : out   std_logic);
end teclado_hexa_completo_MUSER_convol_top_rl_2022;

architecture BEHAVIORAL of teclado_hexa_completo_MUSER_convol_top_rl_2022 is
   signal col_ok1       : std_logic;
   signal col_ok2       : std_logic;
   signal col_ok3       : std_logic;
   signal col_ok4       : std_logic;
   signal tecla_DUMMY   : std_logic_vector (15 downto 0);
   component teclado_4x4_MUSER_convol_top_rl_2022
      port ( col1       : in    std_logic; 
             col2       : in    std_logic; 
             col3       : in    std_logic; 
             col4       : in    std_logic; 
             tecla      : out   std_logic_vector (15 downto 0); 
             fila4      : out   std_logic; 
             fila1      : out   std_logic; 
             fila2      : out   std_logic; 
             fila3      : out   std_logic; 
             ck_teclado : in    std_logic);
   end component;
   
   component detector_MUSER_convol_top_rl_2022
      port ( dato    : in    std_logic; 
             ck      : in    std_logic; 
             dato_ok : out   std_logic);
   end component;
   
   component codif_tecla_MUSER_convol_top_rl_2022
      port ( ck_teclado    : in    std_logic; 
             codigo_tecla  : out   std_logic_vector (3 downto 0); 
             tecla_pulsada : out   std_logic; 
             tecla         : in    std_logic_vector (15 downto 0));
   end component;
   
begin
   tecla(15 downto 0) <= tecla_DUMMY(15 downto 0);
   XLXI_1 : teclado_4x4_MUSER_convol_top_rl_2022
      port map (ck_teclado=>ck_teclado,
                col1=>col_ok1,
                col2=>col_ok2,
                col3=>col_ok3,
                col4=>col_ok4,
                fila1=>fila1,
                fila2=>fila2,
                fila3=>fila3,
                fila4=>fila4,
                tecla(15 downto 0)=>tecla_DUMMY(15 downto 0));
   
   XLXI_5 : detector_MUSER_convol_top_rl_2022
      port map (ck=>ck_teclado,
                dato=>col1,
                dato_ok=>col_ok1);
   
   XLXI_6 : detector_MUSER_convol_top_rl_2022
      port map (ck=>ck_teclado,
                dato=>col2,
                dato_ok=>col_ok2);
   
   XLXI_7 : detector_MUSER_convol_top_rl_2022
      port map (ck=>ck_teclado,
                dato=>col3,
                dato_ok=>col_ok3);
   
   XLXI_8 : detector_MUSER_convol_top_rl_2022
      port map (ck=>ck_teclado,
                dato=>col4,
                dato_ok=>col_ok4);
   
   XLXI_39 : codif_tecla_MUSER_convol_top_rl_2022
      port map (ck_teclado=>ck_teclado,
                tecla(15 downto 0)=>tecla_DUMMY(15 downto 0),
                codigo_tecla(3 downto 0)=>codigo_tecla(3 downto 0),
                tecla_pulsada=>tecla_pulsada);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity convol_top_rl_2022 is
   port ( boton_aba_pad          : in    std_logic; 
          boton_arr_pad          : in    std_logic; 
          boton_der_pad          : in    std_logic; 
          boton_izq_pad          : in    std_logic; 
          ck_100MHz_pad          : in    std_logic; 
          col_pad                : in    std_logic_vector (4 downto 1); 
          EppASTB                : in    std_logic; 
          EppDSTB                : in    std_logic; 
          EppWRITE               : in    std_logic; 
          reset_pad              : in    std_logic; 
          sw_pad                 : in    std_logic_vector (7 downto 0); 
          uart_rx_pad            : in    std_logic; 
          anodo_pad              : out   std_logic_vector (3 downto 0); 
          ce_display_neg_pad     : out   std_logic_vector (4 downto 1); 
          ck_display_externo_pad : out   std_logic; 
          display_pad            : out   std_logic_vector (7 downto 0); 
          EppWAIT                : out   std_logic; 
          led_pad                : out   std_logic_vector (7 downto 0); 
          seg_pad                : out   std_logic_vector (7 downto 0); 
          signo_sal_pad          : out   std_logic; 
          uart_tx_pad            : out   std_logic; 
          DB                     : inout std_logic_vector (7 downto 0); 
          fila_pad               : inout std_logic_vector (4 downto 1));
end convol_top_rl_2022;

architecture BEHAVIORAL of convol_top_rl_2022 is
   attribute BOX_TYPE         : string ;
   attribute IOSTANDARD       : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute HU_SET           : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute INIT             : string ;
   attribute SRTYPE           : string ;
   attribute DDR_ALIGNMENT    : string ;
   signal boton_aba                     : std_logic;
   signal boton_aba_i                   : std_logic;
   signal boton_arr                     : std_logic;
   signal boton_arr_i                   : std_logic;
   signal boton_der                     : std_logic;
   signal boton_der_i                   : std_logic;
   signal boton_izq                     : std_logic;
   signal boton_izq_i                   : std_logic;
   signal cent_bcd                      : std_logic_vector (3 downto 0);
   signal ceros                         : std_logic_vector (3 downto 0);
   signal ce_display_neg                : std_logic_vector (4 downto 1);
   signal ck_5MHz                       : std_logic;
   signal ck_20KHz                      : std_logic;
   signal ck_100MHz                     : std_logic;
   signal ck_300Hz                      : std_logic;
   signal codigo_tecla_KHz              : std_logic_vector (3 downto 0);
   signal cod_tecla_sinc                : std_logic_vector (3 downto 0);
   signal col                           : std_logic_vector (4 downto 1);
   signal cuenta_dcm                    : std_logic_vector (15 downto 0);
   signal dec_bcd                       : std_logic_vector (3 downto 0);
   signal display                       : std_logic_vector (7 downto 0);
   signal fila                          : std_logic_vector (4 downto 1);
   signal led                           : std_logic_vector (7 downto 0);
   signal locked_OK                     : std_logic;
   signal mill_bcd                      : std_logic_vector (3 downto 0);
   signal punto_dec                     : std_logic_vector (3 downto 0);
   signal reset                         : std_logic;
   signal reset_i                       : std_logic;
   signal seg0                          : std_logic_vector (7 downto 0);
   signal seg1                          : std_logic_vector (7 downto 0);
   signal seg2                          : std_logic_vector (7 downto 0);
   signal seg3                          : std_logic_vector (7 downto 0);
   signal signo_sal                     : std_logic;
   signal sw                            : std_logic_vector (7 downto 0);
   signal sw_i                          : std_logic_vector (7 downto 0);
   signal tecla_pulsada_KHz             : std_logic;
   signal tecla_pulsada_sinc            : std_logic;
   signal uart_rx                       : std_logic;
   signal uart_tx                       : std_logic;
   signal unid_bcd                      : std_logic_vector (3 downto 0);
   signal uno                           : std_logic_vector (7 downto 0);
   signal XLXN_1                        : std_logic;
   signal XLXN_384                      : std_logic;
   signal XLXN_385                      : std_logic;
   signal XLXN_388                      : std_logic;
   signal XLXN_390                      : std_logic;
   signal XLXN_406                      : std_logic_vector (4 downto 1);
   signal XLXN_407                      : std_logic_vector (4 downto 1);
   signal XLXN_460                      : std_logic;
   signal XLXI_138_CLK_openSignal       : std_logic;
   signal XLXI_138_KEYCLEARB_openSignal : std_logic;
   component teclado_hexa_completo_MUSER_convol_top_rl_2022
      port ( col1          : in    std_logic; 
             col2          : in    std_logic; 
             col3          : in    std_logic; 
             col4          : in    std_logic; 
             fila1         : out   std_logic; 
             fila2         : out   std_logic; 
             fila3         : out   std_logic; 
             fila4         : out   std_logic; 
             tecla         : out   std_logic_vector (15 downto 0); 
             ck_teclado    : in    std_logic; 
             codigo_tecla  : out   std_logic_vector (3 downto 0); 
             tecla_pulsada : out   std_logic);
   end component;
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute IBUF_DELAY_VALUE of IBUF : component is "0";
   attribute IFD_DELAY_VALUE of IBUF : component is "AUTO";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component OFD8_HXILINX_convol_top_rl_2022
      port ( C : in    std_logic; 
             D : in    std_logic_vector (7 downto 0); 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OBUFT
      port ( I : in    std_logic; 
             T : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUFT : component is "DEFAULT";
   attribute SLEW of OBUFT : component is "SLOW";
   attribute DRIVE of OBUFT : component is "12";
   attribute BOX_TYPE of OBUFT : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component STARTUP_SPARTAN6
      port ( CLK       : in    std_logic; 
             GSR       : in    std_logic; 
             GTS       : in    std_logic; 
             KEYCLEARB : in    std_logic; 
             CFGCLK    : out   std_logic; 
             CFGMCLK   : out   std_logic; 
             EOS       : out   std_logic);
   end component;
   attribute BOX_TYPE of STARTUP_SPARTAN6 : component is "BLACK_BOX";
   
   component ODDR2
      -- synopsys translate_off
      generic( INIT : bit :=  '0';
               SRTYPE : string :=  "SYNC";
               DDR_ALIGNMENT : string :=  "NONE");
      -- synopsys translate_on
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             C0 : in    std_logic; 
             C1 : in    std_logic; 
             CE : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic; 
             S  : in    std_logic);
   end component;
   attribute INIT of ODDR2 : component is "0";
   attribute SRTYPE of ODDR2 : component is "SYNC";
   attribute DDR_ALIGNMENT of ODDR2 : component is "NONE";
   attribute BOX_TYPE of ODDR2 : component is "BLACK_BOX";
   
   component OFD_HXILINX_convol_top_rl_2022
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component IFD4_HXILINX_convol_top_rl_2022
      port ( C  : in    std_logic; 
             D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             Q0 : out   std_logic; 
             Q1 : out   std_logic; 
             Q2 : out   std_logic; 
             Q3 : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component IFD_HXILINX_convol_top_rl_2022
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component dcm_100m_5m
      port ( clk_in1  : in    std_logic; 
             clk_out1 : out   std_logic; 
             clk_out2 : out   std_logic; 
             reset    : in    std_logic; 
             locked   : out   std_logic);
   end component;
   
   component cont_16bits
      port ( clk  : in    std_logic; 
             sclr : in    std_logic; 
             q    : out   std_logic_vector (15 downto 0));
   end component;
   
   component IFD8_HXILINX_convol_top_rl_2022
      port ( C : in    std_logic; 
             D : in    std_logic_vector (7 downto 0); 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component displays_7seg_nexys3_RemLab_MUSER_convol_top_rl_2022
      port ( mill_bcd   : in    std_logic_vector (3 downto 0); 
             cent_bcd   : in    std_logic_vector (3 downto 0); 
             dec_bcd    : in    std_logic_vector (3 downto 0); 
             unid_bcd   : in    std_logic_vector (3 downto 0); 
             ck_display : in    std_logic; 
             punto_dec  : in    std_logic_vector (3 downto 0); 
             anodo      : out   std_logic_vector (3 downto 0); 
             siete_seg3 : out   std_logic_vector (7 downto 0); 
             siete_seg2 : out   std_logic_vector (7 downto 0); 
             siete_seg1 : out   std_logic_vector (7 downto 0); 
             siete_seg0 : out   std_logic_vector (7 downto 0));
   end component;
   
   component Remote_Lab
      port ( Clk         : in    std_logic; 
             EppASTB     : in    std_logic; 
             EppDSTB     : in    std_logic; 
             EppWRITE    : in    std_logic; 
             RsRx        : in    std_logic; 
             TxInternal  : in    std_logic; 
             sw          : in    std_logic_vector (7 downto 0); 
             btn         : in    std_logic_vector (4 downto 0); 
             LedInternal : in    std_logic_vector (7 downto 0); 
             SevenSeg3   : in    std_logic_vector (7 downto 0); 
             SevenSeg2   : in    std_logic_vector (7 downto 0); 
             SevenSeg1   : in    std_logic_vector (7 downto 0); 
             SevenSeg0   : in    std_logic_vector (7 downto 0); 
             EppDB       : inout std_logic_vector (7 downto 0); 
             EppWAIT     : out   std_logic; 
             RxInternal  : out   std_logic; 
             RsTx        : out   std_logic; 
             swInternal  : out   std_logic_vector (7 downto 0); 
             btnInternal : out   std_logic_vector (4 downto 0); 
             Led         : out   std_logic_vector (7 downto 0); 
             seg         : out   std_logic_vector (7 downto 0); 
             an          : out   std_logic_vector (3 downto 0));
   end component;
   
   component sinc_entrada_MUSER_convol_top_rl_2022
      port ( codigo_tecla_KHz  : in    std_logic_vector (3 downto 0); 
             codigo_tecla_MHz  : out   std_logic_vector (3 downto 0); 
             tecla_pulsada_MHz : out   std_logic; 
             tecla_pulsada_KHz : in    std_logic; 
             ck_MHz            : in    std_logic);
   end component;
   
   component bloque_convol_MUSER_convol_top_rl_2022
      port ( reset         : in    std_logic; 
             cod_tecla     : in    std_logic_vector (3 downto 0); 
             tecla_pulsada : in    std_logic; 
             ck            : in    std_logic; 
             punto_decimal : out   std_logic_vector (4 downto 1); 
             display1      : out   std_logic_vector (3 downto 0); 
             display2      : out   std_logic_vector (3 downto 0); 
             display3      : out   std_logic_vector (3 downto 0); 
             display4      : out   std_logic_vector (3 downto 0));
   end component;
   
   attribute HU_SET of XLXI_35 : label is "XLXI_35_250";
   attribute HU_SET of XLXI_165 : label is "XLXI_165_249";
   attribute HU_SET of XLXI_180 : label is "XLXI_180_251";
   attribute HU_SET of XLXI_279_1 : label is "XLXI_279_1_244";
   attribute HU_SET of XLXI_279_2 : label is "XLXI_279_2_243";
   attribute HU_SET of XLXI_279_3 : label is "XLXI_279_3_242";
   attribute HU_SET of XLXI_279_4 : label is "XLXI_279_4_241";
   attribute HU_SET of XLXI_288_1 : label is "XLXI_288_1_248";
   attribute HU_SET of XLXI_288_2 : label is "XLXI_288_2_247";
   attribute HU_SET of XLXI_288_3 : label is "XLXI_288_3_246";
   attribute HU_SET of XLXI_288_4 : label is "XLXI_288_4_245";
   attribute HU_SET of XLXI_387 : label is "XLXI_387_252";
begin
   XLXI_1 : teclado_hexa_completo_MUSER_convol_top_rl_2022
      port map (ck_teclado=>ck_300Hz,
                col1=>col(1),
                col2=>col(2),
                col3=>col(3),
                col4=>col(4),
                codigo_tecla(3 downto 0)=>codigo_tecla_KHz(3 downto 0),
                fila1=>fila(1),
                fila2=>fila(2),
                fila3=>fila(3),
                fila4=>fila(4),
                tecla=>open,
                tecla_pulsada=>tecla_pulsada_KHz);
   
   XLXI_14 : BUFG
      port map (I=>cuenta_dcm(7),
                O=>ck_20KHz);
   
   XLXI_30 : IBUF
      port map (I=>reset_pad,
                O=>reset_i);
   
   XLXI_35 : OFD8_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D(7 downto 0)=>display(7 downto 0),
                Q(7 downto 0)=>display_pad(7 downto 0));
   
   XLXI_87 : INV
      port map (I=>locked_OK,
                O=>XLXN_1);
   
   XLXI_114_1 : OBUFT
      port map (I=>XLXN_406(1),
                T=>XLXN_407(1),
                O=>fila_pad(1));
   
   XLXI_114_2 : OBUFT
      port map (I=>XLXN_406(2),
                T=>XLXN_407(2),
                O=>fila_pad(2));
   
   XLXI_114_3 : OBUFT
      port map (I=>XLXN_406(3),
                T=>XLXN_407(3),
                O=>fila_pad(3));
   
   XLXI_114_4 : OBUFT
      port map (I=>XLXN_406(4),
                T=>XLXN_407(4),
                O=>fila_pad(4));
   
   XLXI_118_1 : INV
      port map (I=>fila(1),
                O=>XLXN_407(1));
   
   XLXI_118_2 : INV
      port map (I=>fila(2),
                O=>XLXN_407(2));
   
   XLXI_118_3 : INV
      port map (I=>fila(3),
                O=>XLXN_407(3));
   
   XLXI_118_4 : INV
      port map (I=>fila(4),
                O=>XLXN_407(4));
   
   XLXI_134_1 : VCC
      port map (P=>XLXN_406(1));
   
   XLXI_134_2 : VCC
      port map (P=>XLXN_406(2));
   
   XLXI_134_3 : VCC
      port map (P=>XLXN_406(3));
   
   XLXI_134_4 : VCC
      port map (P=>XLXN_406(4));
   
   XLXI_138 : STARTUP_SPARTAN6
      port map (CLK=>XLXI_138_CLK_openSignal,
                GSR=>reset,
                GTS=>reset,
                KEYCLEARB=>XLXI_138_KEYCLEARB_openSignal,
                CFGCLK=>open,
                CFGMCLK=>open,
                EOS=>open);
   
   XLXI_142 : ODDR2
      port map (CE=>XLXN_390,
                C0=>XLXN_460,
                C1=>ck_20KHz,
                D0=>XLXN_384,
                D1=>XLXN_385,
                R=>XLXN_388,
                S=>XLXN_388,
                Q=>ck_display_externo_pad);
   
   XLXI_165 : OFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D=>signo_sal,
                Q=>signo_sal_pad);
   
   XLXI_176 : VCC
      port map (P=>XLXN_384);
   
   XLXI_180 : IFD4_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D0=>boton_der_pad,
                D1=>boton_izq_pad,
                D2=>boton_arr_pad,
                D3=>boton_aba_pad,
                Q0=>boton_der_i,
                Q1=>boton_izq_i,
                Q2=>boton_arr_i,
                Q3=>boton_aba_i);
   
   XLXI_185 : VCC
      port map (P=>XLXN_390);
   
   XLXI_186 : GND
      port map (G=>XLXN_388);
   
   XLXI_279_1 : IFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_300Hz,
                D=>col_pad(1),
                Q=>col(1));
   
   XLXI_279_2 : IFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_300Hz,
                D=>col_pad(2),
                Q=>col(2));
   
   XLXI_279_3 : IFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_300Hz,
                D=>col_pad(3),
                Q=>col(3));
   
   XLXI_279_4 : IFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_300Hz,
                D=>col_pad(4),
                Q=>col(4));
   
   XLXI_288_1 : OFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D=>ce_display_neg(1),
                Q=>ce_display_neg_pad(1));
   
   XLXI_288_2 : OFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D=>ce_display_neg(2),
                Q=>ce_display_neg_pad(2));
   
   XLXI_288_3 : OFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D=>ce_display_neg(3),
                Q=>ce_display_neg_pad(3));
   
   XLXI_288_4 : OFD_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D=>ce_display_neg(4),
                Q=>ce_display_neg_pad(4));
   
   XLXI_292 : GND
      port map (G=>XLXN_385);
   
   XLXI_304 : INV
      port map (I=>ck_20KHz,
                O=>XLXN_460);
   
   XLXI_306 : dcm_100m_5m
      port map (clk_in1=>ck_100MHz_pad,
                reset=>reset,
                clk_out1=>ck_100MHz,
                clk_out2=>ck_5MHz,
                locked=>locked_OK);
   
   XLXI_309 : cont_16bits
      port map (clk=>ck_5MHz,
                sclr=>XLXN_1,
                q(15 downto 0)=>cuenta_dcm(15 downto 0));
   
   XLXI_314 : BUFG
      port map (I=>cuenta_dcm(13),
                O=>ck_300Hz);
   
   XLXI_387 : IFD8_HXILINX_convol_top_rl_2022
      port map (C=>ck_20KHz,
                D(7 downto 0)=>sw_pad(7 downto 0),
                Q(7 downto 0)=>sw_i(7 downto 0));
   
   XLXI_708_0 : GND
      port map (G=>ceros(0));
   
   XLXI_708_1 : GND
      port map (G=>ceros(1));
   
   XLXI_708_2 : GND
      port map (G=>ceros(2));
   
   XLXI_708_3 : GND
      port map (G=>ceros(3));
   
   XLXI_737_0 : GND
      port map (G=>display(0));
   
   XLXI_737_1 : GND
      port map (G=>display(1));
   
   XLXI_737_2 : GND
      port map (G=>display(2));
   
   XLXI_737_3 : GND
      port map (G=>display(3));
   
   XLXI_737_4 : GND
      port map (G=>display(4));
   
   XLXI_737_5 : GND
      port map (G=>display(5));
   
   XLXI_737_6 : GND
      port map (G=>display(6));
   
   XLXI_737_7 : GND
      port map (G=>display(7));
   
   XLXI_745_1 : GND
      port map (G=>ce_display_neg(1));
   
   XLXI_745_2 : GND
      port map (G=>ce_display_neg(2));
   
   XLXI_745_3 : GND
      port map (G=>ce_display_neg(3));
   
   XLXI_745_4 : GND
      port map (G=>ce_display_neg(4));
   
   XLXI_746 : GND
      port map (G=>signo_sal);
   
   XLXI_860_0 : VCC
      port map (P=>uno(0));
   
   XLXI_860_1 : VCC
      port map (P=>uno(1));
   
   XLXI_860_2 : VCC
      port map (P=>uno(2));
   
   XLXI_860_3 : VCC
      port map (P=>uno(3));
   
   XLXI_860_4 : VCC
      port map (P=>uno(4));
   
   XLXI_860_5 : VCC
      port map (P=>uno(5));
   
   XLXI_860_6 : VCC
      port map (P=>uno(6));
   
   XLXI_860_7 : VCC
      port map (P=>uno(7));
   
   XLXI_864 : displays_7seg_nexys3_RemLab_MUSER_convol_top_rl_2022
      port map (cent_bcd(3 downto 0)=>cent_bcd(3 downto 0),
                ck_display=>ck_20KHz,
                dec_bcd(3 downto 0)=>dec_bcd(3 downto 0),
                mill_bcd(3 downto 0)=>mill_bcd(3 downto 0),
                punto_dec(3 downto 0)=>punto_dec(3 downto 0),
                unid_bcd(3 downto 0)=>unid_bcd(3 downto 0),
                anodo=>open,
                siete_seg0(7 downto 0)=>seg0(7 downto 0),
                siete_seg1(7 downto 0)=>seg1(7 downto 0),
                siete_seg2(7 downto 0)=>seg2(7 downto 0),
                siete_seg3(7 downto 0)=>seg3(7 downto 0));
   
   XLXI_865 : Remote_Lab
      port map (btn(4)=>boton_der_i,
                btn(3)=>boton_aba_i,
                btn(2)=>boton_izq_i,
                btn(1)=>boton_arr_i,
                btn(0)=>reset_i,
                Clk=>ck_100MHz,
                EppASTB=>EppASTB,
                EppDSTB=>EppDSTB,
                EppWRITE=>EppWRITE,
                LedInternal(7 downto 0)=>led(7 downto 0),
                RsRx=>uart_rx_pad,
                SevenSeg0(7 downto 0)=>seg0(7 downto 0),
                SevenSeg1(7 downto 0)=>seg1(7 downto 0),
                SevenSeg2(7 downto 0)=>seg2(7 downto 0),
                SevenSeg3(7 downto 0)=>seg3(7 downto 0),
                sw(7 downto 0)=>sw_i(7 downto 0),
                TxInternal=>uart_tx,
                an(3 downto 0)=>anodo_pad(3 downto 0),
                btnInternal(4)=>boton_der,
                btnInternal(3)=>boton_aba,
                btnInternal(2)=>boton_izq,
                btnInternal(1)=>boton_arr,
                btnInternal(0)=>reset,
                EppWAIT=>EppWAIT,
                Led(7 downto 0)=>led_pad(7 downto 0),
                RsTx=>uart_tx_pad,
                RxInternal=>uart_rx,
                seg(7 downto 0)=>seg_pad(7 downto 0),
                swInternal(7 downto 0)=>sw(7 downto 0),
                EppDB(7 downto 0)=>DB(7 downto 0));
   
   XLXI_867 : sinc_entrada_MUSER_convol_top_rl_2022
      port map (ck_MHz=>ck_100MHz,
                codigo_tecla_KHz(3 downto 0)=>codigo_tecla_KHz(3 downto 0),
                tecla_pulsada_KHz=>tecla_pulsada_KHz,
                codigo_tecla_MHz(3 downto 0)=>cod_tecla_sinc(3 downto 0),
                tecla_pulsada_MHz=>tecla_pulsada_sinc);
   
   XLXI_871_0 : GND
      port map (G=>led(0));
   
   XLXI_871_1 : GND
      port map (G=>led(1));
   
   XLXI_871_2 : GND
      port map (G=>led(2));
   
   XLXI_871_3 : GND
      port map (G=>led(3));
   
   XLXI_871_4 : GND
      port map (G=>led(4));
   
   XLXI_871_5 : GND
      port map (G=>led(5));
   
   XLXI_871_6 : GND
      port map (G=>led(6));
   
   XLXI_871_7 : GND
      port map (G=>led(7));
   
   XLXI_872 : bloque_convol_MUSER_convol_top_rl_2022
      port map (ck=>ck_100MHz,
                cod_tecla(3 downto 0)=>cod_tecla_sinc(3 downto 0),
                reset=>reset,
                tecla_pulsada=>tecla_pulsada_sinc,
                display1(3 downto 0)=>mill_bcd(3 downto 0),
                display2(3 downto 0)=>cent_bcd(3 downto 0),
                display3(3 downto 0)=>dec_bcd(3 downto 0),
                display4(3 downto 0)=>unid_bcd(3 downto 0),
                punto_decimal(4 downto 1)=>punto_dec(3 downto 0));
   
end BEHAVIORAL;


