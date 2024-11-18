--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Conversor_Bin_BCD_3cifras.vhf
-- /___/   /\     Timestamp : 11/14/2024 10:55:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Conversor_Bin_BCD_3cifras.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Conversor_Bin_BCD_3cifras.sch
--Design Name: Conversor_Bin_BCD_3cifras
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM4_HXILINX_Conversor_Bin_BCD_3cifras -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM4_HXILINX_Conversor_Bin_BCD_3cifras is
  
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
end COMPM4_HXILINX_Conversor_Bin_BCD_3cifras;

architecture COMPM4_HXILINX_Conversor_Bin_BCD_3cifras_V of COMPM4_HXILINX_Conversor_Bin_BCD_3cifras is
  signal a_tmp: std_logic_vector(3 downto 0);
  signal b_tmp: std_logic_vector(3 downto 0);

begin

   a_tmp <= A3&A2&A1&A0;
   b_tmp <= B3&B2&B1&B0;
   
   GT <= '1' when (a_tmp > b_tmp ) else '0';
   LT <= '1' when (a_tmp < b_tmp ) else '0';
     
end COMPM4_HXILINX_Conversor_Bin_BCD_3cifras_V;
----- CELL FD4RE_HXILINX_Conversor_Bin_BCD_3cifras -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4RE_HXILINX_Conversor_Bin_BCD_3cifras is
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
end FD4RE_HXILINX_Conversor_Bin_BCD_3cifras;

architecture Behavioral of FD4RE_HXILINX_Conversor_Bin_BCD_3cifras is

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

----- CELL M2_1_HXILINX_Conversor_Bin_BCD_3cifras -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Conversor_Bin_BCD_3cifras is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Conversor_Bin_BCD_3cifras;

architecture M2_1_HXILINX_Conversor_Bin_BCD_3cifras_V of M2_1_HXILINX_Conversor_Bin_BCD_3cifras is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Conversor_Bin_BCD_3cifras_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras is
   port ( ck      : in    std_logic; 
          initZ   : in    std_logic; 
          mod_in  : in    std_logic; 
          mod_out : out   std_logic; 
          q       : out   std_logic_vector (3 downto 0));
end Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras;

architecture BEHAVIORAL of Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras is
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
   
   component M2_1_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   component COMPM4_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   attribute HU_SET of XLXI_12 : label is "XLXI_12_132";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_130";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_131";
   attribute HU_SET of XLXI_53 : label is "XLXI_53_133";
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
   
   XLXI_12 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q_DUMMY(2),
                D1=>XLXN_48,
                S0=>mod_out_DUMMY,
                O=>XLXN_6);
   
   XLXI_13 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q_DUMMY(1),
                D1=>XLXN_49,
                S0=>mod_out_DUMMY,
                O=>XLXN_7);
   
   XLXI_30 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   XLXI_53 : COMPM4_HXILINX_Conversor_Bin_BCD_3cifras
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

entity regdesp8b_MUSER_Conversor_Bin_BCD_3cifras is
   port ( ce          : in    std_logic; 
          ck          : in    std_logic; 
          data        : in    std_logic_vector (7 downto 0); 
          load        : in    std_logic; 
          sinc_reset  : in    std_logic; 
          ser_out_msb : out   std_logic);
end regdesp8b_MUSER_Conversor_Bin_BCD_3cifras;

architecture BEHAVIORAL of regdesp8b_MUSER_Conversor_Bin_BCD_3cifras is
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
   
   component M2_1_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   attribute HU_SET of XLXI_2_0 : label is "XLXI_2_0_141";
   attribute HU_SET of XLXI_2_1 : label is "XLXI_2_1_140";
   attribute HU_SET of XLXI_2_2 : label is "XLXI_2_2_139";
   attribute HU_SET of XLXI_2_3 : label is "XLXI_2_3_138";
   attribute HU_SET of XLXI_2_4 : label is "XLXI_2_4_137";
   attribute HU_SET of XLXI_2_5 : label is "XLXI_2_5_136";
   attribute HU_SET of XLXI_2_6 : label is "XLXI_2_6_135";
   attribute HU_SET of XLXI_2_7 : label is "XLXI_2_7_134";
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
   
   XLXI_2_0 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>cero,
                D1=>data(0),
                S0=>load,
                O=>XLXN_26(0));
   
   XLXI_2_1 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q(0),
                D1=>data(1),
                S0=>load,
                O=>XLXN_26(1));
   
   XLXI_2_2 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q(1),
                D1=>data(2),
                S0=>load,
                O=>XLXN_26(2));
   
   XLXI_2_3 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q(2),
                D1=>data(3),
                S0=>load,
                O=>XLXN_26(3));
   
   XLXI_2_4 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q(3),
                D1=>data(4),
                S0=>load,
                O=>XLXN_26(4));
   
   XLXI_2_5 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q(4),
                D1=>data(5),
                S0=>load,
                O=>XLXN_26(5));
   
   XLXI_2_6 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
      port map (D0=>q(5),
                D1=>data(6),
                S0=>load,
                O=>XLXN_26(6));
   
   XLXI_2_7 : M2_1_HXILINX_Conversor_Bin_BCD_3cifras
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

entity Conversor_Bin_BCD_3cifras is
   port ( ck              : in    std_logic; 
          dato_bin_entero : in    std_logic_vector (7 downto 0); 
          inicio          : in    std_logic; 
          reset           : in    std_logic; 
          cent            : out   std_logic_vector (3 downto 0); 
          dato_nuevo      : out   std_logic; 
          dec             : out   std_logic_vector (3 downto 0); 
          unid            : out   std_logic_vector (3 downto 0));
end Conversor_Bin_BCD_3cifras;

architecture BEHAVIORAL of Conversor_Bin_BCD_3cifras is
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
   component Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras
      port ( initZ   : in    std_logic; 
             ck      : in    std_logic; 
             mod_in  : in    std_logic; 
             mod_out : out   std_logic; 
             q       : out   std_logic_vector (3 downto 0));
   end component;
   
   component regdesp8b_MUSER_Conversor_Bin_BCD_3cifras
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
   
   component FD4RE_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   attribute HU_SET of XLXI_31 : label is "XLXI_31_144";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_142";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_143";
begin
   XLXI_1 : Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>bin_serie_msb,
                mod_out=>XLXN_9,
                q(3 downto 0)=>unid_tmp(3 downto 0));
   
   XLXI_2 : Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>XLXN_9,
                mod_out=>XLXN_8,
                q(3 downto 0)=>dec_tmp(3 downto 0));
   
   XLXI_3 : Bin_A_BCD_MUSER_Conversor_Bin_BCD_3cifras
      port map (ck=>ck,
                initZ=>initZ,
                mod_in=>XLXN_8,
                mod_out=>open,
                q(3 downto 0)=>cent_tmp(3 downto 0));
   
   XLXI_9 : regdesp8b_MUSER_Conversor_Bin_BCD_3cifras
      port map (ce=>initZ,
                ck=>ck,
                data(7 downto 0)=>dato_bin_entero(7 downto 0),
                load=>load,
                sinc_reset=>XLXN_116,
                ser_out_msb=>bin_serie_msb);
   
   XLXI_26 : GND
      port map (G=>XLXN_116);
   
   XLXI_31 : FD4RE_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   XLXI_35 : FD4RE_HXILINX_Conversor_Bin_BCD_3cifras
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
   
   XLXI_37 : FD4RE_HXILINX_Conversor_Bin_BCD_3cifras
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


