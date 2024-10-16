----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.06.2024 11:00:10
-- Design Name: 
-- Module Name: comunicazione_2_uart_TB - Behavioral
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

entity comunicazione_2_uart_TB is
--  Port ( );
end comunicazione_2_uart_TB;

architecture Behavioral of comunicazione_2_uart_TB is
	-- Input signals
	signal CLK, write_strobe: std_logic := '0';
	signal RST, read_strobe: std_logic := '1'; 					-- 0 attivi
	signal data_in: std_logic_vector(7 downto 0) := "00000000";
	
	-- Output signals
	signal data_out: std_logic_vector(7 downto 0);
	
	-- Simulation constants
	constant clk_period: time := 20ns; 							-- 50Mhz clock
begin

	uut: entity work.comunicazione_2_uart
		port map(
			CLK => CLK,
			RST => RST,
			data_in => data_in,
			data_out => data_out,
			read_strobe => read_strobe,
			write_strobe => write_strobe
		);

	clock_proc: process
	begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
	end process;
	
	stim_proc: process
		procedure test(constant input: IN std_logic_vector(7 downto 0)) is
		begin
			data_in <= input;
			write_strobe <= '1';
			wait for 5ms;
			read_strobe <= '0';
			wait for 1ms;
			read_strobe <= '1';
		end procedure;
	begin
		-- Reset All
		RST <= '0';
		wait for 2*clk_period;
		RST <= '1';
		wait for 2*clk_period;
		
		-- Test Suit
		test("10101010");
		test("00001111");
		test("11110000");		
		wait;
	end process;
end Behavioral;

