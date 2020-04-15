library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    generic(clk_in_freq  : natural;
            clk_out_freq : natural);
    port (
        clk_in  : in  std_logic;
        clk_out : out std_logic;
        rst     : in  std_logic);
end clk_div;

architecture BHV of clk_div is
	signal clk_count, scale : natural ;
	signal temp : std_logic;
	begin
		process(clk_in, rst)
		begin
			if (rst='1') then
				clk_count <= 0;
				temp <= '0';
			elsif (rising_edge(clk_in))then
				if (clk_count = scale) then
					temp <= not (temp);
					clk_count <= 0;
				else 
					clk_count <= clk_count + 1;
				end if; 
			end if;
		end process;
	scale <=  (clk_in_freq / clk_out_freq);
	clk_out <= temp;
end BHV;		
				
				
		
	
