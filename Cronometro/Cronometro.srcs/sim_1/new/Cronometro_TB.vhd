
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cronometro_TB is
--  Port ( );
end Cronometro_TB;

architecture Behavioral of Cronometro_TB is
-- segnali di ingresso
signal CLK,RST,view,count,save,SET: std_logic := '0';
signal SEL: std_logic_vector(0 to 2) := (others => '0');
signal parallel_in: std_logic_vector(5 downto 0) := (others => '0');
-- segnali di uscita
signal mem_read,mem_write,countr_save_incr,countr_read_incr,cronometro_en,mux_visore_sel,mux_addr_sel: std_logic;
signal cathodes_out, anodes_out: std_logic_vector(7 downto 0);
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
	
	cu: entity work.ControlUnit port map(
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
	
	datapath: entity work.Datapath port map(
		CLK => CLK,
		RST => RST,
		SET => SET,
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
