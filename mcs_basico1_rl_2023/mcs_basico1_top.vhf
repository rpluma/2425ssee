--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : mcs_basico1_top.vhf
-- /___/   /\     Timestamp : 11/10/2023 12:48:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/albertod/Documents/_Doc_/Xilinx/mcs_basico1_rl_2023/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/albertod/Documents/_Doc_/Xilinx/mcs_basico1_rl_2023/mcs_basico1_top.vhf -w C:/Users/albertod/Documents/_Doc_/Xilinx/mcs_basico1_rl_2023/mcs_basico1_top.sch
--Design Name: mcs_basico1_top
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL IFD4_HXILINX_mcs_basico1_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD4_HXILINX_mcs_basico1_top is
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

end IFD4_HXILINX_mcs_basico1_top;

architecture Behavioral of IFD4_HXILINX_mcs_basico1_top is

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

----- CELL IFD8_HXILINX_mcs_basico1_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD8_HXILINX_mcs_basico1_top is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );

attribute IOB         : string ;
attribute IOB of Q : signal is "True";

end IFD8_HXILINX_mcs_basico1_top;

architecture Behavioral of IFD8_HXILINX_mcs_basico1_top is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL OFD8_HXILINX_mcs_basico1_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OFD8_HXILINX_mcs_basico1_top is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );

attribute IOB         : string ;
attribute IOB of Q : signal is "True";

end OFD8_HXILINX_mcs_basico1_top;

architecture Behavioral of OFD8_HXILINX_mcs_basico1_top is

begin

process(C)
begin
  if (C'event and C = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL OFD_HXILINX_mcs_basico1_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OFD_HXILINX_mcs_basico1_top is
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

end OFD_HXILINX_mcs_basico1_top;

architecture Behavioral of OFD_HXILINX_mcs_basico1_top is
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

----- CELL IFD_HXILINX_mcs_basico1_top -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD_HXILINX_mcs_basico1_top is
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

end IFD_HXILINX_mcs_basico1_top;

architecture Behavioral of IFD_HXILINX_mcs_basico1_top is
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

entity mcs_basico1_top is
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
end mcs_basico1_top;

architecture BEHAVIORAL of mcs_basico1_top is
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
   signal ce_display_neg                : std_logic_vector (4 downto 1);
   signal ck_5MHz                       : std_logic;
   signal ck_20KHz                      : std_logic;
   signal ck_100MHz                     : std_logic;
   signal ck_300Hz                      : std_logic;
   signal col                           : std_logic_vector (4 downto 1);
   signal cuenta_dcm                    : std_logic_vector (15 downto 0);
   signal display                       : std_logic_vector (7 downto 0);
   signal fila                          : std_logic_vector (4 downto 1);
   signal led                           : std_logic_vector (7 downto 0);
   signal lockedZ                       : std_logic;
   signal locked_OK                     : std_logic;
   signal reset                         : std_logic;
   signal reset_i                       : std_logic;
   signal seg0                          : std_logic_vector (7 downto 0);
   signal seg1                          : std_logic_vector (7 downto 0);
   signal seg2                          : std_logic_vector (7 downto 0);
   signal seg3                          : std_logic_vector (7 downto 0);
   signal signo_sal                     : std_logic;
   signal sw                            : std_logic_vector (7 downto 0);
   signal sw_i                          : std_logic_vector (7 downto 0);
   signal uart_rx                       : std_logic;
   signal uart_tx                       : std_logic;
   signal XLXN_384                      : std_logic;
   signal XLXN_385                      : std_logic;
   signal XLXN_388                      : std_logic;
   signal XLXN_390                      : std_logic;
   signal XLXN_406                      : std_logic_vector (4 downto 1);
   signal XLXN_407                      : std_logic_vector (4 downto 1);
   signal XLXN_460                      : std_logic;
   signal XLXI_138_CLK_openSignal       : std_logic;
   signal XLXI_138_KEYCLEARB_openSignal : std_logic;
   component microblaze_basico1
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             uart_tx : out   std_logic; 
             uart_rx : in    std_logic; 
             gpi1    : in    std_logic_vector (7 downto 0); 
             gpo1    : out   std_logic_vector (7 downto 0));
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
   
   component OFD8_HXILINX_mcs_basico1_top
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
   
   component OFD_HXILINX_mcs_basico1_top
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component IFD4_HXILINX_mcs_basico1_top
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
   
   component IFD_HXILINX_mcs_basico1_top
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
   
   component IFD8_HXILINX_mcs_basico1_top
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
   
   attribute HU_SET of XLXI_35 : label is "XLXI_35_9";
   attribute HU_SET of XLXI_165 : label is "XLXI_165_8";
   attribute HU_SET of XLXI_180 : label is "XLXI_180_10";
   attribute HU_SET of XLXI_279_1 : label is "XLXI_279_1_3";
   attribute HU_SET of XLXI_279_2 : label is "XLXI_279_2_2";
   attribute HU_SET of XLXI_279_3 : label is "XLXI_279_3_1";
   attribute HU_SET of XLXI_279_4 : label is "XLXI_279_4_0";
   attribute HU_SET of XLXI_288_1 : label is "XLXI_288_1_7";
   attribute HU_SET of XLXI_288_2 : label is "XLXI_288_2_6";
   attribute HU_SET of XLXI_288_3 : label is "XLXI_288_3_5";
   attribute HU_SET of XLXI_288_4 : label is "XLXI_288_4_4";
   attribute HU_SET of XLXI_387 : label is "XLXI_387_11";
