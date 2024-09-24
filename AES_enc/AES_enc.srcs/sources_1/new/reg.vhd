----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: registro contenente i dati dell'algoritmo dell'iterazione corrente 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
	generic(
		N: integer
	);
	Port (
		-- Input
		CLK, RST: IN std_logic;
		EN: IN std_logic;						-- Segnale di strobe
		d: IN std_logic_vector(N-1 downto 0);
		-- Output
		q: OUT std_logic_vector(N-1 downto 0)
	);
end reg;

architecture Behavioral of reg is
signal temp_value: std_logic_vector(N-1 downto 0);
begin
	
	process(CLK, RST)
	begin 
		if rising_edge(CLK) then
			if RST = '1' then
				temp_value <= (others => '0');
			elsif EN = '1' then 
				temp_value <= d; 
			end if;
		end if;
	end process;
	
	q <= temp_value;

end Behavioral;
