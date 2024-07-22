----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Decimal encoder, trasforma un valore in binario nella sua codifica in decimale (es: 0x0F -> 0x16)    
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use IEEE.std_logic_unsigned.all;

entity DecimalEncoder is
	generic(
		N: integer := 6
	);
	Port (
		-- Ingressi
		x: IN std_logic_vector(N-1 downto 0);
		-- Uscite
		y: OUT std_logic_vector(7 downto 0)
	);
end DecimalEncoder;

architecture Behavioral of DecimalEncoder is

begin
	-- Utilizzo l'operatore modulo 10 per ottenere le unita' e le decine
	y(3 downto 0) <= std_logic_vector(to_unsigned(conv_integer(x) mod 10,4));
	y(7 downto 4) <= std_logic_vector(to_unsigned((conv_integer(x)/10) mod 10,4));
end Behavioral;
