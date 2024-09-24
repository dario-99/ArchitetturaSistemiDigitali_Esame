----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte di controllo per il ricevitore B
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnitA is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		ACK: IN std_logic;

		-- Uscite
		counter_incr: OUT std_logic;
		rom_read: OUT std_logic;
		RTS: OUT std_logic
	);
end ControlUnitA;

architecture Behavioral of ControlUnitA is
type stato is (s_read, s_wait_ack_up, s_incr);
signal s: stato := s_read;
begin
	state_proc: process(CLK)
	begin
		if rising_edge(CLK) then
			-- Reset segnali di controllo
			counter_incr <= '0';
			rom_read <= '0';
			RTS <= '0';
			if RST = '1' then
				s <= s_read;
			else 
				case s is 
					when s_read =>
						rom_read <= '1';
						s <= s_wait_ack_up;
					when s_wait_ack_up => 
						RTS <= '1';
						if ACK = '0' then
							s <= s_wait_ack_up;
						else
							s <= s_incr;
						end if;
					when s_incr =>
						counter_incr <= '1';
						s <= s_read;
				end case;
			end if;
		end if;
	end process;

end Behavioral;
