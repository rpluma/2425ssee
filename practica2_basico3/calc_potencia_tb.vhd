-- Vhdl test bench created from schematic C:\Users\Usuario_UMA\Downloads\mcs_basico3_rl_2023\calc_potencia.sch - Wed Dec 04 14:30:02 2024
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY calc_potencia_calc_potencia_sch_tb IS
END calc_potencia_calc_potencia_sch_tb;
ARCHITECTURE behavioral OF calc_potencia_calc_potencia_sch_tb IS 

   COMPONENT calc_potencia
   PORT( TemOb	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          TemIn	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ck	:	IN	STD_LOGIC; 
          potencia	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          TemMin	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Tem_n	:	IN	STD_LOGIC; 
          TemMax	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          reset	:	IN	STD_LOGIC; 
          potencia_p	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL TemOb	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL TemIn	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ck	:	STD_LOGIC;
   SIGNAL potencia	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL TemMin	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Tem_n	:	STD_LOGIC;
   SIGNAL TemMax	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL potencia_p	:	STD_LOGIC;

	PROCEDURE enviar_datos(ValOb, ValIn : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL TemOb, TemIn : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL Tem_n : OUT STD_LOGIC) IS
	BEGIN
		TemOb <= transport ValOb;
		TemIn <= transport ValIn;
		Tem_n <= '0';
		WAIT FOR 20 ns;
		Tem_n <= '1';
		WAIT FOR 20 ns;
		Tem_n <= '0';
		WAIT FOR 20 ns;
		WAIT FOR 350 ns;
	END;

BEGIN

   UUT: calc_potencia PORT MAP(
		TemOb => TemOb, 
		TemIn => TemIn, 
		ck => ck, 
		potencia => potencia, 
		TemMin => TemMin, 
		Tem_n => Tem_n, 
		TemMax => TemMax, 
		reset => reset, 
		potencia_p => potencia_p
   );


-- *** Test Bench - User Defined Section ***
	reloj: PROCESS
	BEGIN
		ck <= '0';
		WAIT FOR 5 ns;
		ck <= '1';
		WAIT FOR 5 ns;
	END PROCESS;
	
   tb : PROCESS
   BEGIN
		reset <= '1';
		WAIT FOR 20 ns;
		reset <= '0';
		WAIT FOR 20 ns;

	   
		TemMax <= "00111100"; -- 0x3C = 60
		TemMin <= "00000000"; -- 0
		
		enviar_datos("00010010", "00001011", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=11
		enviar_datos("00010010", "00000000", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=0
		enviar_datos("00010010", "00000001", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=1
		enviar_datos("00010010", "00000010", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=2
		enviar_datos("00010010", "00000011", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=3
		enviar_datos("00010010", "00010000", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=16
		enviar_datos("00010010", "00010001", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=17
		enviar_datos("00010010", "00010010", TemOb, TemIn, Tem_n); --ValOb=18, ValIn=18

		enviar_datos("00010111", "00010111", TemOb, TemIn, Tem_n); --ValOb=23, ValIn=23
		enviar_datos("00010111", "00011000", TemOb, TemIn, Tem_n); --ValOb=23, ValIn=24
		enviar_datos("00010111", "00011001", TemOb, TemIn, Tem_n); --ValOb=23, ValIn=25
		enviar_datos("00010111", "00111011", TemOb, TemIn, Tem_n); --ValOb=23, ValIn=59
		enviar_datos("00010111", "00111100", TemOb, TemIn, Tem_n); --ValOb=23, ValIn=60

		
		WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
