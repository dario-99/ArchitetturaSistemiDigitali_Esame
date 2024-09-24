----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Architettura complessiva strutturale dell'encoder AES
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AES_encoder is
	Port (
		-- Input
		CLK,RST: IN std_logic;
		msg: IN std_logic_vector(127 downto 0);
		key: IN std_logic_vector(127 downto 0);
		start: IN std_logic;
		-- Output
		done: OUT std_logic;
		encrypted_msg: OUT std_logic_vector(127 downto 0)
	);
end AES_encoder;

architecture Structural of AES_encoder is
-- Segnali di interconnessione
signal cnt_value: std_logic_vector(3 downto 0);
-- segnali di controllo
signal inc_counter, update_reg, mux_sel, mux_key, mux_last: std_logic;

begin

	-- Datapath
	dp: entity work.DataPath port map(
		CLK => CLK,
		RST => RST,
		key => key,
		message => msg,
		inc_counter => inc_counter,
		update_reg => update_reg,
		mux_sel => mux_sel,
		mux_key => mux_key,
		mux_last => mux_last,
		cnt_value => cnt_value, 
		encrypted_msg => encrypted_msg
	);
	
	-- Control Unit
	cu: entity work.Controller port map(
		CLK => CLK,
		RST => RST,
		counter_value => cnt_value,
		start => start,
		inc_counter => inc_counter,
		update_reg => update_reg,
		mux_sel => mux_sel,
		mux_round_key => mux_key,
		last_round => mux_last,
		done => done
	);

end Structural;
