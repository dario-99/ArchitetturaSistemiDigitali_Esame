----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Memoria ROM contenente gli input di testing per la macchina combinatoria
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity ROM is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		READ: IN std_logic;
		addr: IN std_logic_vector(3 downto 0);		-- 16 possibili valori
		-- Uscite
		data: OUT std_logic_vector(3 downto 0)
	);
end ROM;

architecture Behavioral of ROM is
-- Definisco il tipo t_rom per definire la struttura della ROM
type t_rom is array(15 downto 0) of std_logic_vector(3 downto 0);
signal ROM: t_rom := (
	x"F",
	x"E",
	x"D",
	x"C",
	x"B",
	x"A",
	x"9",
	x"8",
	x"7",
	x"6",
	x"5",
	x"4",
	x"3",
	x"2",
	x"1",
	x"0"
);

-- Dico al compilatore di sintetizzare la ROM nelle celle di memoria presenti sull'FPGA
attribute rom_style : string;
attribute rom_style of ROM : signal is "block";
begin

	-- Definisco il process
	process(CLK)
	begin
		if rising_edge(CLK) then
			if (RST = '1') then
				data <= ROM(conv_integer("000"));
			elsif (READ = '1') then
				data <= ROM(conv_integer(ADDR));
			end if;
		end if;
	end process;

end Behavioral;
