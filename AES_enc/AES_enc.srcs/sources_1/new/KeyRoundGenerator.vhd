----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Generatore di round key per l'algoritmo di encryption AES
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyRoundGenerator is
	Port (
		-- Input
		CLK, RST: IN std_logic;
		update_reg: IN std_logic;
		key: IN std_logic_vector(127 downto 0);
		round_const: IN std_logic_vector(7 downto 0);
		mux_sel: IN std_logic;
		-- Output
		round_key: OUT std_logic_vector(127 downto 0)
	);
end KeyRoundGenerator;

architecture Behavioral of KeyRoundGenerator is
signal reg_in: std_logic_vector(127 downto 0);
signal reg_out: std_logic_vector(127 downto 0);
signal next_subkey: std_logic_vector(127 downto 0);
begin
	
	-- Multiplexer per inserire nel registro alla prima iterazione la chiave scelta dall'utente
	mux_key: entity work.mux_2_1 port map(
		a => next_subkey,
		b => key,
		s => mux_sel,
		y => reg_in
	);
	
	-- Registro contenente la round key
	round_key_reg: entity work.reg generic map(N => 128) port map(
		CLK => CLK,
		RST => RST,
		EN => update_reg,
		d => reg_in,
		q => reg_out
	);
	
	-- Scheduler delle chiavi
	key_scheduler: entity work.KeyRoundScheduler port map(
		subkey => reg_out,
		round_const => round_const,
		next_subkey => next_subkey
	);
	
	-- Collego l'uscita all'uscita del registro
	round_key <= reg_out;

end Behavioral;
