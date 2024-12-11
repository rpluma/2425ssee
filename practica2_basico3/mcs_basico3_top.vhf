--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : mcs_basico3_top.vhf
-- /___/   /\     Timestamp : 12/09/2024 09:37:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/mcs_basico3_top.vhf -w C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/mcs_basico3_top.sch
--Design Name: mcs_basico3_top
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_mcs_basico3_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_mcs_basico3_top is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_mcs_basico3_top;

architecture Behavioral of FD8CE_HXILINX_mcs_basico3_top is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL IFD4_HXILINX_mcs_basico3_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD4_HXILINX_mcs_basico3_top is
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

end IFD4_HXILINX_mcs_basico3_top;

architecture Behavioral of IFD4_HXILINX_mcs_basico3_top is

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

----- CELL IFD8_HXILINX_mcs_basico3_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD8_HXILINX_mcs_basico3_top is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );

attribute IOB         : string ;
attribute IOB of Q : signal is "True";

end IFD8_HXILINX_mcs_basico3_top;

architecture Behavioral of IFD8_HXILINX_mcs_basico3_top is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL OFD8_HXILINX_mcs_basico3_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OFD8_HXILINX_mcs_basico3_top is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );

attribute IOB         : string ;
attribute IOB of Q : signal is "True";

end OFD8_HXILINX_mcs_basico3_top;

architecture Behavioral of OFD8_HXILINX_mcs_basico3_top is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL M4_1E_HXILINX_mcs_basico3_top -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_mcs_basico3_top is
  
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
end M4_1E_HXILINX_mcs_basico3_top;

architecture M4_1E_HXILINX_mcs_basico3_top_V of M4_1E_HXILINX_mcs_basico3_top is
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
end M4_1E_HXILINX_mcs_basico3_top_V;
----- CELL OFD_HXILINX_mcs_basico3_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OFD_HXILINX_mcs_basico3_top is
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

end OFD_HXILINX_mcs_basico3_top;

architecture Behavioral of OFD_HXILINX_mcs_basico3_top is
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

----- CELL M2_1_HXILINX_mcs_basico3_top -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_mcs_basico3_top is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_mcs_basico3_top;

architecture M2_1_HXILINX_mcs_basico3_top_V of M2_1_HXILINX_mcs_basico3_top is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_mcs_basico3_top_V;
----- CELL IFD_HXILINX_mcs_basico3_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD_HXILINX_mcs_basico3_top is
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

end IFD_HXILINX_mcs_basico3_top;

architecture Behavioral of IFD_HXILINX_mcs_basico3_top is
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

----- CELL COMP16_HXILINX_mcs_basico3_top -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP16_HXILINX_mcs_basico3_top is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(15 downto 0);
    B   : in std_logic_vector(15 downto 0)
  );
end COMP16_HXILINX_mcs_basico3_top;

architecture COMP16_HXILINX_mcs_basico3_top_V of COMP16_HXILINX_mcs_basico3_top is
begin
  EQ <= '1' when (A=B) else '0';
end COMP16_HXILINX_mcs_basico3_top_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity calc_potencia_MUSER_mcs_basico3_top is
   port ( ck         : in    std_logic; 
          reset      : in    std_logic; 
          TemIn      : in    std_logic_vector (7 downto 0); 
          TemMax     : in    std_logic_vector (7 downto 0); 
          TemMin     : in    std_logic_vector (7 downto 0); 
          TemOb      : in    std_logic_vector (7 downto 0); 
          Tem_n      : in    std_logic; 
          potencia   : out   std_logic_vector (7 downto 0); 
          potencia_p : out   std_logic);
end calc_potencia_MUSER_mcs_basico3_top;

