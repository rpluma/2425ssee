component fsm_calcpotencia
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
		sum: out STD_LOGIC);
end component;


instance_name : fsm_calcpotencia
( reset => ,
 ck => ,
 Tem_p => ,
 sel_sum => ,
 sumador => ,
 divisor => ,
 ce_calor => ,
 ce_calorx100 => ,
 ce_rango => ,
 potencia_p => ,
 sum => );
