----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte di controllo per il ricevitore B
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnitB is
	Port (
		-- Ingressi
		CLK, RST: IN std_logic;
		RTS: IN std_logic;			-- Segnale READY TO SEND, ricevuto dal trasmettitore A
		-- Uscite
		counter_incr: OUT std_logic;
		sum: OUT std_logic;
		mem_write: OUT std_logic;
		mem_read: OUT std_logic;
		rom_read: OUT std_logic;
		rx_read: OUT std_logic;
		ACK: OUT std_logic
	);
end ControlUnitB;

architecture Behavioral of ControlUnitB is
type stato is (s_idle, s_wait_rts_down, s_read, s_sum, s_save, s_incr);
signal s: stato := s_idle;
begin
	state_proc: process(CLK)
	begin
		if rising_edge(CLK) then
			-- Reset segnali di controllo
			counter_incr <= '0';
			sum <= '0';
			mem_write <= '0';
			mem_read <= '0';
			rom_read <= '0';
			rx_read <= '0';
			ACK <= '0';
			if RST = '1' then
				s <= s_idle;
			else 
				case s is 
					when s_idle =>
						if RTS = '1' then
							s <= s_wait_rts_down;
							ACK <= '1';
						end if;
					when s_wait_rts_down => 
						if RTS = '0' then
							ACK <= '0';
							rx_read <= '1';
							s <= s_read;
						else
							ACK <= '1';
							s <= s_wait_rts_down;
						end if;
					when s_read => 
						rom_read <= '1';
						s <= s_sum;
					when s_sum => 
						sum <= '1';
						s <= s_save;
					when s_save =>
						mem_write <= '1';
						s <= s_incr;
					when s_incr =>
						counter_incr <= '1';
						s <= s_idle;
				end case;
			end if;
		end if;
	end process;

end Behavioral;
