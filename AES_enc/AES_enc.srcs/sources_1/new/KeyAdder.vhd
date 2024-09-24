----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Componente che si occupa di effettuare la somma dell'array di stato con la RoundKey corrente, la sommma in questo spazio e' la funzione XOR
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyAdder is
	Port (
		-- Input
		x: IN std_logic_vector(127 downto 0);
		round_key: IN std_logic_vector(127 downto 0);
		-- Output
		y: OUT std_logic_vector(127 downto 0)
	);
end KeyAdder;

architecture Behavioral of KeyAdder is

begin

	y <= x xor round_key;

end Behavioral;
