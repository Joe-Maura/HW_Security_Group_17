library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XOR_Arbiter_PUF_tb is
end XOR_Arbiter_PUF_tb;

architecture TB of XOR_Arbiter_PUF_tb is

    constant TIMEOUT : time     := 1 ms;

    signal rst    	  : std_logic := '1';
    signal challenge  : std_logic_vector(63 downto 0) := (others => '0');
    signal response   : std_logic_vector(63 downto 0);

begin

    UUT : entity work.XOR_Arbiter_PUF
        port map (
            rst         => rst,
			challenge	=> challenge,
            response	=> response);
    process
    begin

        rst   <= '1';
        wait for 200 ns;	
        rst <= '0';
		challenge <= to_stdlogicvector(x"D0f2f0Bf4Cf051AF");
		wait for 10000 ns;
        report "DONE!!!!!!" severity note;
        wait;
    end process;

end TB;