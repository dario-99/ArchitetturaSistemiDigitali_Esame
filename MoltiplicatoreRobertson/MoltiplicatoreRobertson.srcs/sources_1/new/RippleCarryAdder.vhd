----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Ripple carry adder con due stringhe da 8 bit
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use IEEE.std_logic_unsigned.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity RippleCarryAdder is
	Port (
		-- Ingressi
		c_in: IN std_logic;			-- Carry in in caso di sottrazione
		a: IN std_logic_vector(7 downto 0);
		b: IN std_logic_vector(7 downto 0);
		-- Uscite
		y: OUT std_logic_vector(7 downto 0);
		c_out: OUT std_logic
	);
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is
	signal b_neg: std_logic_vector(7 downto 0);
	-- Segnale di interconnesione dei fa
	signal carry: std_logic_vector(7 downto 0);
begin
	b_neg <= b xor (c_in&c_in&c_in&c_in&c_in&c_in&c_in&c_in);		-- In questo modo nego b nel caso di una sottrazione
	c_out <= carry(7);
	
	-- Genero gli adder
	FA_s: FOR i in 0 to 7 generate
		first_FA: if i = 0 generate
			FA_0: entity work.FA port map(a => a(0), b => b_neg(0), c_in => c_in, c_out => carry(0), s => y(0));
		end generate;
		last_FA: if i > 0 generate
			FA_i: entity work.FA port map(a => a(i), b => b_neg(i), c_in => carry(i-1), c_out => carry(i), s => y(i));
		end generate;
	end generate;
end Behavioral;
