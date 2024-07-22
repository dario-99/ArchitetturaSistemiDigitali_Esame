----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Tester automatico, formato da una parte operativa e una parte di controllo
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TestMachine is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		read: IN std_logic;			-- Segnale di lettura 
		-- Uscite
		mem_out: OUT std_logic_vector(3 downto 0);
		counter_value: OUT std_logic_vector(3 downto 0)
	);
end TestMachine;

architecture Behavioral of TestMachine is
-- Segnali di interconnessione
signal rom_read: std_logic := '0';
signal counter_increment: std_logic := '0';
signal mem_read: std_logic := '0';
signal mem_write: std_logic := '0';
begin
	datapath: entity work.DataPath port map(
		CLK => CLK,
		RST => RST,
		rom_read => rom_read,
		counter_increment => counter_increment, 
		mem_read => mem_read,
		mem_write => mem_write,
		counter_value => counter_value,
		mem_out => mem_out
	);
	controlUnit: entity work.ControlUnit port map(
		CLK => CLK,
		RST => RST,
		read => read,
		rom_read => rom_read,
		counter_increment => counter_increment,
		mem_read => mem_read,
		mem_write => mem_write
	);

end Behavioral;
