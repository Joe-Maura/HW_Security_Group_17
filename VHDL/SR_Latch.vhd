library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SR_Latch is 
port(
    s   : in std_logic;
    r 	: in std_logic; 
	rst : in std_logic; 
    q   : out std_logic); 
	
end SR_Latch;

architecture BHV of SR_Latch is
signal notq, tempq : STD_LOGIC;
begin
    --process(s,r,rst)
    --begin
       -- if rst = '1' then
        --   q <= '0';
        --else 	
	        q    <= tempq;		
			tempq   <= R nor notq;
			notq <= S nor tempq;
       -- end if;
    --end process;
end BHV;