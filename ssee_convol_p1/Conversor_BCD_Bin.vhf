--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Conversor_BCD_Bin.vhf
-- /___/   /\     Timestamp : 11/14/2024 10:55:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Conversor_BCD_Bin.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Conversor_BCD_Bin.sch
--Design Name: Conversor_BCD_Bin
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8RE_HXILINX_Conversor_BCD_Bin -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_Conversor_BCD_Bin is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_Conversor_BCD_Bin;

architecture Behavioral of FD8RE_HXILINX_Conversor_BCD_Bin is

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

----- CELL M2_1_HXILINX_Conversor_BCD_Bin -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Conversor_BCD_Bin is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Conversor_BCD_Bin;

architecture M2_1_HXILINX_Conversor_BCD_Bin_V of M2_1_HXILINX_Conversor_BCD_Bin is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Conversor_BCD_Bin_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BCD_A_Bin_MUSER_Conversor_BCD_Bin is
   port ( ck  : in    std_logic; 
          d   : in    std_logic_vector (3 downto 0); 
          ldZ : in    std_logic; 
          sin : in    std_logic; 
          q0  : out   std_logic);
end BCD_A_Bin_MUSER_Conversor_BCD_Bin;

architecture BEHAVIORAL of BCD_A_Bin_MUSER_Conversor_BCD_Bin is
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
   
   component M2_1_HXILINX_Conversor_BCD_Bin
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
   
   attribute HU_SET of XLXI_12 : label is "XLXI_12_126";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_124";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_125";
   attribute HU_SET of XLXI_62 : label is "XLXI_62_127";
begin
   XLXI_9 : AND2
      port map (I0=>sin,
                I1=>q3,
                O=>XLXN_48);
   
   XLXI_12 : M2_1_HXILINX_Conversor_BCD_Bin
      port map (D0=>d(3),
                D1=>XLXN_48,
                S0=>ldZ,
                O=>XLXN_6);
   
   XLXI_13 : M2_1_HXILINX_Conversor_BCD_Bin
      port map (D0=>d(2),
                D1=>XLXN_49,
                S0=>ldZ,
                O=>XLXN_7);
   
   XLXI_30 : M2_1_HXILINX_Conversor_BCD_Bin
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
   
   XLXI_62 : M2_1_HXILINX_Conversor_BCD_Bin
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

entity Conversor_BCD_Bin is
   port ( cent       : in    std_logic_vector (3 downto 0); 
          ck         : in    std_logic; 
          dec        : in    std_logic_vector (3 downto 0); 
          inicio     : in    std_logic; 
          reset      : in    std_logic; 
          unid       : in    std_logic_vector (3 downto 0); 
          dato_bin   : out   std_logic_vector (7 downto 0); 
          dato_nuevo : out   std_logic);
end Conversor_BCD_Bin;

architecture BEHAVIORAL of Conversor_BCD_Bin is
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
   component BCD_A_Bin_MUSER_Conversor_BCD_Bin
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
   
   component FD8RE_HXILINX_Conversor_BCD_Bin
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
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_128";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_129";
begin
   XLXI_1 : BCD_A_Bin_MUSER_Conversor_BCD_Bin
      port map (ck=>ck,
                d(3 downto 0)=>cent(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_17,
                q0=>XLXN_14);
   
   XLXI_2 : BCD_A_Bin_MUSER_Conversor_BCD_Bin
      port map (ck=>ck,
                d(3 downto 0)=>dec(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_14,
                q0=>XLXN_15);
   
   XLXI_3 : BCD_A_Bin_MUSER_Conversor_BCD_Bin
      port map (ck=>ck,
                d(3 downto 0)=>unid(3 downto 0),
                ldZ=>ldZ,
                sin=>XLXN_15,
                q0=>dato_bin_lsb);
   
   XLXI_4 : GND
      port map (G=>XLXN_17);
   
   XLXI_16 : FD8RE_HXILINX_Conversor_BCD_Bin
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
   
   XLXI_23 : FD8RE_HXILINX_Conversor_BCD_Bin
      port map (C=>ck,
                CE=>ldZ,
                D(7)=>dato_bin_lsb,
                D(6 downto 0)=>dato_desp(7 downto 1),
                R=>XLXN_77,
                Q(7 downto 0)=>dato_desp(7 downto 0));
   
   XLXI_24 : GND
      port map (G=>XLXN_77);
   
end BEHAVIORAL;


