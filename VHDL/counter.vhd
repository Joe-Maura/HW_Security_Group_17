library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
		enable : in  std_logic;
		done   : out std_logic;
        output : out std_logic_vector(8 downto 0));
end counter;

architecture BHV of counter is
 signal count :std_logic_vector (8 downto 0);
 signal dones :std_logic;
begin
    process(clk, rst)
    begin
        if rst = '1' then
            count <= (others => '0');
			done <= '0';
			dones <= '0';
        elsif (rising_edge(clk)) then
		    if (enable = '1') and (dones = '0') then
                count <= std_logic_vector(unsigned(count) + 1);
            end if;
			if (count = "111111111") then
				done <= '1';
				dones <= '1';
			end if;
        end if;
    end process;
	output <= count;	
end BHV;