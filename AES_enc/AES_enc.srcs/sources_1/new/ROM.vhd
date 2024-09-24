----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Memoria ROM contenente gli input di testing
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity ROM is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		READ: IN std_logic;
		addr: IN std_logic_vector(1 downto 0);
		-- Uscite
		data: OUT std_logic_vector(127 downto 0)
	);
end ROM;

architecture Behavioral of ROM is
-- Definisco il tipo t_rom per definire la struttura della ROM
type t_rom is array(3 downto 0) of std_logic_vector(127 downto 0);
signal ROM: t_rom := (
	-- Test msg
	x"6bc1bee22e409f96e93d7e117393172a",
	x"ae2d8a571e03ac9c9eb76fac45af8e51",
	x"30c81c46a35ce411e5fbc1191a0a52ef",
	x"f69f2445df4f9b17ad2b417be66c3710"
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
				data <= ROM(conv_integer("00"));
			elsif (READ = '1') then
				data <= ROM(conv_integer(ADDR));
			end if;
		end if;
	end process;

end Behavioral;
