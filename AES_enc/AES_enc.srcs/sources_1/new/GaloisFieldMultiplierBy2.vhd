----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Macchina che effettua una moltiplicazione per 2 nel campo di Galois GF(2^3)
--				richiede uno shift e un eventuale XOR con la stringa 0x1b se il bit MSB = 1 (x > 0x80)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GaloisFieldMultiplierBy2 is
	Port (
		-- Input
		x: IN std_logic_vector(7 downto 0);
		-- Uscite
		y: OUT std_logic_vector(7 downto 0)
	);
end GaloisFieldMultiplierBy2;

architecture Behavioral of GaloisFieldMultiplierBy2 is
signal shifted_x: std_logic_vector(7 downto 0);
signal xor_addend: std_logic_vector(7 downto 0);
begin

	shifted_x <= x(6 downto 0) & "0";
	-- Per evitare eventuali condizioni nel caso x >= 0x80, posso costruire l'addendo attraverso questo trucco
	-- Visto che se x >= 0x80 il MSB = 1, posso usarlo per ottenere una stringa nulla nel caso x < 0x80 e 0x1B=00011011 nell'altro caso
	xor_addend <= "000" & x(7) & x(7) & "0" & x(7) & x(7);
	y <= shifted_x xor xor_addend;

end Behavioral;
