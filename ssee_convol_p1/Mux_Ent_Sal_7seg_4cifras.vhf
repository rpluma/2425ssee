--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Mux_Ent_Sal_7seg_4cifras.vhf
-- /___/   /\     Timestamp : 11/13/2024 19:17:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Mux_Ent_Sal_7seg_4cifras.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/Mux_Ent_Sal_7seg_4cifras.sch
--Design Name: Mux_Ent_Sal_7seg_4cifras
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras;

architecture M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras_V of M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux_Ent_Sal_7seg_4cifras is
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
end Mux_Ent_Sal_7seg_4cifras;

architecture BEHAVIORAL of Mux_Ent_Sal_7seg_4cifras is
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
   
   component M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
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
   
   attribute HU_SET of XLXI_14_0 : label is "XLXI_14_0_102";
   attribute HU_SET of XLXI_14_1 : label is "XLXI_14_1_101";
   attribute HU_SET of XLXI_14_2 : label is "XLXI_14_2_100";
   attribute HU_SET of XLXI_14_3 : label is "XLXI_14_3_99";
   attribute HU_SET of XLXI_15_0 : label is "XLXI_15_0_106";
   attribute HU_SET of XLXI_15_1 : label is "XLXI_15_1_105";
   attribute HU_SET of XLXI_15_2 : label is "XLXI_15_2_104";
   attribute HU_SET of XLXI_15_3 : label is "XLXI_15_3_103";
   attribute HU_SET of XLXI_16_0 : label is "XLXI_16_0_94";
   attribute HU_SET of XLXI_16_1 : label is "XLXI_16_1_93";
   attribute HU_SET of XLXI_16_2 : label is "XLXI_16_2_92";
   attribute HU_SET of XLXI_16_3 : label is "XLXI_16_3_91";
   attribute HU_SET of XLXI_17_0 : label is "XLXI_17_0_98";
   attribute HU_SET of XLXI_17_1 : label is "XLXI_17_1_97";
   attribute HU_SET of XLXI_17_2 : label is "XLXI_17_2_96";
   attribute HU_SET of XLXI_17_3 : label is "XLXI_17_3_95";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_107";
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
   
   XLXI_14_0 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>dec_ent(0),
                D1=>dec_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>dec(0));
   
   XLXI_14_1 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>dec_ent(1),
                D1=>dec_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>dec(1));
   
   XLXI_14_2 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>dec_ent(2),
                D1=>dec_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>dec(2));
   
   XLXI_14_3 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>dec_ent(3),
                D1=>dec_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>dec(3));
   
   XLXI_15_0 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>unid_ent(0),
                D1=>unid_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>unid(0));
   
   XLXI_15_1 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>unid_ent(1),
                D1=>unid_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>unid(1));
   
   XLXI_15_2 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>unid_ent(2),
                D1=>unid_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>unid(2));
   
   XLXI_15_3 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>unid_ent(3),
                D1=>unid_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>unid(3));
   
   XLXI_16_0 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>cent_ent(0),
                D1=>cent_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>cent(0));
   
   XLXI_16_1 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>cent_ent(1),
                D1=>cent_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>cent(1));
   
   XLXI_16_2 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>cent_ent(2),
                D1=>cent_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>cent(2));
   
   XLXI_16_3 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>cent_ent(3),
                D1=>cent_sal(3),
                S0=>entZ_sal_DUMMY,
                O=>cent(3));
   
   XLXI_17_0 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>mill_ent(0),
                D1=>mill_sal(0),
                S0=>entZ_sal_DUMMY,
                O=>mill(0));
   
   XLXI_17_1 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>mill_ent(1),
                D1=>mill_sal(1),
                S0=>entZ_sal_DUMMY,
                O=>mill(1));
   
   XLXI_17_2 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>mill_ent(2),
                D1=>mill_sal(2),
                S0=>entZ_sal_DUMMY,
                O=>mill(2));
   
   XLXI_17_3 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
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
   
   XLXI_31 : M2_1_HXILINX_Mux_Ent_Sal_7seg_4cifras
      port map (D0=>cero,
                D1=>signo_sal,
                S0=>entZ_sal_DUMMY,
                O=>signo_sal_def);
   
end BEHAVIORAL;


