----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:33 11/14/2024 
-- Design Name: 
-- Module Name:    enviar_dato - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

procedure enviar_dato(
	digito1 : in  STD_LOGIC_VECTOR (3 downto 0);
   digito2 : in  STD_LOGIC_VECTOR (3 downto 0);
   digito3 : in  STD_LOGIC_VECTOR (3 downto 0);
   digito4 : in  STD_LOGIC_VECTOR (3 downto 0);
   cod_tecla : out  STD_LOGIC_VECTOR (3 downto 0);
   tecla_pulsada : out  STD_LOGIC) IS
BEGIN
	cod_tecla <= transport digito1; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
	cod_tecla <= transport digito2; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
	cod_tecla <= transport digito3; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
	cod_tecla <= transport digito4; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
	cod_tecla <= transport TECL_A; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_PROCESAR_INPUT; 
	cod_tecla <= transport TECL_C; tecla_pulsada <= '1'; WAIT FOR CLK_period; tecla_pulsada <= transport '0'; WAIT FOR CLK_SIGUIENTE_TECLA;
END;



end enviar_dato;

architecture Behavioral of enviar_dato is

begin


end Behavioral;


entity proc is
 port (a: in bit_vector (0 to 2);
 m: out bit_vector (0 to 2));
end proc;
architecture example of subprograms is
 procedure simple (w, x, y: in bit; z: out bit) is
 begin
 z <= (w and x) or y;
 end;
begin
 process (a)
 begin
 simple(a(0), a(1), a(2), m(0));
 simple(a(2), a(0), a(1), m(1));
 simple(a(1), a(2), a(0), m(2));
 end process;
end example;
