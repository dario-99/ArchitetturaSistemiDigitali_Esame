library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contatore_TB is
--  Port ( );
end Contatore_TB;

architecture Behavioral of Contatore_TB is
-- Signali di ingresso
signal CLK,RST,EN,set: std_logic := '0';
signal set_value: std_logic_vector(5 downto 0) := (others => '0');
-- Segnale di uscita
signal cnt_value: std_logic_vector(5 downto 0);
signal div_clk: std_logic;

begin

	uut: entity work.Contatore generic map( N => 60) port map(
		CLK => CLK,
		RST => RST,
		EN => EN,
		set => set,
		set_value => set_value,
		cnt_value => cnt_value,
		div_clk => div_clk
	);
	
	clk_proc: process 
	begin
		CLK <= '0';
		wait for 5ns;
		CLK <= '1';
		wait for 5ns;
	end process;

	stim_proc: process
	begin
		RST <= '1';
		wait for 10ns;
		RST <= '0';
		set_value <= "001111";
		set <= '1';
		wait for 10ns;
		set <= '0';
		EN <= '1';
		wait;
	end process;
end Behavioral;