architecture BEHAVIORAL of calc_potencia_MUSER_mcs_basico3_top is
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
   
   component M2_1_HXILINX_mcs_basico3_top
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
   
   component M4_1E_HXILINX_mcs_basico3_top
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
   
   attribute HU_SET of XLXI_37_0 : label is "XLXI_37_0_137";
   attribute HU_SET of XLXI_37_1 : label is "XLXI_37_1_136";
   attribute HU_SET of XLXI_37_2 : label is "XLXI_37_2_135";
   attribute HU_SET of XLXI_37_3 : label is "XLXI_37_3_134";
   attribute HU_SET of XLXI_37_4 : label is "XLXI_37_4_133";
   attribute HU_SET of XLXI_37_5 : label is "XLXI_37_5_132";
   attribute HU_SET of XLXI_37_6 : label is "XLXI_37_6_131";
   attribute HU_SET of XLXI_37_7 : label is "XLXI_37_7_130";
   attribute HU_SET of XLXI_76_0 : label is "XLXI_76_0_145";
   attribute HU_SET of XLXI_76_1 : label is "XLXI_76_1_144";
   attribute HU_SET of XLXI_76_2 : label is "XLXI_76_2_143";
   attribute HU_SET of XLXI_76_3 : label is "XLXI_76_3_142";
   attribute HU_SET of XLXI_76_4 : label is "XLXI_76_4_141";
   attribute HU_SET of XLXI_76_5 : label is "XLXI_76_5_140";
   attribute HU_SET of XLXI_76_6 : label is "XLXI_76_6_139";
   attribute HU_SET of XLXI_76_7 : label is "XLXI_76_7_138";
   attribute HU_SET of XLXI_95_0 : label is "XLXI_95_0_129";
   attribute HU_SET of XLXI_95_1 : label is "XLXI_95_1_128";
   attribute HU_SET of XLXI_95_2 : label is "XLXI_95_2_127";
   attribute HU_SET of XLXI_95_3 : label is "XLXI_95_3_126";
   attribute HU_SET of XLXI_95_4 : label is "XLXI_95_4_125";
   attribute HU_SET of XLXI_95_5 : label is "XLXI_95_5_124";
   attribute HU_SET of XLXI_95_6 : label is "XLXI_95_6_123";
   attribute HU_SET of XLXI_95_7 : label is "XLXI_95_7_122";
   attribute HU_SET of XLXI_95_8 : label is "XLXI_95_8_121";
   attribute HU_SET of XLXI_95_9 : label is "XLXI_95_9_120";
   attribute HU_SET of XLXI_95_10 : label is "XLXI_95_10_119";
   attribute HU_SET of XLXI_95_11 : label is "XLXI_95_11_118";
   attribute HU_SET of XLXI_95_12 : label is "XLXI_95_12_117";
   attribute HU_SET of XLXI_95_13 : label is "XLXI_95_13_116";
   attribute HU_SET of XLXI_95_14 : label is "XLXI_95_14_115";
   attribute HU_SET of XLXI_95_15 : label is "XLXI_95_15_114";
   attribute HU_SET of XLXI_97_0 : label is "XLXI_97_0_158";
   attribute HU_SET of XLXI_97_1 : label is "XLXI_97_1_157";
   attribute HU_SET of XLXI_97_2 : label is "XLXI_97_2_156";
   attribute HU_SET of XLXI_97_3 : label is "XLXI_97_3_155";
   attribute HU_SET of XLXI_97_4 : label is "XLXI_97_4_154";
   attribute HU_SET of XLXI_97_5 : label is "XLXI_97_5_153";
   attribute HU_SET of XLXI_97_6 : label is "XLXI_97_6_152";
   attribute HU_SET of XLXI_97_7 : label is "XLXI_97_7_151";
   attribute HU_SET of XLXI_97_8 : label is "XLXI_97_8_150";
   attribute HU_SET of XLXI_97_9 : label is "XLXI_97_9_149";
   attribute HU_SET of XLXI_97_10 : label is "XLXI_97_10_148";
   attribute HU_SET of XLXI_97_11 : label is "XLXI_97_11_147";
   attribute HU_SET of XLXI_97_12 : label is "XLXI_97_12_146";
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
   
   XLXI_37_0 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(0),
                D1=>TemObj(0),
                S0=>s,
                O=>LimSup(0));
   
   XLXI_37_1 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(1),
                D1=>TemObj(1),
                S0=>s,
                O=>LimSup(1));
   
   XLXI_37_2 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(2),
                D1=>TemObj(2),
                S0=>s,
                O=>LimSup(2));
   
   XLXI_37_3 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(3),
                D1=>TemObj(3),
                S0=>s,
                O=>LimSup(3));
   
   XLXI_37_4 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(4),
                D1=>TemObj(4),
                S0=>s,
                O=>LimSup(4));
   
   XLXI_37_5 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(5),
                D1=>TemObj(5),
                S0=>s,
                O=>LimSup(5));
   
   XLXI_37_6 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(6),
                D1=>TemObj(6),
                S0=>s,
                O=>LimSup(6));
   
   XLXI_37_7 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemMax(7),
                D1=>TemObj(7),
                S0=>s,
                O=>LimSup(7));
   
   XLXI_58 : FD
      port map (C=>ck,
                D=>XLXN_105,
                Q=>XLXN_42);
   
   XLXI_76_0 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(0),
                D1=>TemMin(0),
                S0=>s,
                O=>LimInf(0));
   
   XLXI_76_1 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(1),
                D1=>TemMin(1),
                S0=>s,
                O=>LimInf(1));
   
   XLXI_76_2 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(2),
                D1=>TemMin(2),
                S0=>s,
                O=>LimInf(2));
   
   XLXI_76_3 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(3),
                D1=>TemMin(3),
                S0=>s,
                O=>LimInf(3));
   
   XLXI_76_4 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(4),
                D1=>TemMin(4),
                S0=>s,
                O=>LimInf(4));
   
   XLXI_76_5 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(5),
                D1=>TemMin(5),
                S0=>s,
                O=>LimInf(5));
   
   XLXI_76_6 : M2_1_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(6),
                D1=>TemMin(6),
                S0=>s,
                O=>LimInf(6));
   
   XLXI_76_7 : M2_1_HXILINX_mcs_basico3_top
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
   
   XLXI_95_0 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(0),
                D1=>c,
                D2=>calorx100(0),
                D3=>LimSup(0),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(0));
   
   XLXI_95_1 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(1),
                D1=>c,
                D2=>calorx100(1),
                D3=>LimSup(1),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(1));
   
   XLXI_95_2 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(2),
                D1=>c,
                D2=>calorx100(2),
                D3=>LimSup(2),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(2));
   
   XLXI_95_3 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(3),
                D1=>c,
                D2=>calorx100(3),
                D3=>LimSup(3),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(3));
   
   XLXI_95_4 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(4),
                D1=>c,
                D2=>calorx100(4),
                D3=>LimSup(4),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(4));
   
   XLXI_95_5 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(5),
                D1=>c,
                D2=>calorx100(5),
                D3=>LimSup(5),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(5));
   
   XLXI_95_6 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(6),
                D1=>calor(0),
                D2=>calorx100(6),
                D3=>LimSup(6),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(6));
   
   XLXI_95_7 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemInt(7),
                D1=>calor(1),
                D2=>calorx100(7),
                D3=>LimSup(7),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(7));
   
   XLXI_95_8 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(2),
                D2=>calorx100(8),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(8));
   
   XLXI_95_9 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(3),
                D2=>calorx100(9),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(9));
   
   XLXI_95_10 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(4),
                D2=>calorx100(10),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(10));
   
   XLXI_95_11 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(5),
                D2=>calorx100(11),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(11));
   
   XLXI_95_12 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(6),
                D2=>calorx100(12),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(12));
   
   XLXI_95_13 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(7),
                D2=>calorx100(13),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(13));
   
   XLXI_95_14 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>s,
                D2=>calorx100(14),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(14));
   
   XLXI_95_15 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>s,
                D2=>calorx100(15),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sa(15));
   
   XLXI_97_0 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(0),
                D1=>c,
                D2=>c,
                D3=>LimInf(0),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(0));
   
   XLXI_97_1 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(1),
                D1=>c,
                D2=>c,
                D3=>LimInf(1),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(1));
   
   XLXI_97_2 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(2),
                D1=>c,
                D2=>calor(0),
                D3=>LimInf(2),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(2));
   
   XLXI_97_3 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(3),
                D1=>c,
                D2=>calor(1),
                D3=>LimInf(3),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(3));
   
   XLXI_97_4 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(4),
                D1=>c,
                D2=>calor(2),
                D3=>LimInf(4),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(4));
   
   XLXI_97_5 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(5),
                D1=>calor(0),
                D2=>calor(3),
                D3=>LimInf(5),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(5));
   
   XLXI_97_6 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(6),
                D1=>calor(1),
                D2=>calor(4),
                D3=>LimInf(6),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(6));
   
   XLXI_97_7 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>TemObj(7),
                D1=>calor(2),
                D2=>calor(5),
                D3=>LimInf(7),
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(7));
   
   XLXI_97_8 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(3),
                D2=>calor(6),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(8));
   
   XLXI_97_9 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(4),
                D2=>calor(7),
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(9));
   
   XLXI_97_10 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(5),
                D2=>s,
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(10));
   
   XLXI_97_11 : M4_1E_HXILINX_mcs_basico3_top
      port map (D0=>c,
                D1=>calor(6),
                D2=>s,
                D3=>c,
                E=>sumador,
                S0=>sel_sum(0),
                S1=>sel_sum(1),
                O=>sb(11));
   
   XLXI_97_12 : M4_1E_HXILINX_mcs_basico3_top
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity displays_7seg_nexys3_RemLab_MUSER_mcs_basico3_top is
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
end displays_7seg_nexys3_RemLab_MUSER_mcs_basico3_top;

