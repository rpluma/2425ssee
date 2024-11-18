-- Vhdl test bench created from schematic C:\Users\Usuario_UMA\Desktop\ssee_convol_p1\bloque_convol.sch - Wed Nov 13 21:01:23 2024
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
ENTITY bloque_convol_bloque_convol_sch_tb IS
END bloque_convol_bloque_convol_sch_tb;
ARCHITECTURE behavioral OF bloque_convol_bloque_convol_sch_tb IS 

   COMPONENT bloque_convol
   PORT( ck	:	IN	STD_LOGIC; 
          cod_tecla	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          tecla_pulsada	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          punto_decimal	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 1); 
          display1	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          display2	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          display3	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          display4	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          ventana	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0));
   END COMPONENT;

   SIGNAL ck	:	STD_LOGIC;
   SIGNAL cod_tecla	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL tecla_pulsada	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL punto_decimal	:	STD_LOGIC_VECTOR (4 DOWNTO 1);
   SIGNAL display1	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL display2	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL display3	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL display4	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL ventana	:	STD_LOGIC_VECTOR (1 DOWNTO 0);


	constant CLK_period : time := 10 ns;
	constant CLK_RESET : time := 10 * CLK_period;
	constant CLK_PROCESAR_INPUT : time := 50 * CLK_period;
	constant CLK_SIGUIENTE_TECLA : time := 50 * CLK_period;
	constant TECL_A : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010";
	constant TECL_C : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100";
	
	constant VENT_RECTANGULAR : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	constant VENT_HAMMING : 	 STD_LOGIC_VECTOR(1 DOWNTO 0) := "01";
	constant VENT_HANG : 		 STD_LOGIC_VECTOR(1 DOWNTO 0) := "10";
	constant VENT_KAISER : 		 STD_LOGIC_VECTOR(1 DOWNTO 0) := "11";



BEGIN

   UUT: bloque_convol PORT MAP(
		ck => ck, 
		cod_tecla => cod_tecla, 
		tecla_pulsada => tecla_pulsada, 
		reset => reset, 
		punto_decimal => punto_decimal, 
		display1 => display1, 
		display2 => display2, 
		display3 => display3, 
		display4 => display4, 
		ventana => ventana
   );

-- *** Test Bench - User Defined Section ***
   CK_process :process
	begin
		CLOCK_LOOP : LOOP
		ck <= transport '0';
		WAIT FOR 4 ns;
		ck <= transport '1';
		WAIT FOR 5 ns;
		ck <= transport '0';
		WAIT FOR 1 ns;
		END LOOP CLOCK_LOOP;
  end process; 


  
   tb : PROCESS
   BEGIN
	
-------------------------------------------- Reset y pulso de valor 100 y duración de 10 entradas
		ventana <= VENT_RECTANGULAR;
		--ventana <= VENT_HAMMING;
		--ventana <= VENT_HANG;
		--ventana <= VENT_KAISER;
		
		reset <= transport '1';
		cod_tecla <= transport "0000";
		tecla_pulsada <= transport '0';
		WAIT FOR CLK_RESET;
		reset <= transport '0';
		WAIT FOR CLK_RESET;

	-- Ventana rectangular
	-- Introducimos el número 100,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-- Introducimos el número 000,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0000"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-------------------------------------------- Escalon de valor 127 y duración de 10 entradas
		reset <= transport '1';
		cod_tecla <= transport "0000";
		tecla_pulsada <= transport '0';
		WAIT FOR CLK_RESET;
		reset <= transport '0';
		WAIT FOR CLK_RESET;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;


-------------------------------------------- Escalon de valor 127 y duración de 10 entradas
		--ventana <= VENT_RECTANGULAR;
		ventana <= VENT_HAMMING;
		--ventana <= VENT_HANG;
		--ventana <= VENT_KAISER;

		reset <= transport '1';
		cod_tecla <= transport "0000";
		tecla_pulsada <= transport '0';
		WAIT FOR CLK_RESET;
		reset <= transport '0';
		WAIT FOR CLK_RESET;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-------------------------------------------- Escalon de valor 127 y duración de 10 entradas
		--ventana <= VENT_RECTANGULAR;
		--ventana <= VENT_HAMMING;
		ventana <= VENT_HANG;
		--ventana <= VENT_KAISER;

		reset <= transport '1';
		cod_tecla <= transport "0000";
		tecla_pulsada <= transport '0';
		WAIT FOR CLK_RESET;
		reset <= transport '0';
		WAIT FOR CLK_RESET;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

-------------------------------------------- Escalon de valor 127 y duración de 10 entradas
		--ventana <= VENT_RECTANGULAR;
		--ventana <= VENT_HAMMING;
		--ventana <= VENT_HANG;
		ventana <= VENT_KAISER;

		reset <= transport '1';
		cod_tecla <= transport "0000";
		tecla_pulsada <= transport '0';
		WAIT FOR CLK_RESET;
		reset <= transport '0';
		WAIT FOR CLK_RESET;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

	-- Introducimos el número 127,  pulsamos A y esperamos para ver el resultado, pulsamos C para introducir el siguiente dato
		cod_tecla <= transport "0001"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0010"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport "0111"; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
		cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
		cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;

      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
