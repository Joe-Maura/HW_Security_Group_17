library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity XOR_Arbiter_PUF is 
port (
challenge 	: IN std_logic_vector(63 downto 0); -- challenge
rst 	 	: IN std_logic; -- enable signal for arbiter puf
response 	: OUT std_logic_vector(63 downto 0) -- response
);
end XOR_Arbiter_PUF;

architecture arch_XOR_Arbiter_PUF of XOR_Arbiter_PUF is

begin
	Bit1 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(0));			
	Bit2 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(1));			
	Bit3 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(2));			
	Bit4 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(3));
	Bit5 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(4));
	Bit6 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(5));			
	Bit7 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(6));
	Bit8 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(7));
	Bit9 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(8));
	Bit10 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(9));
	Bit11 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(10));
	Bit12 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(11));
	Bit13 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(12));		
	Bit14 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(13));
	Bit15 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(14));
	Bit16 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(15));			
	Bit17 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(16));
	Bit18 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(17));			
	Bit19 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(18));			
	Bit20 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(19));			
	Bit21 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(20));			
	Bit22 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(21));			
	Bit23 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(22));			
	Bit24 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(23));			
	Bit25 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(24));
	Bit26 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(25));			
	Bit27 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(26));			
	Bit28 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(27));			
	Bit29 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(28));			
	Bit30 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(29));			
	Bit31 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(30));
	Bit32 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(31));			
	Bit33 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(32));			
	Bit34 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(33));			
	Bit35 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(34));			
	Bit36 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(35));
	Bit37 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(36));			
	Bit38 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(37));			
	Bit39 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(38));			
	Bit40 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(39));			
	Bit41 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(40));			
	Bit42 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(41));			
	Bit43 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(42));			
	Bit44 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(43));
	Bit45 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(44));			
	Bit46 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(45));			
	Bit47 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(46));
	Bit48 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(47));			
	Bit49 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(48));			
	Bit50 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(49));			
	Bit51 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(50));			
	Bit52 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(51));			
	Bit53 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(52));			
	Bit54 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(53));			
	Bit55 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(54));			
	Bit56 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(55));			
	Bit57 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(56));			
	Bit58 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(57));			
	Bit59 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(58));			
	Bit60 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(59));			
	Bit61 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(60));
	Bit62 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(61));			
	Bit63 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(62));			
	Bit64 : entity work.XOR_Response
		port map (
			challenge =>challenge,
			rst =>rst,
			response => response(63));	
			
end arch_XOR_Arbiter_PUF;