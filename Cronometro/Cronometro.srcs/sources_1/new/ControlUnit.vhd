----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Parte di controllo 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ControlUnit is
	Port (
		-- Ingressi
		CLK,RST: IN std_logic;
		view: IN std_logic;
		count: IN std_logic;
		save: IN std_logic;
		
		-- Uscite
		mem_read: OUT std_logic;
		mem_write: OUT std_logic;
		countr_save_incr: OUT std_logic;
		countr_read_incr: OUT std_logic;
		cronometro_en: OUT std_logic;
		mux_visore_sel: OUT std_logic;
		mux_addr_sel: OUT std_logic
		
	);
end ControlUnit;

architecture Behavioral of ControlUnit is
-- Stati
type t_state is (s_idle, s_cronometro, s_save, s_view, s_countr_incr);
signal stato: t_state := s_idle;
begin

process(CLK)
begin
	if rising_edge(CLK) then
		-- Reset segnali di controllo
		mem_read <= '0';
		mem_write <= '0';
		countr_save_incr <= '0';
		countr_read_incr <= '0';
		cronometro_en <= '0';
		mux_visore_sel <= '0';
		mux_addr_sel <= '0';
		
		if RST = '1' then
			stato <= s_idle;
		else
			case stato is
				when s_idle =>
					if view = '1' then
						stato <= s_view;
					elsif count = '1' then
						stato <= s_cronometro; 
					else
						stato <= s_idle;
					end if;
				when s_cronometro =>
					cronometro_en <= '1';
					mux_visore_sel <= '0';
					stato <= s_cronometro;
					if count = '1' then
						stato <= s_idle;
					elsif view = '1' then
						stato <= s_view;
					elsif save = '1' then
						stato <= s_save;
					end if; 
				when s_save => 
					mux_addr_sel <= '1';
					cronometro_en <= '1';
					mem_write <= '1';
					stato <= s_countr_incr;
				when s_countr_incr =>
					mux_addr_sel <= '1'; 
					cronometro_en <= '1';
					countr_save_incr <= '1';
					stato <= s_cronometro;
				when s_view => 	
					mux_visore_sel <= '1';
					mux_addr_sel <= '0';
					mem_read <= '1';
					stato <= s_view;
					if view = '1' then
						countr_read_incr <= '1';
					elsif count = '1' then
						stato <= s_cronometro;
					end if;
			end case;
		end if;
		
	end if;
end process;


end Behavioral;
