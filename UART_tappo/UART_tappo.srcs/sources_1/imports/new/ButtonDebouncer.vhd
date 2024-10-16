----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2024 15:17:56
-- Design Name: 
-- Module Name: ButtonDebouncer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ButtonDebouncer is
	generic (
		CLK_period: integer := 10;
		btn_noise_time: integer := 6500000
	);
	Port (
  		CLK, RST, BTN: IN std_logic;
  		CLEARED_BTN: OUT std_logic
  	);
end ButtonDebouncer;

architecture Behavioral of ButtonDebouncer is
type stato is (NOT_PRESSED, PRESSED);
signal BTN_state: stato := NOT_PRESSED;

constant max_count : integer := btn_noise_time/CLK_period;
begin

deb: process(CLK)
variable count: integer := 0;
begin
	if rising_edge(CLK) then
		if (RST = '1') then
			BTN_state <= NOT_PRESSED;
			CLEARED_BTN <= '0';
		else
			case BTN_state is 
				when NOT_PRESSED =>
					CLEARED_BTN <= '0';
					if (BTN = '1') then
						BTN_state <= PRESSED;
					else
						BTN_state <= NOT_PRESSED;
					end if;
				when PRESSED =>
					if (BTN = '1') then
						if (count = max_count - 1) then
							count := 0;
							CLEARED_btn <= '1';
							BTN_state <= NOT_PRESSED;
						else
							count := count + 1;
							BTN_state <= PRESSED;
						end if;
					else
						BTN_state <= NOT_PRESSED;
					end if;
				when others =>
					BTN_state <= NOT_PRESSED;
			end case;
		end if;
	end if;
end process;

end Behavioral;
