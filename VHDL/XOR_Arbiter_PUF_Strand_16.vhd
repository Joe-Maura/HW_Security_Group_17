library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity XOR_Arbiter_PUF_STRAND_16 is 
port (
challenge 	: IN std_logic_vector(15 downto 0); -- challenge
rst 	 	: IN std_logic; -- enable signal for arbiter puf
clk 	 	: IN std_logic; -- enable signal for arbiter puf
response 	: OUT std_logic -- response
);
end XOR_Arbiter_PUF_STRAND_16;
architecture arch_XOR_Arbiter_PUF_STRAND_16 of XOR_Arbiter_PUF_STRAND_16 is

signal output1_A_S, output2_A_S, output3_A_S, output4_A_S, output5_A_S, output6_A_S, output7_A_S, output8_A_S  : std_logic;
signal output9_A_S, output10_A_S, output11_A_S, output12_A_S, output13_A_S, output14_A_S, output15_A_S, output16_A_S  : std_logic;
signal output17_A_S, output18_A_S, output19_A_S, output20_A_S, output21_A_S, output22_A_S, output23_A_S, output24_A_S  : std_logic;
signal output25_A_S, output26_A_S, output27_A_S, output28_A_S, output29_A_S, output30_A_S, output31_A_S, output32_A_S  : std_logic;
signal output33_A_S, output34_A_S, output35_A_S, output36_A_S, output37_A_S, output38_A_S, output39_A_S, output40_A_S  : std_logic;
signal output41_A_S, output42_A_S, output43_A_S, output44_A_S, output45_A_S, output46_A_S, output47_A_S, output48_A_S  : std_logic;
signal output49_A_S, output50_A_S, output51_A_S, output52_A_S, output53_A_S, output54_A_S, output55_A_S, output56_A_S  : std_logic;
signal output57_A_S, output58_A_S, output59_A_S, output60_A_S, output61_A_S, output62_A_S, output63_A_S, output64_A_S  : std_logic;
signal output1_B_S, output2_B_S, output3_B_S, output4_B_S, output5_B_S, output6_B_S, output7_B_S, output8_B_S  : std_logic;
signal output9_B_S, output10_B_S, output11_B_S, output12_B_S, output13_B_S, output14_B_S, output15_B_S, output16_B_S  : std_logic;
signal output17_B_S, output18_B_S, output19_B_S, output20_B_S, output21_B_S, output22_B_S, output23_B_S, output24_B_S  : std_logic;
signal output25_B_S, output26_B_S, output27_B_S, output28_B_S, output29_B_S, output30_B_S, output31_B_S, output32_B_S  : std_logic;
signal output33_B_S, output34_B_S, output35_B_S, output36_B_S, output37_B_S, output38_B_S, output39_B_S, output40_B_S  : std_logic;
signal output41_B_S, output42_B_S, output43_B_S, output44_B_S, output45_B_S, output46_B_S, output47_B_S, output48_B_S  : std_logic;
signal output49_B_S, output50_B_S, output51_B_S, output52_B_S, output53_B_S, output54_B_S, output55_B_S, output56_B_S  : std_logic;
signal output57_B_S, output58_B_S, output59_B_S, output60_B_S, output61_B_S, output62_B_S, output63_B_S, output64_B_S  : std_logic;


