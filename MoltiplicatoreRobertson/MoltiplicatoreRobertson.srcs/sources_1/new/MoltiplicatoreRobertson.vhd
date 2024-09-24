----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Moltiplicatore di robertson implementato attraverso logica microprogrammata
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MoltiplicatoreRobertson is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		x: IN std_logic_vector(7 downto 0);
		y: IN std_logic_vector(7 downto 0);
		start: IN std_logic;
		
		-- Uscite
		result: OUT std_logic_vector(15 downto 0)
	);
end MoltiplicatoreRobertson;

architecture Behavioral of MoltiplicatoreRobertson is
-- Segnali di controllo
signal load_a_reg, load_q_reg, load_m_reg, countr_incr, shift, sottrazione, mux_sel: std_logic;
signal counter_value: std_logic_vector(2 downto 0);
begin

	dp: entity work.Datapath port map(
		CLK => CLK,
		RST => RST,
		x => x,
		y => y,
		load_a_reg => load_a_reg,
		load_q_reg => load_q_reg,
		load_m_reg => load_m_reg,
		countr_incr => countr_incr,
		shift => shift,
		sottrazione => sottrazione,
		mux_sel => mux_sel,
		data_out => result,
		counter_out => counter_value
	);
	
	cu: entity work.ControlUnit port map(
		CLK => CLK,
		RST => RST,
		start => start,
		counter_value => counter_value,
		load_a_reg => load_a_reg,
		load_q_reg => load_q_reg,
		load_m_reg => load_m_reg,
		countr_incr => countr_incr,
		shift => shift,
		sottrazione => sottrazione,
		mux_sel => mux_sel
	);

end Behavioral;
