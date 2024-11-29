-- Vhdl test bench created from schematic C:\Users\albertod\Documents\_Doc_\Xilinx\prueba_mcs\top.sch - Sat Jan 11 16:56:26 2014
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
ENTITY top_top_sch_tb IS
END top_top_sch_tb;
ARCHITECTURE behavioral OF top_top_sch_tb IS 

   COMPONENT top
   PORT( reset_pad	:	IN	STD_LOGIC; 
          ck_pad	:	IN	STD_LOGIC; 
          uart_rx_pad	:	IN	STD_LOGIC; 
          gpi1_pad	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          uart_tx_pad	:	OUT	STD_LOGIC; 
          gpo1_pad	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL reset_pad	:	STD_LOGIC;
   SIGNAL ck_pad	:	STD_LOGIC;
   SIGNAL uart_rx_pad	:	STD_LOGIC;
   SIGNAL gpi1_pad	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL uart_tx_pad	:	STD_LOGIC;
   SIGNAL gpo1_pad	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: top PORT MAP(
		reset_pad => reset_pad, 
		ck_pad => ck_pad, 
		uart_rx_pad => uart_rx_pad, 
		gpi1_pad => gpi1_pad, 
		uart_tx_pad => uart_tx_pad, 
		gpo1_pad => gpo1_pad
   );

-- Proceso para el reloj "ck_pad", 10ns de periodo,
-- Usamos 2ns de setup para las señales al cambiar el reloj de '0' a '1'.
	PROCESS 
	BEGIN
		CLOCK_LOOP : LOOP
		ck_pad <= transport '0';
		WAIT FOR 2 ns;
		ck_pad <= transport '1';
		WAIT FOR 5 ns;
		ck_pad <= transport '0';
		WAIT FOR 3 ns;
		END LOOP CLOCK_LOOP;
	END PROCESS;
-- Fin del proceso para crear el reloj.


	tb : PROCESS -- Proceso para todas las señales
	VARIABLE a: std_logic_vector (5 downto 0);
	BEGIN
		-- Inicialización de todas las señales
		reset_pad <= transport '1';
		uart_rx_pad <= transport '0';
		gpi1_pad(7 downto 0) <= transport (others => '0');
		-- Damos tiempo para que se resetee todo el circuito
		WAIT FOR 200 ns;
		-- Bajamos el reset a '0' y ya no se volverá a modificar
		reset_pad <= transport '0';
		WAIT FOR 500 ns;

		-- Esperamos 10500 us, suficientes para que se envíen los datos por el puerto serie.
		WAIT FOR 10500 us;

   END PROCESS;
-- *** End Test Bench - User Defined Section ***
END;