begin
	Stage1 : entity work.Double_Mux
		port map (
			input1  =>clk,
			input2  =>clk,
			input3  =>clk,
			input4  =>clk,
			sel   	=> challenge(0),
			output1 => output1_A_S,
			output2 => output1_B_S);			
	Stage2 : entity work.Double_Mux
		port map (
			input1  =>output1_A_S,
			input2  =>output1_B_S,
			input3  =>output1_A_S,
			input4  =>output1_B_S,
			sel   	=> challenge(1),
			output1 => output2_A_S,
			output2 => output2_B_S);
	Stage3 : entity work.Double_Mux
		port map (
			input1  =>output2_A_S,
			input2  =>output2_B_S,
			input3  =>output2_A_S,
			input4  =>output2_B_S,
			sel   	=> challenge(2),
			output1 => output3_A_S,
			output2 => output3_B_S);
	Stage4 : entity work.Double_Mux
		port map (
			input1  =>output3_A_S,
			input2  =>output3_B_S,
			input3  =>output3_A_S,
			input4  =>output3_B_S,
			sel   	=> challenge(3),
			output1 => output4_A_S,
			output2 => output4_B_S);
	Stage5 : entity work.Double_Mux
		port map (
			input1  =>output4_A_S,
			input2  =>output4_B_S,
			input3  =>output4_A_S,
			input4  =>output4_B_S,
			sel   	=> challenge(4),
			output1 => output5_A_S,
			output2 => output5_B_S);
	Stage6 : entity work.Double_Mux
		port map (
			input1  =>output5_A_S,
			input2  =>output5_B_S,
			input3  =>output5_A_S,
			input4  =>output5_B_S,
			sel   	=> challenge(5),
			output1 => output6_A_S,
			output2 => output6_B_S);
	Stage7 : entity work.Double_Mux
		port map (
			input1  =>output6_A_S,
			input2  =>output6_B_S,
			input3  =>output6_A_S,
			input4  =>output6_B_S,
			sel   	=> challenge(6),
			output1 => output7_A_S,
			output2 => output7_B_S);
	Stage8 : entity work.Double_Mux
		port map (
			input1  =>output7_A_S,
			input2  =>output7_B_S,
			input3  =>output7_A_S,
			input4  =>output7_B_S,
			sel   	=> challenge(7),
			output1 => output8_A_S,
			output2 => output8_B_S);
	Stage9 : entity work.Double_Mux
		port map (
			input1  =>output8_A_S,
			input2  =>output8_B_S,
			input3  =>output8_A_S,
			input4  =>output8_B_S,
			sel   	=> challenge(8),
			output1 => output9_A_S,
			output2 => output9_B_S);
	Stage10 : entity work.Double_Mux
		port map (
			input1  =>output9_A_S,
			input2  =>output9_B_S,
			input3  =>output9_A_S,
			input4  =>output9_B_S,
			sel   	=> challenge(9),
			output1 => output10_A_S,
			output2 => output10_B_S);
	Stage11 : entity work.Double_Mux
		port map (
			input1  =>output10_A_S,
			input2  =>output10_B_S,
			input3  =>output10_A_S,
			input4  =>output10_B_S,
			sel   	=> challenge(10),
			output1 => output11_A_S,
			output2 => output11_B_S);
	Stage12 : entity work.Double_Mux
		port map (
			input1  =>output11_A_S,
			input2  =>output11_B_S,
			input3  =>output11_A_S,
			input4  =>output11_B_S,
			sel   	=> challenge(11),
			output1 => output12_A_S,
			output2 => output12_B_S);
	Stage13 : entity work.Double_Mux
		port map (
			input1  =>output12_A_S,
			input2  =>output12_B_S,
			input3  =>output12_A_S,
			input4  =>output12_B_S,
			sel   	=> challenge(12),
			output1 => output13_A_S,
			output2 => output13_B_S);
	Stage14 : entity work.Double_Mux
		port map (
			input1  =>output13_A_S,
			input2  =>output13_B_S,
			input3  =>output13_A_S,
			input4  =>output13_B_S,
			sel   	=> challenge(13),
			output1 => output14_A_S,
			output2 => output14_B_S);
	Stage15 : entity work.Double_Mux
		port map (
			input1  =>output14_A_S,
			input2  =>output14_B_S,
			input3  =>output14_A_S,
			input4  =>output14_B_S,
			sel   	=> challenge(14),
			output1 => output15_A_S,
			output2 => output15_B_S);
	Stage16 : entity work.Double_Mux
		port map (
			input1  =>output15_A_S,
			input2  =>output15_B_S,
			input3  =>output15_A_S,
			input4  =>output15_B_S,
			sel   	=> challenge(15),
			output1 => output16_A_S,
			output2 => output16_B_S);
	--Latch : entity work.SR_Latch
		--port map (
			--s   =>output64_A_S,
			--r =>output64_B_S,
			--rst =>rst,
			--q 	=>response);
	Flop : entity work.D_Flop
		port map (
			d   =>output16_A_S,
			clk =>output16_B_S,
			rst =>rst,
			q 	=>response);
						
end arch_XOR_Arbiter_PUF_STRAND_16;