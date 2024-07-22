library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Riconoscitore_TB is
end Riconoscitore_TB;

architecture Behavioral of Riconoscitore_TB is

-- Input signals
signal clk : std_logic := '0';
signal x : std_logic := '0';
signal m : std_logic := '0';
signal x_read_strobe : std_logic :='0';
signal m_read_strobe : std_logic := '0';
-- Output signals
signal y : std_logic := '0';
signal state: std_logic_vector(3 downto 0);

constant wait_time: time := 100ns;
begin

    uut : entity work.Riconoscitore port map(
       CLK => CLK, x => x, y => y, m => m, x_read_strobe=>x_read_strobe, m_read_strobe=>m_read_strobe, state => state
    );

    clock_proc : process begin
        wait for 50 ns;
        CLK <= '1';
        wait for 50 ns;
        CLK <='0';
    end process;
    
    stim_proc : process begin
		wait for 10 ns;
		x_read_strobe <= '1';
		x <= '1';
		wait for 100 ns;
		x_read_strobe <= '1';
		x <= '0';
		wait for 100 ns;
		x_read_strobe <= '1';
		x <= '0';
		wait for 100 ns;
		x_read_strobe <= '1';
		x <= '1';
		wait for 5 ns;
		x_read_strobe <= '1';
		x <= '0';
		wait for 5 ns;
		x_read_strobe <= '1';
		x <= '1';
		wait for 5 ns;
		x_read_strobe <= '1';
		x <= '0';
		wait for 5 ns;
		x_read_strobe <= '1';
		x <= '1';
		
		wait for 100 ns;
		x_read_strobe <= '0';
		m_read_strobe <= '1';
		m <= '1';
		wait for 50 ns;
		m_read_strobe <= '0';
		x_read_strobe <= '1';
		x <= '1';
		wait for 50 ns;
		x_read_strobe <= '1';
		x <= '0';
		wait for 50 ns;
		x_read_strobe <= '1';
		x <= '0';
		wait for 50 ns;
		x_read_strobe <= '1';
		x <= '1';
		-- M = 1
        wait for wait_time;
        x_read_strobe <= '0';
        m_read_strobe <= '1';
        m <= '1';
        wait for wait_time;
        m_read_strobe <= '0';
        x_read_strobe <= '1';
        x <= '0';
        wait for wait_time;
        x_read_strobe <= '1';
        x <= '0';
        wait for wait_time;
        x_read_strobe <= '1';
        x <= '1';
        wait for wait_time;
        x_read_strobe <= '1';
        x <= '1';
        wait for wait_time;
        x_read_strobe <= '1';
        x <= '0';
        wait for wait_time;
        x_read_strobe <= '1';
        x <= '0';
        wait for wait_time;
        x_read_strobe <= '1';
        x <= '1';
        wait;
    end process;

end Behavioral;