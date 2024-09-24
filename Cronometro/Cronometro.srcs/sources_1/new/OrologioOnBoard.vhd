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
		count: IN std_logic;				-- Segnale di Enable per il conteggio
		save: IN std_logic;					-- Segnale per salvare l'intertempo
		view: IN std_logic;					-- segnale per visualizzare gli intertempi salvati
		parallel_in: IN std_logic_vector(5 downto 0);
		
		-- Uscite
		cathodes_out: OUT std_logic_vector(7 downto 0);
		anodes_out: OUT std_logic_vector(7 downto 0)
	);
end OrologioOnBoard;

architecture Behavioral of OrologioOnBoard is
---- Reset 0 attivo
signal RST_n: std_logic;

---- Bottoni debounced
signal SET_clrd: std_logic;
signal count_clrd: std_logic;
signal save_clrd: std_logic;
signal view_clrd: std_logic;

-- Segnali di interconnessione
signal mem_read,mem_write, countr_save_incr, countr_read_incr: std_logic; 
signal cronometro_en, mux_visore_sel, mux_addr_sel: std_logic;

begin
	RST_n <= not RST;
	
	-- Debouncers
	set_debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => SET,
		CLEARED_BTN => SET_clrd
	);
	count_debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => count,
		CLEARED_BTN => count_clrd
	);
	save_debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => save,
		CLEARED_BTN => save_clrd
	);
	view_debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => view,
		CLEARED_BTN => view_clrd
	);
	
	datapath: entity work.Datapath port map(
		CLK => CLK,
		RST => RST_n,
		SET => SET_clrd,
		mem_read => mem_read,
		mem_write => mem_write,
		mem_read_countr_incr => countr_read_incr,
		mem_write_countr_incr => countr_save_incr,
		mux_visore_sel => mux_visore_sel,
		mux_addr_sel => mux_addr_sel,
		SEL => SEL,
		EN => cronometro_en,
		parallel_in => parallel_in,
		cathodes_out => cathodes_out,
		anodes_out => anodes_out
	);
	
	cu: entity work.ControlUnit port map(
		CLK => CLK,
		RST => RST_n,
		view => view_clrd,
		count => count_clrd,
		save => save_clrd,
		mem_read => mem_read,
		mem_write => mem_write,
		countr_save_incr => countr_save_incr,
		countr_read_incr => countr_read_incr,
		cronometro_en => cronometro_en,
		mux_visore_sel => mux_visore_sel,
		mux_addr_sel => mux_addr_sel
	);
	

end Behavioral;

