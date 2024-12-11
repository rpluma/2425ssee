-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : fsm_calcpotencia
-- Author      : Usuario_UMA
-- Company     : UMA
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/activehdl/fsm_calcpotencia/fsm_calcpotencia/compile/fsm_calcpotencia.vhd
-- Generated   : Wed Dec  4 15:17:52 2024
-- From        : C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/activehdl/fsm_calcpotencia/fsm_calcpotencia/src/fsm_calcpotencia.asf
-- By          : Active-HDL Student Edition FSM Code Generator ver. 6.0
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity fsm_calcpotencia is 
	port (
		reset: in STD_LOGIC;
		ck: in STD_LOGIC;
		Tem_p: in STD_LOGIC;
		sel_sum: out STD_LOGIC_VECTOR (1 downto 0);
		sumador: out STD_LOGIC;
		divisor: out STD_LOGIC;
		ce_calor: out STD_LOGIC;
		ce_calorx100: out STD_LOGIC;
		ce_rango: out STD_LOGIC;
		potencia_p: out STD_LOGIC;
		sum: out STD_LOGIC
);
end fsm_calcpotencia;

architecture fsm_calcpotencia_arch of fsm_calcpotencia is

-- BINARY ENCODED state machine: Sreg0
attribute ENUM_ENCODING: string;
type Sreg0_type is (
	S1, S2, S3, S4, S5, S6, S7, S8
);
attribute ENUM_ENCODING of Sreg0_type: type is
	"000 " &		-- S1
	"001 " &		-- S2
	"010 " &		-- S3
	"011 " &		-- S4
	"100 " &		-- S5
	"101 " &		-- S6
	"110 " &		-- S7
	"111" ;		-- S8

signal Sreg0: Sreg0_type;

begin

-- FSM coverage pragmas
-- Aldec enum Machine_Sreg0 CURRENT=Sreg0
-- Aldec enum Machine_Sreg0 INITIAL_STATE=S1
-- Aldec enum Machine_Sreg0 STATES=S2,S3,S4,S5,S6,S7,S8
-- Aldec enum Machine_Sreg0 TRANS=S1->S2,S2->S3,S3->S4,S4->S5,S5->S6,S6->S7,S7->S7,S7->S8,S8->S1

-- User statements

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
Sreg0_machine: process (ck, reset)
-- machine variables declarations
variable ciclosd: UNSIGNED (4 downto 0);

begin
	if reset='1' then
		Sreg0 <= S1;
		-- Set reset or default values for outputs, signals and variables
		sumador<='0';
		divisor<='0';
		ce_calor<='0';
		ce_calorx100<='0';
		ce_rango<='0';
		potencia_p<='0';
	elsif ck'event and ck = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case Sreg0 is
			when S1 =>
				if Tem_p='1' then
					Sreg0 <= S2;
					sel_sum<="00"; -- TemInt, TemObj
					sum <= '0'; -- Restar
					sumador <='1'; -- Habilitar sumador (mux)
					ce_calor <= '1'; -- Guardar resultado
				end if;
			when S2 =>
				Sreg0 <= S3;
				ce_calor <='0'; -- mantener resultado
				sel_sum <= "01"; -- calorx64, calorx32
				sum <= '1'; -- sumar
				ce_calorx100 <= '1'; -- guardar subtotal
			when S3 =>
				Sreg0 <= S4;
				sel_sum<= "10"; --calorx100, calorx4
				ce_calorx100 <='1'; --completar el total
			when S4 =>
				Sreg0 <= S5;
				ce_calorx100 <= '0'; -- mantener resultado
				sel_sum <= "11"; --lim_sup, lim_inf
				sum <= '0'; -- restar
				ce_rango <= '1'; -- guardar el rango
			when S5 =>
				Sreg0 <= S6;
				sumador <= '0'; -- desabilitar mux de sumas
				ce_rango <='0'; -- mantener rango
				ciclosd := "00000"; -- inicializar division
				divisor <= '1';
			when S6 =>
				Sreg0 <= S7;
			when S7 =>
				if ciclosd=28 then
					Sreg0 <= S8;
					potencia_p <='1';
					divisor <='0';
				else
					Sreg0 <= S7;
					ciclosd := ciclosd+1;
				end if;
			when S8 =>
				Sreg0 <= S1;
				sumador <= '0';
				divisor <= '0';
				ce_calor <= '0';
				ce_calorx100 <= '0';
				ce_rango <= '0';
				potencia_p <= '0';
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end fsm_calcpotencia_arch;
