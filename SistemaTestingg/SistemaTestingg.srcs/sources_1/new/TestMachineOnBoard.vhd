library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestMachineOnBoard is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		read: IN std_logic;			-- Segnale di lettura 
		-- Uscite
		mem_out: OUT std_logic_vector(3 downto 0);
		counter_value: OUT std_logic_vector(3 downto 0)
	);
end TestMachineOnBoard;

architecture Behavioral of TestMachineOnBoard is
signal read_clrd: std_logic;
-- RST 0 attivo
signal RST_n: std_logic;
begin
	RST_n <= not RST;

	debouncer: entity work.ButtonDebouncer port map(
		CLK => CLK,
		RST => RST_n,
		BTN => read,
		CLEARED_BTN => read_clrd
	);
	tu: entity work.TestMachine port map(
		CLK => CLK,
		RST => RST_n,
		read => read_clrd,
		mem_out => mem_out,
		counter_value => counter_value
	);
	
end Behavioral;
