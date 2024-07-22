----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Ripple carry adder a 8 bit (9 in uscita con il carry), 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdder is
	Port (
		-- Ingressi
		a: IN std_logic_vector(7 downto 0);
		b: IN std_logic_vector(7 downto 0);

		-- Uscite
		y: OUT std_logic_vector(8 downto 0)
	);
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is
-- Segnali di interconnessione
signal carry: std_logic_vector(0 to 8);
begin
	carry(0) <= '0'; 		-- Setto il carry del primo FA a 0
	y(8) <= carry(8); 
	FA_g: for i in 0 to 7 generate
		FA: entity work.FA port map(
			a => a(i),
			b => b(i),
			c_in => carry(i),
			y => y(i),
			c_out => carry(i+1)
		);
	end generate;

end Behavioral;
