--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : iobus_salida.vhf
-- /___/   /\     Timestamp : 12/04/2023 19:50:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/albertod/Documents/_Doc_/Xilinx/mcs_basico3_rl_2023/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/albertod/Documents/_Doc_/Xilinx/mcs_basico3_rl_2023/iobus_salida.vhf -w C:/Users/albertod/Documents/_Doc_/Xilinx/mcs_basico3_rl_2023/iobus_salida.sch
--Design Name: iobus_salida
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_iobus_salida -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_iobus_salida is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_iobus_salida;

architecture Behavioral of FD8CE_HXILINX_iobus_salida is

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

----- CELL COMP16_HXILINX_iobus_salida -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP16_HXILINX_iobus_salida is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(15 downto 0);
    B   : in std_logic_vector(15 downto 0)
  );
end COMP16_HXILINX_iobus_salida;

architecture COMP16_HXILINX_iobus_salida_V of COMP16_HXILINX_iobus_salida is
begin
  EQ <= '1' when (A=B) else '0';
end COMP16_HXILINX_iobus_salida_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity iobus_salida is
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
end iobus_salida;

architecture BEHAVIORAL of iobus_salida is
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
   
   component FD8CE_HXILINX_iobus_salida
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
   
   component COMP16_HXILINX_iobus_salida
      port ( A  : in    std_logic_vector (15 downto 0); 
             B  : in    std_logic_vector (15 downto 0); 
             EQ : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_18";
   attribute HU_SET of XLXI_52 : label is "XLXI_52_21";
   attribute HU_SET of XLXI_54 : label is "XLXI_54_19";
   attribute HU_SET of XLXI_56 : label is "XLXI_56_20";
   attribute HU_SET of XLXI_82 : label is "XLXI_82_22";
   attribute HU_SET of XLXI_88 : label is "XLXI_88_23";
begin
   XLXN_283(15 downto 0) <= x"0004";
   io_read_data(31 downto 8) <= x"000000";
   XLXI_4 : AND3
      port map (I0=>io_write_strobe,
                I1=>io_addr_strobe,
                I2=>direccion_0,
                O=>escritura_dir_0);
   
   XLXI_5 : FD8CE_HXILINX_iobus_salida
      port map (C=>ck,
                CE=>escritura_dir_0_b0,
                CLR=>XLXN_48,
                D(7 downto 0)=>io_write_data(7 downto 0),
                Q(7 downto 0)=>dato_escrito(7 downto 0));
   
   XLXI_6 : GND
      port map (G=>XLXN_48);
   
   XLXI_51 : GND
      port map (G=>XLXN_194);
   
   XLXI_52 : FD8CE_HXILINX_iobus_salida
      port map (C=>ck,
                CE=>escritura_dir_0_b1,
                CLR=>XLXN_194,
                D(7 downto 0)=>io_write_data(15 downto 8),
                Q(7 downto 0)=>dato_escrito(15 downto 8));
   
   XLXI_53 : GND
      port map (G=>XLXN_191);
   
   XLXI_54 : FD8CE_HXILINX_iobus_salida
      port map (C=>ck,
                CE=>escritura_dir_0_b2,
                CLR=>XLXN_191,
                D(7 downto 0)=>io_write_data(23 downto 16),
                Q(7 downto 0)=>dato_escrito(23 downto 16));
   
   XLXI_55 : GND
      port map (G=>XLXN_192);
   
   XLXI_56 : FD8CE_HXILINX_iobus_salida
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
   
   XLXI_82 : FD8CE_HXILINX_iobus_salida
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
   
   XLXI_88 : COMP16_HXILINX_iobus_salida
      port map (A(15 downto 0)=>io_address(15 downto 0),
                B(15 downto 0)=>XLXN_283(15 downto 0),
                EQ=>direccion_0);
   
end BEHAVIORAL;


