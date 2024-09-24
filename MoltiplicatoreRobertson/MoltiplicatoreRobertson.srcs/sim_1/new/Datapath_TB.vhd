library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath_TB is
--  Port ( );
end Datapath_TB;

architecture Behavioral of Datapath_TB is
-- Segnali di ingresso
signal CLK,RST: std_logic := '0';
signal x,y: std_logic_vector(7 downto 0);
-- Segnali di controllo
signal load_a_reg, load_q_reg, load_m_reg, countr_incr, shift, sottrazione, mux_sel: std_logic := '0';

-- Segnali di uscita
signal data_out: std_logic_vector(15 downto 0);
begin
	
	uut: entity work.Datapath port map(
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
		data_out => data_out
	);

	clk_proc: process
	begin
		CLK <= '0';
		wait for 10ns;
		CLK <= '1';
		wait for 10ns;		
	end process;
	
	stim_proc: process
	begin
		RST <= '1';
		wait for 20ns;
		RST <= '0';
		wait for 20ns;		
		x <= "11111110";
		y <= "00000100";
		load_m_reg <= '1';
		load_q_reg <= '1';
		wait for 20ns;
		load_q_reg <= '0';
		load_m_reg <= '0';
		wait for 20ns;
		for i in 0 to 6 loop
			load_a_reg <= '1';
			wait for 20ns;
			load_a_reg <= '0';
			wait for 20ns;
			shift <= '1';
			wait for 20ns;
			shift <= '0';
			countr_incr <= '1';
			wait for 20ns;
			countr_incr <= '0';
		end loop;
		mux_sel <= '1';
		sottrazione <= '1';
		load_a_reg <= '1';
		wait for 20ns;
		load_a_reg <= '0';
		shift <= '1';
		wait for 20ns;
		shift <= '0';
		mux_sel <= '1';
		wait;
	end process;


end Behavioral;
