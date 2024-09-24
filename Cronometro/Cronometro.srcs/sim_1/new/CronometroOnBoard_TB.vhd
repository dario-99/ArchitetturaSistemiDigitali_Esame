library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CronometroOnBoard_TB is
--  Port ( );
end CronometroOnBoard_TB;

architecture Behavioral of CronometroOnBoard_TB is
-- segnali di ingresso
signal CLK,RST,view,count,save: std_logic := '0';
-- segnali di uscita
signal mem_read,mem_write,countr_save_incr,countr_read_incr,cronometro_en,mux_visore_sel,mux_addr_sel: std_logic;

-- Costanti di simulazione
constant clock_period: time := 20ns;
begin

	clock_proc: process
	begin
		CLK <= '0';
		wait for clock_period/2;
		CLK <= '1';
		wait for clock_period/2;
	end process;

	uut: entity work.ControlUnit port map(
		CLK => CLK,
		RST => RST,
		view => view,
		count => count,
		save => save,
		
		mem_read => mem_read,
		mem_write => mem_write,
		countr_save_incr => countr_save_incr,
		countr_read_incr => countr_read_incr,
		cronometro_en => cronometro_en,
		mux_visore_sel => mux_visore_sel,
		mux_addr_sel => mux_addr_sel
	);

	stim_proc: process
	begin
		count <= '1';
		wait until CLK = '0';
		count <= '0';
		wait until CLK = '1';
		
		wait for 1000ns;
		-- salvo
		save <= '1';
		wait until CLK = '0';
		save <= '0';
		wait until CLK = '1';
		wait for 1000ns;
		save <= '1';
		wait until CLK = '0';
		save <= '0';
		wait until CLK = '1';		
		wait for 1000ns;
		-- view
		view <= '1';
		wait until CLK = '0';
		view <= '0';
		wait until CLK = '1';
		wait for 1000ns;
	
		view <= '1';
		wait until CLK = '0';
		view <= '0';
		wait until CLK = '1';
		
		wait;
	end process;

end Behavioral;
