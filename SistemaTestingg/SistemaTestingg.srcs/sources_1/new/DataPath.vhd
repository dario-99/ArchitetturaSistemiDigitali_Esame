----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte operativa del sistema di testing automatico
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataPath is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		-- Segnali di controllo ROM
		rom_read: IN std_logic;
		-- Segnali di controllo counter
		counter_increment: IN std_logic;
		-- Segnali di controllo mem
		mem_read: IN std_logic;
		mem_write: IN std_logic;
		
		-- Uscite
		counter_value: OUT std_logic_vector(3 downto 0);
		mem_out: OUT std_logic_vector(3 downto 0)
	);
end DataPath;

architecture Structural of DataPath is
-- Segnali di interconnessione
signal rom2testUnit: std_logic_vector(3 downto 0);
signal testUnit2RAM: std_logic_vector(2 downto 0);
signal counter2mem: std_logic_vector(3 downto 0);

begin
	counter_value <= counter2mem;
	test_unit: entity work.MacchinaCombinatoria port map(
		x => rom2testUnit,
		y => testUnit2RAM
	);
	contatore: entity work.Contatore generic map(N => 16) port map(
		CLK => CLK,
		RST => RST,
		EN => counter_increment,
		counter_value => counter2mem
	);
	rom: entity work.ROM port map(
		CLK => CLK,
		RST => RST,
		READ => rom_read,
		addr => counter2mem,
		data => rom2testUnit
	);
	mem: entity work.Memoria generic map(N => 4, M => 16) port map(
		CLK => CLK,
		RST => RST,
		read => mem_read,
		write => mem_write,
		data_in => '0' & testUnit2RAM,
		addr => counter2mem,
		data_out => mem_out
	);

end Structural;
