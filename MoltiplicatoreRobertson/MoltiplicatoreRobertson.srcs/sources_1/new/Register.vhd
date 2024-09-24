----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Registro a 8 bit
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro is
	Port (
		-- Ingressi
		 CLK,RST: IN std_logic;
		 load: IN std_logic;
		 parallel_in: IN std_logic_vector(7 downto 0);
		-- Uscite
		y: OUT std_logic_vector(7 downto 0)
	);
end Registro;

architecture Behavioral of Registro is

signal reg: std_logic_vector(7 downto 0);
begin
	y <= reg;
	
	process(CLK) 
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				reg <= (others => '0');
			elsif load = '1' then
				reg <= parallel_in;
			end if;
		end if;
	end process;


end Behavioral;
