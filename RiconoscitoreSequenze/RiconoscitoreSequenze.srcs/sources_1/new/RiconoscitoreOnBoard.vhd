----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Riconoscitore di sequenza 1001, prevede due modalita', 
--				m=0: riconosce ogni 4 bit la sequenza
--				m=1: riconosce la sequenza 1001 ad ogni ingresso, torna allo stato iniziale solo quando riconsce la sequenza
--				Implementazione su board con Debouncer
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RiconoscitoreOnBoard is
	Port (
		-- Ingressi
		CLK: IN std_logic; 			
		x: IN std_logic; 				-- dato in ingresso
		x_read_strobe: IN std_logic; 	-- Bottone 1 attivo per leggere il dato e far avanzare la macchina a stati
		m: IN std_logic;				-- Bit modalita'
		m_read_strobe: IN std_logic;	-- Strobe di lettura del bit di modalita'
		 
		-- Uscite
		y: OUT std_logic;				-- Bit di riconoscimento di sequenza: 1 se trova la sequenza
		state: OUT std_logic_vector(3 downto 0)
	);
end RiconoscitoreOnBoard;

architecture Behavioral of RiconoscitoreOnBoard is
-- Segnali di interconnessione
signal x_read_clrd: std_logic;			-- x_read_strobe debounced
signal m_read_clrd: std_logic;			-- x_read_strobe debounced

begin
	Debouncer_x: entity work.ButtonDebouncer generic map(CLK_period => 10, btn_noise_time => 6500000)
		port map(
			CLK => CLK,
			RST => '0',
			BTN => x_read_strobe,
			CLEARED_BTN => x_read_clrd
		);
	Debouncer_m: entity work.ButtonDebouncer generic map(CLK_period => 10, btn_noise_time => 6500000)
		port map(
			CLK => CLK,
			RST => '0',
			BTN => m_read_strobe,
			CLEARED_BTN => m_read_clrd
		);
	Riconoscitore: entity work.Riconoscitore port map(CLK => CLK, x => x, x_read_strobe => x_read_clrd, m => m, m_read_strobe => m_read_clrd, y => y, state => state);

end Behavioral;
