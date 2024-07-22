library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DataPath_TB is
--  Port ( );
end DataPath_TB;

architecture Behavioral of DataPath_TB is
-- Segnali di ingresso
signal CLK,RST,rom_read,counter_increment,mem_read,mem_write: std_logic := '0';

-- Segnali di uscita
signal counter_value, mem_out: std_logic_vector(3 downto 0);
-- Costanti di simulazione
signal clk_period: time := 10ns;

begin
	uut: entity work.DataPath port map(
		CLK => CLK,
		RST => RST,
		rom_read => rom_read,
		counter_increment => counter_increment,
		mem_read => mem_read,
		mem_write => mem_write,
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
			rom_read <= '1';
			wait for clk_period;
			rom_read <= '0';
			mem_write <= '1';
			wait for clk_period;
			mem_write <= '0';
			mem_read <= '1';
			wait for clk_period;
			mem_read <= '0';
			counter_increment <= '1';
			wait for clk_period;
			counter_increment <= '0';
		end procedure;
	begin
		RST <= '1';
		wait for clk_period*2;
		RST <= '0';
		wait for clk_period;
		for i in 0 to 15 loop
			test;
		end loop;
		
		
		wait;
	end process;
end Behavioral;
