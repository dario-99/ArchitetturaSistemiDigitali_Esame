----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Controller dell'architettura, si occupa di generare i segnali di controllo 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controller is
	Port (
		-- Input
		CLK,RST: IN std_logic;
		counter_value: IN std_logic_vector(3 downto 0);			-- Ci informa sullo stato corrente
		start: IN std_logic;
		-- Output
		inc_counter: OUT std_logic;
		update_reg: OUT std_logic;
		mux_sel: OUT std_logic;
		mux_round_key: OUT std_logic;
		last_round: OUT std_logic;
		done: OUT std_logic
	);
end Controller;

architecture Behavioral of Controller is
type t_stato is (s_IDLE, s_LOAD_MSG, s_COMPUTE, s_INCR_COUNTER, s_LAST_STEP, s_DONE);
signal stato: t_stato := s_IDLE;
begin

	process(CLK,RST)
	begin
		if rising_edge(CLK) then
			inc_counter <= '0';
			update_reg <= '0';
			done <= '0';
			mux_round_key <= '0';
			mux_sel <= '0';
			last_round <= '0';
			if RST = '1' then
				stato <= s_IDLE;
			else
				case stato is
					when s_IDLE =>
						if start = '1' then
							stato <= s_LOAD_MSG;
						end if;
					when s_LOAD_MSG =>
						mux_sel <= '1';
						mux_round_key <= '1';
						update_reg <= '1';
						stato <= s_COMPUTE;
					when s_COMPUTE =>
						update_reg <= '1';
						stato <= s_INCR_COUNTER;
					when s_INCR_COUNTER =>
						inc_counter <= '1'; 
						if counter_value = x"8" then	-- penultima iterazione
							stato <= s_LAST_STEP;
						else
							stato <= s_COMPUTE;
						end if;
					when s_LAST_STEP => 
						last_round <= '1';
						update_reg <= '1';
						stato <= s_DONE;
					when s_DONE =>
						done <= '1';
						stato <= s_IDLE;
				end case;
			end if;
		end if;
	end process;
	

end Behavioral;
