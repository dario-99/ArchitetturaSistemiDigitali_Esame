----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Contatore generico modulo N
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use IEEE.std_logic_unsigned.all;

entity Contatore is
	generic(
		N: integer := 8
	);
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		EN: IN std_logic;
		
		-- Uscite
		cnt_value: OUT std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0)
	);
end Contatore;

architecture Behavioral of Contatore is
-- contatore
signal cntr: std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0) := (others => '0');
begin
	cnt_value <= cntr;	
	process(CLK, RST)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				cntr <= (others => '0');
			elsif EN = '1' then
				if conv_integer(cntr) = N-1 then
					cntr <= (others => '0');
				else
				 	cntr <= cntr + "1";
				end if;
			end if;
		end if;
	end process;


end Behavioral;
