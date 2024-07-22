----------------------------------------------------------------------------------
-- Engineer: Dario Di Meo
-- Description: Riconoscitore di sequenza 1001, prevede due modalita', 
--				m=0: riconosce ogni 4 bit la sequenza
--				m=1: riconosce la sequenza 1001 ad ogni ingresso, torna allo stato iniziale solo quando riconsce la sequenza
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Riconoscitore is
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
end Riconoscitore;

architecture Behavioral of Riconoscitore is
	-- Stati raggiungibili dalle due FSM
	type stato is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10);
	-- Stato corrente
	signal q: stato := S0; -- Valore di default stato di partenza S0
begin
    update : process(clk) begin
    if(rising_edge(clk)) then

        if(m_read_strobe='1') then 
            if(m = '1' and (q = S0 or q = S1 or q = S2 or q = S3 or q = S4 or q = S5 or q = S6)) then 
                q <= S7;
                y <= '0';
            elsif(m = '0' and (q = S7 or q = S8 or q = S9 or q = S10)) then 
                q <= S0;
                y <= '0';
            end if;

        elsif(x_read_strobe = '1') then
            case q is
                when S0 => 
                    if(x = '0') then
                        q <= S4;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S1;
                        y <= '0';
                    end if;
                  
                when S1 => 
                    if(x = '0') then
                        q <= S2;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S5;
                        y <= '0';
                    end if;
                    
                when S2 => 
                    if(x = '0') then
                        q <= S3;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S6;
                        y <= '0';
                    end if;
                    
                when S3 => 
                    if(x = '0') then
                        q <= S0;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S0;
                        y <= '1';
                    end if;
                    
                  when S4 => 
                        q <= S5;
                        y <= '0';
                  
                  when S5 => 
                        q <= S6;
                        y <= '0';
                    
                  when S6 =>
                        q <= S0;
                        y <= '0';
                  
                when S7 => 
                    if(x = '0') then
                        q <= S7;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S8;
                        y <= '0';
                    end if;
                  
                when S8 => 
                    if(x = '0') then
                        q <= S9;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S8;
                        y <= '0';
                    end if;
                    
                when S9 => 
                    if(x = '0') then
                        q <= S10;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S8;
                        y <= '0';
                    end if;
                    
                when S10 => 
                    if(x = '0') then
                        q <= S7;
                        y <= '0';
                    elsif(x = '1') then
                        q <= S7;
                        y <= '1';
                    end if;
            end case;     
        end if;
    end if;
end process;    

with q select
        state <= x"0" when S0,
                 x"1" when S1,
                 x"2" when S2,
                 x"3" when S3,
                 x"4" when S4,
                 x"5" when S5,
                 x"6" when S6,
                 x"7" when S7,
                 x"8" when S8,
                 x"9" when S9,
                 x"a" when S10,
                 x"f" when others;

end Behavioral;
