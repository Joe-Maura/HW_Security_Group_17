library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XOR_Response_16 is 
port (
challenge 	: IN std_logic_vector(15 downto 0); 
rst 	 	: IN std_logic; 
clk			: IN std_logic;
response 	: OUT std_logic 
);
end XOR_Response_16;

architecture arch of XOR_Response_16 is
signal output1, output2  : std_logic;
begin
	Bit1 : entity work.XOR_Arbiter_PUF_Strand_16
		port map (
			challenge =>challenge,
			rst =>rst,
			clk => clk,
			response => output1);			
	Bit2 : entity work.XOR_Arbiter_PUF_Strand_16
		port map (
			challenge =>challenge,
			rst =>rst,
			clk => clk,
			response => output2);
			
	response <= output1 xor output2;

            
end arch;