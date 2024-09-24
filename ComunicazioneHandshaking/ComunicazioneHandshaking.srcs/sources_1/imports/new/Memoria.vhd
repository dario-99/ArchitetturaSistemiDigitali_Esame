----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Memoria contenente le uscite della macchina combinatoria in esame
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use ieee.std_logic_unsigned.all;

entity Memoria is
	generic(
		N: integer := 4;
		M: integer := 16
	);
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		read: IN std_logic;													-- Segnali di controllo
		write: IN std_logic;
		
		data_in: IN std_logic_vector(N-1 downto 0);							-- Dati paralleli in ingresso
		addr: IN std_logic_vector(integer(ceil(log2(real(M))))-1 downto 0);	-- Indirizzo di memoria in W/R

		-- Uscite
		data_out: OUT std_logic_vector(N-1 downto 0)
	);
end Memoria;

architecture Behavioral of Memoria is
-- Definisco il blocco di memoria
type t_ram is array(M-1 downto 0) of std_logic_vector(N-1 downto 0);
signal RAM: t_ram := (others => (others => '0'));					-- Set a 0 di tutti gli indirzzi

attribute rom_style : string;
attribute rom_style of RAM : signal is "block";
begin
	
	process(CLK) 
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				RAM <= (others => (others => '0'));			
			elsif write = '1' then
				RAM(conv_integer(addr)) <= data_in;
			elsif read = '1' then
				data_out <= RAM(conv_integer(addr));
			else
				data_out <= (others => '-');
			end if;
		end if;
	end process;

end Behavioral;
