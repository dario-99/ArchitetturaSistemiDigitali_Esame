----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte di controllo del sistema di testing automatico
--				E' stata implementata attraverso un automa a stati finiti
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		read: IN std_logic;
		
		-- Segnali di controllo
		rom_read: OUT std_logic;
		counter_increment: OUT std_logic;
		mem_read: OUT std_logic;
		mem_write: OUT std_logic
	);
end ControlUnit;

architecture Structural of ControlUnit is
-- Stati 
type stato is (s_INIT, s_READ, s_SAVE, s_VIEW, s_INC);
signal stato_corrente: stato := s_INIT;
begin
	
	state_proc: process(CLK) 
	begin
		if rising_edge(CLK) then
			rom_read <= '0';
			counter_increment <= '0';
			mem_read <= '0';
			mem_write <= '0';
			if RST = '1' then
				stato_corrente <= s_INIT;
			else 
				case stato_corrente is
					when s_INIT => 
						if read = '1' then
							stato_corrente <= s_READ;
						else
							stato_corrente <= s_INIT;
						end if;
					when s_READ =>
						if read = '1' then
							mem_read <= '1';			
							stato_corrente <=s_READ;	-- Rimango in read se tengo alto, aspetto che si abbassi il segnale
						else
							rom_read <= '1';
							stato_corrente <= s_SAVE;
						end if;
					when s_SAVE => 
						mem_write <= '1';
						stato_corrente <= s_VIEW;
					when s_VIEW =>
						if read = '1' then
							stato_corrente <= s_INC;
						else
							stato_corrente <= s_VIEW;
							mem_read <= '1';
						end if;
					when s_INC =>
						counter_increment <= '1';
						stato_corrente <= s_INIT;
					end case;
			end if;
		end if;
	end process;

end Structural;
