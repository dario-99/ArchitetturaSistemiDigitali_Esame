----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2024 16:08:48
-- Design Name: 
-- Module Name: UART_tappo_TB - Behavioral
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

entity UART_tappo_TB is
--  Port ( );
end UART_tappo_TB;

architecture Behavioral of UART_tappo_TB is
-- In
signal CLK: std_logic := '0';
signal RST: std_logic := '1';
signal DBIN: std_logic_vector(7 downto 0);
signal WR_STROBE: std_logic := '0';

-- Out
signal data_out: std_logic_vector(7 downto 0);

-- constants
constant clock_period: time := 20ns;

begin

uut: entity work.UART_tappo
	port map(
		CLK => CLK,
		RST => RST,
		WR_STROBE => WR_STROBE,
		DBIN => DBIN,
		data_out => data_out
	);

clock_proc: process 
begin
	CLK <= '0';
	wait for clock_period/2;
	CLK <= '1';
	wait for clock_period/2;
end process;

stim_proc: process
	procedure test (constant in_string: IN std_logic_vector(7 downto 0)) is 
	begin
		DBIN <= in_string;
		wait for 1ms;
		WR_STROBE <= '1';
		wait for 8ms;
		WR_STROBE <= '0';
		
	end procedure;
begin
	-- reset zero attivo
	wait for 10ns;
	RST <= '0';
	wait for 10ns;
	RST <= '1';

	-- Tests
	test("10101010");
	
--	test("00001111");
--	test("11110000");
--	test("01010101");
--	test("11001100");

	wait;
end process;

end Behavioral;
