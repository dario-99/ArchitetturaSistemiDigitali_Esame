----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Orologio implementato su board con meccanismo di debouncing dei bottoni 
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrologioOnBoard is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		SET: IN std_logic;
		SEL: IN std_logic_vector(0 to 2);	-- Segnale di selezione per il SET (0 => h, 1 => min, 2 => h
		EN: IN std_logic;					-- Segnale di Enable
		parallel_in: IN std_logic_vector(5 downto 0);
		
		-- Uscite
		cathodes_out: OUT std_logic_vector(7 downto 0);
		anodes_out: OUT std_logic_vector(7 downto 0)
	);
end OrologioOnBoard;

architecture Behavioral of OrologioOnBoard is
-- Reset 0 attivo
signal RST_n: std_logic;

-- Segnali di interconnessione

-- Segnali di uscita dei singoli contatori, codifica binaria
signal sec_b, min_b: std_logic_vector(5 downto 0);
signal h_b: std_logic_vector(4 downto 0);

-- Segnali encoded in decimale
signal sec_d, min_d, h_d: std_logic_vector(7 downto 0);

-- Bottoni debounced
signal SET_clrd: std_logic;
signal SEL_clrd: std_logic_vector(0 to 2);
signal EN_clrd: std_logic;

begin
	RST_N <= not RST;
	
	-- metto in AND il segnale di SET_clrd con i segnali di selezione
	SEL_clrd <= SEL when SET = '1' else
				"000" when SET = '0';
	
	-- Debouncers
	set_debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => SET,
		CLEARED_BTN => SET_clrd
	);
	en_debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => EN,
		CLEARED_BTN => EN_clrd
	);
	
	orologio: entity work.Orologio port map(
		-- Ingressi
		CLK => CLK, 
		RST => RST_N,
		EN => EN_clrd,
		sel => SEL_clrd,
		parallel => parallel_in,
		-- Uscite
		sec_out => sec_b,
		min_out => min_b,
		hour_out => h_b,
		day_cnt => open		-- Tramite la parola chiave OPEN posso ignorare l'uscita
	);
	encoder_sec: entity work.DecimalEncoder generic map(N => 6) port map(x => sec_b, y => sec_d);
	encoder_min: entity work.DecimalEncoder generic map(N => 6) port map(x => min_b, y => min_d);
	encoder_h: entity work.DecimalEncoder generic map(N => 5) port map(x => h_b, y => h_d);
	
	display: entity work.seven_segment_array port map(
		CLK => CLK,
		RST => RST_N,
		value(31 downto 24) => "00000000",
		value(23 downto 16) => h_d,
		value(15 downto 8) => min_d,
		value(7 downto 0) => sec_d,
		enable => "00111111",
		dots => "00010100",
		anodes => anodes_out,
		cathodes => cathodes_out
	);

end Behavioral;

