library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TestMachine_TB is
--  Port ( );
end TestMachine_TB;

architecture Behavioral of TestMachine_TB is
-- Segnali di ingresso
signal CLK,RST,read: std_logic := '0';

-- Segnali di uscita
signal counter_value, mem_out: std_logic_vector(3 downto 0);
-- Costanti di simulazione
signal clk_period: time := 10ns;

begin
	uut: entity work.TestMachine port map(
		CLK => CLK,
		RST => RST,
		read => read,
		counter_value => counter_value,
		mem_out => mem_out
	);
	clk_proc: process
	begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
	end process;
	
	stim_proc: process
		procedure test is 
		begin
			wait for clk_period;
			read <= '1';
			wait for clk_period;
			read <= '0';
		end procedure;
	begin
		RST <= '1';
		wait for clk_period*2;
		RST <= '0';
		wait for clk_period;
		for i in 0 to 15 loop
			wait for 8*clk_period;
			test;
		end loop;

		wait;
	end process;
end Behavioral;
