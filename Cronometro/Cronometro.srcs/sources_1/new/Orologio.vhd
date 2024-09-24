----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Orologio con 3 contatori, sec, mem, ore. Prevede il meccanismo di loading   
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Orologio is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		EN: IN std_logic;
		sel: IN std_logic_vector(0 to 2);
		parallel: IN std_logic_vector(5 downto 0);
		
		-- Uscite
		sec_out: OUT std_logic_vector(5 downto 0);
		min_out: OUT std_logic_vector(5 downto 0);
		hour_out: OUT std_logic_vector(4 downto 0);
		day_cnt: OUT std_logic
	);
end Orologio;

architecture Behavioral of Orologio is
-- Segnali di interconnessione
signal sec2min: std_logic;
signal min2h: std_logic;
signal bdt2s: std_logic;
begin

	base_dei_tempi: entity work.Contatore generic map( N => 1 ) port map(
		CLK => CLK,
		RST => RST,
		EN => EN,
		SET => '0',
		set_value => (others => '0'),
		cnt_value => open,
		div_clk => bdt2s
	);
	sec_cntr: entity work.Contatore generic map( N => 60 ) port map(
		CLK => CLK,
		RST => RST,
		EN => bdt2s,
		SET => sel(2),
		set_value => parallel,
		cnt_value => sec_out,
		div_clk => sec2min
	);
	min_cntr: entity work.Contatore generic map( N => 60 ) port map(
		CLK => CLK,
		RST => RST,
		EN => sec2min,
		SET => sel(1),
		set_value => parallel,
		cnt_value => min_out,
		div_clk => min2h
	);
	h_cntr: entity work.Contatore generic map( N => 24 ) port map(
		CLK => CLK,
		RST => RST,
		EN => min2h,
		SET => sel(0),
		set_value => parallel(4 downto 0),
		cnt_value => hour_out,
		div_clk => day_cnt
	);

end Behavioral;

