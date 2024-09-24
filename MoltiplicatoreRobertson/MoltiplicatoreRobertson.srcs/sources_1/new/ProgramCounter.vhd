----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Program counter per la MICROROM dell'unita' di controllo
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgramCounter is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		parallel_in: IN std_logic_vector(2 downto 0);	-- Per settare il PC 
		-- Uscite
		pc: OUT std_logic_vector(2 downto 0)
	);
end ProgramCounter;

architecture Behavioral of ProgramCounter is
signal reg: std_logic_vector(2 downto 0);
begin
	pc <= reg;
	process(CLK)
	begin
		if rising_edge(CLK) then 
			if RST = '1' then
				reg <= "000";
			else
				reg <= parallel_in;
			end if;
		end if;
	end process;

end Behavioral;