begin
   mcs_0 : microblaze_basico1
      port map (clk=>ck_100MHz,
                gpi1(7 downto 0)=>sw(7 downto 0),
                reset=>lockedZ,
                uart_rx=>uart_rx,
                gpo1(7 downto 0)=>led(7 downto 0),
                uart_tx=>uart_tx);
   
   XLXI_14 : BUFG
      port map (I=>cuenta_dcm(7),
                O=>ck_20KHz);
   
   XLXI_30 : IBUF
      port map (I=>reset_pad,
                O=>reset_i);
   
   XLXI_35 : OFD8_HXILINX_mcs_basico1_top
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
   
   XLXI_165 : OFD_HXILINX_mcs_basico1_top
      port map (C=>ck_20KHz,
                D=>signo_sal,
                Q=>signo_sal_pad);
   
   XLXI_176 : VCC
      port map (P=>XLXN_384);
   
   XLXI_180 : IFD4_HXILINX_mcs_basico1_top
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
   
   XLXI_279_1 : IFD_HXILINX_mcs_basico1_top
      port map (C=>ck_300Hz,
                D=>col_pad(1),
                Q=>col(1));
   
   XLXI_279_2 : IFD_HXILINX_mcs_basico1_top
      port map (C=>ck_300Hz,
                D=>col_pad(2),
                Q=>col(2));
   
   XLXI_279_3 : IFD_HXILINX_mcs_basico1_top
      port map (C=>ck_300Hz,
                D=>col_pad(3),
                Q=>col(3));
   
   XLXI_279_4 : IFD_HXILINX_mcs_basico1_top
      port map (C=>ck_300Hz,
                D=>col_pad(4),
                Q=>col(4));
   
   XLXI_288_1 : OFD_HXILINX_mcs_basico1_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(1),
                Q=>ce_display_neg_pad(1));
   
   XLXI_288_2 : OFD_HXILINX_mcs_basico1_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(2),
                Q=>ce_display_neg_pad(2));
   
   XLXI_288_3 : OFD_HXILINX_mcs_basico1_top
      port map (C=>ck_20KHz,
                D=>ce_display_neg(3),
                Q=>ce_display_neg_pad(3));
   
   XLXI_288_4 : OFD_HXILINX_mcs_basico1_top
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
                sclr=>lockedZ,
                q(15 downto 0)=>cuenta_dcm(15 downto 0));
   
   XLXI_314 : BUFG
      port map (I=>cuenta_dcm(13),
                O=>ck_300Hz);
   
   XLXI_387 : IFD8_HXILINX_mcs_basico1_top
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
   
end BEHAVIORAL;


