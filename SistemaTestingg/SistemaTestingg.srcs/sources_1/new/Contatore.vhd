----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Contatore che ci permette di ciclare tra gli ingressi di testing presenti in ROM
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use ieee.std_logic_unsigned.all;

entity Contatore is
	generic(
		N: integer := 16
	);
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		EN: IN std_logic;		-- Segnale di controllo per commutare alla prossima iterazione
		-- Uscite
		counter_value: OUT std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0)
	);
end Contatore;

architecture Behavioral of Contatore is
-- Registro contatore
signal counter: std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0) := (others => '0'); 		-- default a "0"
begin
	counter_value <= counter;
	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				counter <= (others => '0');
			elsif EN = '1' then
				counter <= std_logic_vector(unsigned(counter) + 1);
			end if;
		end if;
	end process; 

end Behavioral;
