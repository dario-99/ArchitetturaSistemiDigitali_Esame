library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Orologio_TB is
--  Port ( );
end Orologio_TB;

architecture Behavioral of Orologio_TB is
-- Segnali di ingresso
signal CLK,RST,EN: std_logic := '0';
signal sel: std_logic_vector(0 to 2) := "000";
signal parallel: std_logic_vector(5 downto 0) := (others => '0');

-- segnali di ucsita
signal sec_out,min_out: std_logic_vector(5 downto 0);
signal hour_out: std_logic_vector(4 downto 0);  
begin

	uut: entity work.Orologio port map(
		CLK => CLK,
		RST => RST,
		EN => EN,
		sel => sel,
		parallel => parallel,
		
		sec_out => sec_out,
		min_out => min_out,
		hour_out => hour_out,
		day_cnt => open
	);
	clk_proc: process
	begin
		CLK <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10ns;
	end process;

	stim_proc: process
	begin
		EN <= '1';		
		wait;
	end process;
end Behavioral;
