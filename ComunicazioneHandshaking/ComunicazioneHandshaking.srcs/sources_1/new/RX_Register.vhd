----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Registro tampone per i dati in ricezione
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RX_Register is
	generic(
		N: integer := 8
	);
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		EN: IN std_logic;
		x: IN std_logic_vector(N-1 downto 0);
		-- Uscite
		y: OUT std_logic_vector(N-1 downto 0)
	);
end RX_Register;

architecture Behavioral of RX_Register is
signal reg: std_logic_vector(N-1 downto 0);
begin
	y <= reg;
	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				reg <= (others => '0');
			elsif EN = '1' then
				reg <= x;
			end if;
		end if;
	end process;

end Behavioral;
