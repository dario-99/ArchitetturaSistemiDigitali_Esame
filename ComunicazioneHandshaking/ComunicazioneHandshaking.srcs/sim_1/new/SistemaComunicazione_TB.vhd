library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity SistemaComunicazione_TB is
--  Port ( );
end SistemaComunicazione_TB;

architecture Behavioral of SistemaComunicazione_TB is
-- Segnali input
signal RST,CLK: std_logic := '0';
-- Segnali output
signal d_out: std_logic_vector(8 downto 0);
-- Costanti di simulazione
constant clk_period: time := 10ns;
begin

	uut: entity work.SistemaComunicazione port map(
		CLK => CLK,
		RST => RST,
		d_out => d_out
	);	
	
	clk_proc: process
	begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;		
	end process;

end Behavioral;
