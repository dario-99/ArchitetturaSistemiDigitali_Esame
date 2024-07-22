----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2024 15:58:55
-- Design Name: 
-- Module Name: seven_segment_array - Behavioral
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

entity seven_segment_array is
	Port (
		CLK, RST: in std_logic;
		value: in std_logic_vector(31 downto 0);
		enable: in std_logic_vector(7 downto 0);
		dots: in std_logic_vector(7 downto 0);
		anodes: out std_logic_vector(7 downto 0);
		cathodes: out std_logic_vector(7 downto 0)
	);
end seven_segment_array;

architecture Structural of seven_segment_array is
signal clockfx: std_logic := '0';
signal counter_tmp: std_logic_vector(2 downto 0) := "000";
begin

clk_filter: entity work.clock_filter(Behavioral)
	generic map(
		CLKIN_freq => 50000000,
		CLKOUT_freq => 500
	)
	port map(
		clock_in => CLK,
		reset => RST,
		clock_out => clockfx
	);
counter_instance: entity work.counter_mod8(Behavioral)
	port map(
		clock => CLK,
		reset => RST,
		enable => clockfx,
		counter => counter_tmp
	);
cathodes_instance: entity work.cathodes_manager(Behavioral)
	port map(
		counter => counter_tmp,
		value => value,
		dots => dots,
		cathodes => cathodes
	);
anodes_instance: entity work.anodes_manager(Behavioral)
	port map(
		counter => counter_tmp,
		enable_digit => enable,
		anodes => anodes
	);
end Structural;
