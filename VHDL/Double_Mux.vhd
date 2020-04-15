library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Double_Mux is

port (
    input1    : in  std_logic;
    input2    : in  std_logic;
    input3    : in  std_logic;
    input4    : in  std_logic;
    sel 	  : in  std_logic;
    output1    : out std_logic;
	output2    : out std_logic);
	
end Double_Mux;

architecture BHV of Double_Mux is
begin 
	process (input1, input2,input3, input4, sel)
	begin
		case sel is
		when '0' =>
			output1 <= input1;
			output2 <= input3;
		when '1' =>
			output1 <= input2;
			output2 <= input4;
		when others => null;
	end case;
	end process;			
end BHV;