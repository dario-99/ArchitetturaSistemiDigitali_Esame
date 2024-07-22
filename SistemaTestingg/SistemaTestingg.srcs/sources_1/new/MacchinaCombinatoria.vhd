----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Macchina combinatoria a 4 ingressi e 3 uscite binarie
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MacchinaCombinatoria is
	Port (
		-- Ingressi
		x: IN std_logic_vector(3 downto 0);
		-- Uscite
		y: OUT std_logic_vector(2 downto 0)
	);
end MacchinaCombinatoria;

architecture Behavioral of MacchinaCombinatoria is

begin

-- Genero le seguenti funzioni logiche
	y(0) <= x(0) and x(1) and x(2) and x(3);
	y(1) <= x(0) or x(1) or x(2) or x(3);
	y(2) <= x(0) xor x(1) xor x(2) xor x(3);

end Behavioral;
