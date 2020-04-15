library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_gen is
    generic (
        ms_period : positive := 1000);  -- amount of ms for button to be
                                        -- pressed before creating clock pulse
    port (
        clk50MHz : in  std_logic;
        rst      : in  std_logic;
        button_n : in  std_logic;
        clk_out  : out std_logic);
end clk_gen;

architecture STR of clk_gen is
	signal temp, current_clk, slow_clk : std_logic;
	signal clk_count : natural;
	
	begin  
		U_Clk_Div : entity work.clk_div 
		Generic map (
			clk_in_freq => 50000000,
			clk_out_freq => 1000)
		port map (
			rst => rst,
			clk_out => slow_clk,
			clk_in => current_clk
		);

	process(slow_clk, rst)
	variable clk_count : integer;
		begin
		
			if (rst='1') then
				clk_count := 0;
				temp <= '0';
			elsif (rising_edge(slow_clk))then
				if (button_n = '0') then
					if (clk_count = ms_period ) then
						temp <= not (temp);
						clk_count := 0;
					else 
						clk_count := (clk_count) + 1;
					end if;
				else
					temp <= '0' ;
				end if;
			end if;
		end process;
		
	clk_out <= temp;
	current_clk <= clk50Mhz;
	
end STR;


	