architecture BEHAVIORAL of displays_7seg_nexys3_RemLab_MUSER_mcs_basico3_top is
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

entity iobus_salida_MUSER_mcs_basico3_top is
   port ( ck              : in    std_logic; 
          gpi1            : in    std_logic_vector (7 downto 0); 
          io_address      : in    std_logic_vector (31 downto 0); 
          io_addr_strobe  : in    std_logic; 
          io_byte_enable  : in    std_logic_vector (3 downto 0); 
          io_read_strobe  : in    std_logic; 
          io_write_data   : in    std_logic_vector (31 downto 0); 
          io_write_strobe : in    std_logic; 
          dato_escrito    : out   std_logic_vector (31 downto 0); 
          io_ready        : out   std_logic; 
          io_read_data    : out   std_logic_vector (31 downto 0));
end iobus_salida_MUSER_mcs_basico3_top;

architecture BEHAVIORAL of iobus_salida_MUSER_mcs_basico3_top is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal direccion_0        : std_logic;
   signal escritura_dir_0    : std_logic;
   signal escritura_dir_0_b0 : std_logic;
   signal escritura_dir_0_b1 : std_logic;
   signal escritura_dir_0_b2 : std_logic;
   signal escritura_dir_0_b3 : std_logic;
   signal lectura_dir_0      : std_logic;
   signal XLXN_48            : std_logic;
   signal XLXN_191           : std_logic;
   signal XLXN_192           : std_logic;
   signal XLXN_194           : std_logic;
   signal XLXN_278           : std_logic;
   signal XLXN_282           : std_logic;
   signal XLXN_283           : std_logic_vector (15 downto 0);
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component FD8CE_HXILINX_mcs_basico3_top
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
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
   
   component COMP16_HXILINX_mcs_basico3_top
      port ( A  : in    std_logic_vector (15 downto 0); 
             B  : in    std_logic_vector (15 downto 0); 
             EQ : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_159";
   attribute HU_SET of XLXI_52 : label is "XLXI_52_162";
   attribute HU_SET of XLXI_54 : label is "XLXI_54_160";
   attribute HU_SET of XLXI_56 : label is "XLXI_56_161";
   attribute HU_SET of XLXI_82 : label is "XLXI_82_163";
   attribute HU_SET of XLXI_88 : label is "XLXI_88_164";
begin
   XLXN_283(15 downto 0) <= x"0004";
   io_read_data(31 downto 8) <= x"000000";
   XLXI_4 : AND3
      port map (I0=>io_write_strobe,
                I1=>io_addr_strobe,
                I2=>direccion_0,
                O=>escritura_dir_0);
   
   XLXI_5 : FD8CE_HXILINX_mcs_basico3_top
      port map (C=>ck,
                CE=>escritura_dir_0_b0,
                CLR=>XLXN_48,
                D(7 downto 0)=>io_write_data(7 downto 0),
                Q(7 downto 0)=>dato_escrito(7 downto 0));
   
   XLXI_6 : GND
      port map (G=>XLXN_48);
   
   XLXI_51 : GND
      port map (G=>XLXN_194);
   
   XLXI_52 : FD8CE_HXILINX_mcs_basico3_top
      port map (C=>ck,
                CE=>escritura_dir_0_b1,
                CLR=>XLXN_194,
                D(7 downto 0)=>io_write_data(15 downto 8),
                Q(7 downto 0)=>dato_escrito(15 downto 8));
   
   XLXI_53 : GND
      port map (G=>XLXN_191);
   
   XLXI_54 : FD8CE_HXILINX_mcs_basico3_top
      port map (C=>ck,
                CE=>escritura_dir_0_b2,
                CLR=>XLXN_191,
                D(7 downto 0)=>io_write_data(23 downto 16),
                Q(7 downto 0)=>dato_escrito(23 downto 16));
   
   XLXI_55 : GND
      port map (G=>XLXN_192);
   
   XLXI_56 : FD8CE_HXILINX_mcs_basico3_top
      port map (C=>ck,
                CE=>escritura_dir_0_b3,
                CLR=>XLXN_192,
                D(7 downto 0)=>io_write_data(31 downto 24),
                Q(7 downto 0)=>dato_escrito(31 downto 24));
   
   XLXI_57 : AND2
      port map (I0=>io_byte_enable(0),
                I1=>escritura_dir_0,
                O=>escritura_dir_0_b0);
   
   XLXI_58 : AND2
      port map (I0=>io_byte_enable(1),
                I1=>escritura_dir_0,
                O=>escritura_dir_0_b1);
   
   XLXI_71 : AND2
      port map (I0=>io_byte_enable(2),
                I1=>escritura_dir_0,
                O=>escritura_dir_0_b2);
   
   XLXI_72 : AND2
      port map (I0=>io_byte_enable(3),
                I1=>escritura_dir_0,
                O=>escritura_dir_0_b3);
   
   XLXI_80 : AND3
      port map (I0=>io_read_strobe,
                I1=>io_addr_strobe,
                I2=>direccion_0,
                O=>lectura_dir_0);
   
   XLXI_81 : GND
      port map (G=>XLXN_278);
   
   XLXI_82 : FD8CE_HXILINX_mcs_basico3_top
      port map (C=>ck,
                CE=>lectura_dir_0,
                CLR=>XLXN_278,
                D(7 downto 0)=>gpi1(7 downto 0),
                Q(7 downto 0)=>io_read_data(7 downto 0));
   
   XLXI_86 : FD
      port map (C=>ck,
                D=>XLXN_282,
                Q=>io_ready);
   
   XLXI_87 : OR2
      port map (I0=>lectura_dir_0,
                I1=>escritura_dir_0,
                O=>XLXN_282);
   
   XLXI_88 : COMP16_HXILINX_mcs_basico3_top
      port map (A(15 downto 0)=>io_address(15 downto 0),
                B(15 downto 0)=>XLXN_283(15 downto 0),
                EQ=>direccion_0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mcs_basico3_top is
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
end mcs_basico3_top;

architecture BEHAVIORAL of mcs_basico3_top is
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
   signal c                             : std_logic;
   signal cero                          : std_logic;
   signal ce_display_neg                : std_logic_vector (4 downto 1);
   signal ck_5MHz                       : std_logic;
   signal ck_20KHz                      : std_logic;
   signal ck_100MHz                     : std_logic;
   signal ck_300Hz                      : std_logic;
   signal col                           : std_logic_vector (4 downto 1);
   signal cuenta_dcm                    : std_logic_vector (15 downto 0);
   signal dato_escrito                  : std_logic_vector (31 downto 0);
   signal display                       : std_logic_vector (7 downto 0);
   signal fila                          : std_logic_vector (4 downto 1);
   signal gpo_bcd                       : std_logic_vector (15 downto 0);
   signal interrupcion_reconocida       : std_logic;
   signal io_address                    : std_logic_vector (31 downto 0);
   signal io_addr_strobe                : std_logic;
   signal io_byte_enable                : std_logic_vector (3 downto 0);
   signal io_ready                      : std_logic;
   signal io_read_data                  : std_logic_vector (31 downto 0);
   signal io_read_strobe                : std_logic;
   signal io_write_data                 : std_logic_vector (31 downto 0);
   signal io_write_strobe               : std_logic;
   signal led                           : std_logic_vector (7 downto 0);
   signal lockedZ                       : std_logic;
   signal locked_OK                     : std_logic;
   signal potencia                      : std_logic_vector (7 downto 0);
   signal potencia_p                    : std_logic;
   signal reset                         : std_logic;
   signal reset_i                       : std_logic;
   signal seg0                          : std_logic_vector (7 downto 0);
   signal seg1                          : std_logic_vector (7 downto 0);
   signal seg2                          : std_logic_vector (7 downto 0);
   signal seg3                          : std_logic_vector (7 downto 0);
   signal signo_sal                     : std_logic;
   signal sw                            : std_logic_vector (7 downto 0);
   signal sw_i                          : std_logic_vector (7 downto 0);
   signal TemIn                         : std_logic_vector (7 downto 0);
   signal TemMax                        : std_logic_vector (7 downto 0);
   signal TemMin                        : std_logic_vector (7 downto 0);
   signal TemOb                         : std_logic_vector (7 downto 0);
   signal Tem_n                         : std_logic;
   signal uart_rx                       : std_logic;
   signal uart_tx                       : std_logic;
   signal uno                           : std_logic;
   signal XLXN_384                      : std_logic;
   signal XLXN_385                      : std_logic;
   signal XLXN_388                      : std_logic;
   signal XLXN_390                      : std_logic;
   signal XLXN_406                      : std_logic_vector (4 downto 1);
   signal XLXN_407                      : std_logic_vector (4 downto 1);
   signal XLXN_460                      : std_logic;
   signal XLXI_138_CLK_openSignal       : std_logic;
   signal XLXI_138_KEYCLEARB_openSignal : std_logic;
   component microcontrolador_mcs
      port ( clk            : in    std_logic; 
             reset          : in    std_logic; 
             uart_tx        : out   std_logic; 
             uart_rx        : in    std_logic; 
             fit1_toggle    : out   std_logic; 
             fit1_interrupt : out   std_logic; 
             gpi1           : in    std_logic_vector (7 downto 0); 
             gpi2           : in    std_logic_vector (7 downto 0); 
             gpo1           : out   std_logic_vector (16 downto 0); 
             gpo2           : out   std_logic_vector (7 downto 0); 
             gpo3           : out   std_logic_vector (15 downto 0); 
             intc_irq       : out   std_logic; 
             intc_interrupt : in    std_logic_vector (4 downto 0));
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component OFD8_HXILINX_mcs_basico3_top
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
   
   component OFD_HXILINX_mcs_basico3_top
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component IFD4_HXILINX_mcs_basico3_top
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
   
   component iobus_salida_MUSER_mcs_basico3_top
      port ( io_write_strobe : in    std_logic; 
             io_addr_strobe  : in    std_logic; 
             ck              : in    std_logic; 
             io_byte_enable  : in    std_logic_vector (3 downto 0); 
             io_address      : in    std_logic_vector (31 downto 0); 
             io_read_strobe  : in    std_logic; 
             io_write_data   : in    std_logic_vector (31 downto 0); 
             gpi1            : in    std_logic_vector (7 downto 0); 
             dato_escrito    : out   std_logic_vector (31 downto 0); 
             io_read_data    : out   std_logic_vector (31 downto 0); 
             io_ready        : out   std_logic);
   end component;
   
   component IFD_HXILINX_mcs_basico3_top
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component IFD8_HXILINX_mcs_basico3_top
      port ( C : in    std_logic; 
             D : in    std_logic_vector (7 downto 0); 
             Q : out   std_logic_vector (7 downto 0));
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
   
   component displays_7seg_nexys3_RemLab_MUSER_mcs_basico3_top
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
   
   component calc_potencia_MUSER_mcs_basico3_top
      port ( TemOb      : in    std_logic_vector (7 downto 0); 
             TemIn      : in    std_logic_vector (7 downto 0); 
             ck         : in    std_logic; 
             potencia   : out   std_logic_vector (7 downto 0); 
             TemMin     : in    std_logic_vector (7 downto 0); 
             Tem_n      : in    std_logic; 
             TemMax     : in    std_logic_vector (7 downto 0); 
             reset      : in    std_logic; 
             potencia_p : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_35 : label is "XLXI_35_174";
   attribute HU_SET of XLXI_165 : label is "XLXI_165_173";
   attribute HU_SET of XLXI_180 : label is "XLXI_180_175";
   attribute HU_SET of XLXI_279_1 : label is "XLXI_279_1_168";
   attribute HU_SET of XLXI_279_2 : label is "XLXI_279_2_167";
   attribute HU_SET of XLXI_279_3 : label is "XLXI_279_3_166";
   attribute HU_SET of XLXI_279_4 : label is "XLXI_279_4_165";
   attribute HU_SET of XLXI_288_1 : label is "XLXI_288_1_172";
   attribute HU_SET of XLXI_288_2 : label is "XLXI_288_2_171";
   attribute HU_SET of XLXI_288_3 : label is "XLXI_288_3_170";
   attribute HU_SET of XLXI_288_4 : label is "XLXI_288_4_169";
   attribute HU_SET of XLXI_387 : label is "XLXI_387_176";
begin
   TemMax(7 downto 0) <= x"3C";
   TemMin(7 downto 0) <= x"F6";
   mcs_0 : microcontrolador_mcs
      port map (clk=>ck_100MHz,
                gpi1(7 downto 0)=>potencia(7 downto 0),
                gpi2(7 downto 0)=>sw(7 downto 0),
                intc_interrupt(4)=>potencia_p,
                intc_interrupt(3)=>boton_aba,
                intc_interrupt(2)=>boton_arr,
                intc_interrupt(1)=>boton_izq,
                intc_interrupt(0)=>boton_der,
                reset=>lockedZ,
                uart_rx=>uart_rx,
                fit1_interrupt=>open,
                fit1_toggle=>open,
                gpo1(16)=>Tem_n,
                gpo1(15 downto 8)=>TemOb(7 downto 0),
                gpo1(7 downto 0)=>TemIn(7 downto 0),
                gpo2(7 downto 0)=>led(7 downto 0),
                gpo3(15 downto 0)=>gpo_bcd(15 downto 0),
                intc_irq=>interrupcion_reconocida,
                uart_tx=>uart_tx);
   
   XLXI_14 : BUFG
      port map (I=>cuenta_dcm(7),
                O=>ck_20KHz);
   
   XLXI_30 : IBUF
      port map (I=>reset_pad,
                O=>reset_i);
   
   XLXI_31 : GND
      port map (G=>cero);
   
   XLXI_32 : VCC
      port map (P=>uno);
   
   XLXI_35 : OFD8_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D(7 downto 0)=>display(7 downto 0),
                Q(7 downto 0)=>display_pad(7 downto 0));
   
   XLXI_87 : INV
      port map (I=>locked_OK,
                O=>lockedZ);
   
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
   
   XLXI_165 : OFD_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D=>signo_sal,
                Q=>signo_sal_pad);
   
   XLXI_176 : VCC
      port map (P=>XLXN_384);
   
   XLXI_180 : IFD4_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D0=>boton_der_pad,
                D1=>boton_izq_pad,
                D2=>boton_arr_pad,
                D3=>boton_aba_pad,
                Q0=>boton_der_i,
                Q1=>boton_izq_i,
                Q2=>boton_arr_i,
                Q3=>boton_aba_i);
   
   XLXI_183 : iobus_salida_MUSER_mcs_basico3_top
      port map (ck=>ck_100MHz,
                gpi1(7 downto 0)=>sw(7 downto 0),
                io_address(31 downto 0)=>io_address(31 downto 0),
                io_addr_strobe=>io_addr_strobe,
                io_byte_enable(3 downto 0)=>io_byte_enable(3 downto 0),
                io_read_strobe=>io_read_strobe,
                io_write_data(31 downto 0)=>io_write_data(31 downto 0),
                io_write_strobe=>io_write_strobe,
                dato_escrito(31 downto 0)=>dato_escrito(31 downto 0),
                io_ready=>io_ready,
                io_read_data(31 downto 0)=>io_read_data(31 downto 0));
   
   XLXI_185 : VCC
      port map (P=>XLXN_390);
   
   XLXI_186 : GND
      port map (G=>XLXN_388);
   
   XLXI_279_1 : IFD_HXILINX_mcs_basico3_top
      port map (C=>ck_300Hz,
                D=>col_pad(1),
                Q=>col(1));
   
   XLXI_279_2 : IFD_HXILINX_mcs_basico3_top
      port map (C=>ck_300Hz,
                D=>col_pad(2),
                Q=>col(2));
   
   XLXI_279_3 : IFD_HXILINX_mcs_basico3_top
      port map (C=>ck_300Hz,
                D=>col_pad(3),
                Q=>col(3));
   
   XLXI_279_4 : IFD_HXILINX_mcs_basico3_top
      port map (C=>ck_300Hz,
                D=>col_pad(4),
                Q=>col(4));
   
   XLXI_288_1 : OFD_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(1),
                Q=>ce_display_neg_pad(1));
   
   XLXI_288_2 : OFD_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(2),
                Q=>ce_display_neg_pad(2));
   
   XLXI_288_3 : OFD_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(3),
                Q=>ce_display_neg_pad(3));
   
   XLXI_288_4 : OFD_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(4),
                Q=>ce_display_neg_pad(4));
   
   XLXI_292 : GND
      port map (G=>XLXN_385);
   
   XLXI_304 : INV
      port map (I=>ck_20KHz,
                O=>XLXN_460);
   
   XLXI_314 : BUFG
      port map (I=>cuenta_dcm(13),
                O=>ck_300Hz);
   
   XLXI_387 : IFD8_HXILINX_mcs_basico3_top
      port map (C=>ck_20KHz,
                D(7 downto 0)=>sw_pad(7 downto 0),
                Q(7 downto 0)=>sw_i(7 downto 0));
   
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
   
   XLXI_866 : dcm_100m_5m
      port map (clk_in1=>ck_100MHz_pad,
                reset=>reset,
                clk_out1=>ck_100MHz,
                clk_out2=>ck_5MHz,
                locked=>locked_OK);
   
   XLXI_867 : cont_16bits
      port map (clk=>ck_5MHz,
                sclr=>lockedZ,
                q(15 downto 0)=>cuenta_dcm(15 downto 0));
   
   XLXI_873 : displays_7seg_nexys3_RemLab_MUSER_mcs_basico3_top
      port map (cent_bcd(3 downto 0)=>gpo_bcd(11 downto 8),
                ck_display=>ck_20KHz,
                dec_bcd(3 downto 0)=>gpo_bcd(7 downto 4),
                mill_bcd(3 downto 0)=>gpo_bcd(15 downto 12),
                punto_dec(3)=>cero,
                punto_dec(2)=>uno,
                punto_dec(1)=>cero,
                punto_dec(0)=>cero,
                unid_bcd(3 downto 0)=>gpo_bcd(3 downto 0),
                anodo=>open,
                siete_seg0(7 downto 0)=>seg0(7 downto 0),
                siete_seg1(7 downto 0)=>seg1(7 downto 0),
                siete_seg2(7 downto 0)=>seg2(7 downto 0),
                siete_seg3(7 downto 0)=>seg3(7 downto 0));
   
   XLXI_876 : calc_potencia_MUSER_mcs_basico3_top
      port map (ck=>ck_100MHz,
                reset=>reset,
                TemIn(7 downto 0)=>TemIn(7 downto 0),
                TemMax(7 downto 0)=>TemMax(7 downto 0),
                TemMin(7 downto 0)=>TemMin(7 downto 0),
                TemOb(7 downto 0)=>TemOb(7 downto 0),
                Tem_n=>Tem_n,
                potencia(7 downto 0)=>potencia(7 downto 0),
                potencia_p=>potencia_p);
   
   XLXI_885 : GND
      port map (G=>c);
   
end BEHAVIORAL;


