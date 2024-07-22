----------------------------------------------------------------------------------
-- Engineer:  Dario Di Meo
-- Description: Encoder BCD, data una stringa di 10 bit con un solo bit alto, tradurre il bit corrispettivo in binario  (da 9 a 0)                
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder is
	Port (
		-- Input
		x: IN std_logic_vector(9 downto 0);
		-- Output
		y: OUT std_logic_vector(3 downto 0)		-- Necessitiamo i 4 bit per il valore max 9 (b1001)
	);
end Encoder;

architecture Behavioral of Encoder is

begin
	with x select
		y <= "0000" when "0000000001",
			 "0001" when "0000000010",
			 "0010" when "0000000100",
			 "0011" when "0000001000",
			 "0100" when "0000010000",
			 "0101" when "0000100000",
			 "0110" when "0001000000",
			 "0111" when "0010000000",
			 "1000" when "0100000000",
			 "1001" when "1000000000",
			 "----" when others; 

end Behavioral;
