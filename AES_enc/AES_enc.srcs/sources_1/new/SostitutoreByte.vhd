----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Macchina che si occupa di sostituire i byte con il suo corrispettivo, presente sulla LUT sbox 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SostitutoreByte is
	Port (
		-- Input
		x: IN std_logic_vector(127 downto 0);
		-- Output
		y: OUT std_logic_vector(127 downto 0)
	);
end SostitutoreByte;

architecture Behavioral of SostitutoreByte is

begin
	
	substituter: for i in 0 to 15 generate
		sbox: entity work.sbox port map(
			input_byte => x((i+1)*8-1 downto i*8),
		 	output_byte => y((i+1)*8-1 downto i*8)
		);
	end generate;
end Behavioral;
