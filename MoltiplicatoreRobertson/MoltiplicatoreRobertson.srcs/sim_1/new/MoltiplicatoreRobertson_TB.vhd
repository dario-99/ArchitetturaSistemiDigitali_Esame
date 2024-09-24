library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MoltiplicatoreRobertson_TB is
--  Port ( );
end MoltiplicatoreRobertson_TB;

architecture Behavioral of MoltiplicatoreRobertson_TB is
-- Segnali di input
signal CLK,RST,start: std_logic := '0';
signal x,y: std_logic_vector(7 downto 0) := (others => '0');

-- Segnali di output
signal result: std_logic_vector(15 downto 0);

-- Costanti di simulazione
constant clock_period: time := 20ns;
begin

	uut: entity work.MoltiplicatoreRobertson port map(
		CLK => CLK,
		RST => RST,
		x => x,
		y => y,
		start => start,
		result => result
	);
	
	clock_proc: process
	begin
		CLK <= '0';
		wait for clock_period/2;
		CLK <= '1';
		wait for clock_period/2;
	end process;

	stim_proc: process
	begin
		RST <= '1';
		wait for clock_period;
		RST <= '0';
		wait for clock_period;
		x <= "01000001";
		y <= "11111100";
		wait for clock_period;
		start <= '1';
		wait for clock_period;
		start <= '0';
		wait;
	end process;
end Behavioral;
