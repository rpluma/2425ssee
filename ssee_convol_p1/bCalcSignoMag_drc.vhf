--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bCalcSignoMag_drc.vhf
-- /___/   /\     Timestamp : 10/30/2024 11:34:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -sympath C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl bCalcSignoMag_drc.vhf -w C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/bCalcSignoMag.sch
--Design Name: bCalcSignoMag
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bCalcSignoMag is
   port ( ck                : in    std_logic; 
          dato_sal          : in    std_logic_vector (7 downto 0); 
          dato_sal_sync     : in    std_logic; 
          dato_sal_pos      : out   std_logic_vector (7 downto 0); 
          dato_sal_pos_sync : out   std_logic; 
          signo_sal         : out   std_logic);
end bCalcSignoMag;

architecture BEHAVIORAL of bCalcSignoMag is
   attribute BOX_TYPE   : string ;
   signal ceros             : std_logic_vector (7 downto 0);
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
   
begin
   XLXI_2 : bIpSumador
      port map (a(7 downto 0)=>ceros(7 downto 0),
                add=>dato_sal(7),
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
   
end BEHAVIORAL;

