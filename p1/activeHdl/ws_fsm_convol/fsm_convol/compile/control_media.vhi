component control_media
	port (
		calcular_media: in STD_LOGIC;
		CK: in STD_LOGIC;
		dato_nuevo: in STD_LOGIC;
		reset: in STD_LOGIC;
		ce_divisor: out STD_LOGIC;
		ce_lec_ram: out STD_LOGIC;
		dir_esc: out STD_LOGIC_VECTOR (5 downto 0);
		dir_lec: out STD_LOGIC_VECTOR (4 downto 0);
		media_calculada: out STD_LOGIC);
end component;


instance_name : control_media
( calcular_media => ,
  ce_divisor => ,
  ce_lec_ram => ,
  CK => ,
  dato_nuevo => ,
  dir_esc => ,
  dir_lec => ,
  media_calculada => ,
  reset => );
