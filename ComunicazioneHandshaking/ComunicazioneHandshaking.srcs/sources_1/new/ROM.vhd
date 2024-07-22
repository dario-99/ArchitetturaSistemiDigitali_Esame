----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: ROM da N righe di M bit, contiene i dati da inviare tramite il protocollo di handshaking
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use IEEE.std_logic_unsigned.all;

entity ROM is
	Port (
		-- Ingressi
		CLK: IN std_logic;
		RST: IN std_logic;
		addr: IN std_logic_vector(2 downto 0);
		READ: IN std_logic;
				
		-- Uscite
		data_out: OUT std_logic_vector(7 downto 0)
	);
end ROM;

architecture Behavioral of ROM is
-- Signal rom
type t_ROM is array(7 downto 0) of std_logic_vector(7 downto 0);
signal ROM: t_ROM := (
	x"FF",
	x"A0",
	x"0A",
	x"1A",
	x"3B",
	x"1C",
	x"6E",
	x"EE"
);

-- Dico al compilatore di sintetizzare la ROM nelle celle di memoria presenti sull'FPGA
attribute rom_style : string;
attribute rom_style of ROM : signal is "block";
begin

	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				data_out <= ROM(conv_integer(x"00"));
			elsif READ = '1' then
				data_out <= ROM(conv_integer(addr));
			end if;
		end if;
	end process;

end Behavioral;
