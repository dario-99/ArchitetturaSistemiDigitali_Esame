----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Questo componente deve effettuare l'operazione di moltiplicazione matriciale nel campo di Galois
--				Visto che la matrice di moltiplicazione è costante, possiamo rendere Hardcoded le operazioni dell'algoritmo di moltiplicazione
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ColumnMultiplier is
	Port (
		-- Input
		x: IN std_logic_vector(31 downto 0);			-- una colonna e' formata da 32 bit = 4 Byte
		-- Output
		y: OUT std_logic_vector(31 downto 0)
	);
end ColumnMultiplier;

architecture Behavioral of ColumnMultiplier is
signal x0_2 : std_logic_vector(7 downto 0);
signal x1_2 : std_logic_vector(7 downto 0);
signal x2_2 : std_logic_vector(7 downto 0);
signal x3_2 : std_logic_vector(7 downto 0);

alias x0: std_logic_vector(7 downto 0) is x(31 downto 24);
alias x1: std_logic_vector(7 downto 0) is x(23 downto 16);
alias x2: std_logic_vector(7 downto 0) is x(15 downto 8);
alias x3: std_logic_vector(7 downto 0) is x(7 downto 0);

begin
	gf_mult_0: entity work.GaloisFieldMultiplierBy2 port map(
		x => x0,
		y => x0_2
	);
	gf_mult_1: entity work.GaloisFieldMultiplierBy2 port map(
		x => x1,
		y => x1_2
	);
	gf_mult_2: entity work.GaloisFieldMultiplierBy2 port map(
		x => x2,
		y => x2_2
	);
	gf_mult_3: entity work.GaloisFieldMultiplierBy2 port map(
		x => x3,
		y => x3_2
	);
	y(31 downto 24) <= x0_2 xor (x1_2 xor x1) xor x2 xor x3;
	y(23 downto 16) <= x0 xor x1_2 xor (x2_2 xor x2) xor x3;
	y(15 downto 8) <= x0 xor x1 xor x2_2 xor (x3_2 xor x3);
	y(7 downto 0) <= (x0_2 xor x0) xor x1 xor x2 xor x3_2; 
end Behavioral;
