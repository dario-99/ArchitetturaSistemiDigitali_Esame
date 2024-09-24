----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Macchina che effettua lo scambio delle righe della tabella dell'algoritmo AES 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rowShifter is
	port (
		input : in std_logic_vector(127 downto 0);
		output : out std_logic_vector(127 downto 0)
	);
end rowShifter;

architecture behavioral of rowShifter is
	
begin
	-- col 1
	output(8*16 - 1 downto 8*15) <= input(8*16 - 1 downto 8*15);
	output(8*15 - 1 downto 8*14) <= input(8*11 - 1 downto 8*10);
	output(8*14 - 1 downto 8*13) <= input(8*6 - 1 downto 8*5); 
	output(8*13 - 1 downto 8*12) <= input(8*1 - 1 downto 8*0);
	-- col 2
	output(8*12 - 1 downto 8*11) <= input(8*12 - 1 downto 8*11);
	output(8*11 - 1 downto 8*10) <= input(8*7 - 1 downto 8*6); 
	output(8*10 - 1 downto 8*9) <= input(8*2 - 1 downto 8*1);
	output(8*9 - 1 downto 8*8) <= input(8*13 - 1 downto 8*12);		
	-- col 3
	output(8*8 - 1 downto 8*7) <= input(8*8 - 1 downto 8*7);
	output(8*7 - 1 downto 8*6) <= input(8*3 - 1 downto 8*2);
	output(8*6 - 1 downto 8*5) <= input(8*14 - 1 downto 8*13);
	output(8*5 - 1 downto 8*4) <= input(8*9 - 1 downto 8*8);	
	-- col 4
	output(8*4 - 1 downto 8*3) <= input(8*4 - 1 downto 8*3);
	output(8*3 - 1 downto 8*2) <= input(8*15 - 1 downto 8*14);
	output(8*2 - 1 downto 8*1) <= input(8*10 - 1 downto 8*9);
	output(8*1 - 1 downto 8*0) <= input(8*5 - 1 downto 8*4);
end behavioral;
