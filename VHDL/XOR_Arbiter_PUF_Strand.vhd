library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity XOR_Arbiter_PUF_STRAND is 
port (
challenge 	: IN std_logic_vector(63 downto 0); -- challenge
rst 	 	: IN std_logic; -- enable signal for arbiter puf
response 	: OUT std_logic -- response
);
end XOR_Arbiter_PUF_STRAND;
architecture arch_XOR_Arbiter_PUF_STRAND of XOR_Arbiter_PUF_STRAND is

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
			input1  =>'1',
			input2  =>'1',
			input3  =>'1',
			input4  =>'1',
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
	Stage17 : entity work.Double_Mux
		port map (
			input1  =>output16_A_S,
			input2  =>output16_B_S,
			input3  =>output16_A_S,
			input4  =>output16_B_S,
			sel   	=> challenge(16),
			output1 => output17_A_S,
			output2 => output17_B_S);
	Stage18 : entity work.Double_Mux
		port map (
			input1  =>output17_A_S,
			input2  =>output17_B_S,
			input3  =>output17_A_S,
			input4  =>output17_B_S,
			sel   	=> challenge(17),
			output1 => output18_A_S,
			output2 => output18_B_S);
	Stage19 : entity work.Double_Mux
		port map (
			input1  =>output18_A_S,
			input2  =>output18_B_S,
			input3  =>output18_A_S,
			input4  =>output18_B_S,
			sel   	=> challenge(18),
			output1 => output19_A_S,
			output2 => output19_B_S);
	Stage20 : entity work.Double_Mux
		port map (
			input1  =>output19_A_S,
			input2  =>output19_B_S,
			input3  =>output19_A_S,
			input4  =>output19_B_S,
			sel   	=> challenge(19),
			output1 => output20_A_S,
			output2 => output20_B_S);
	Stage21 : entity work.Double_Mux
		port map (
			input1  =>output20_A_S,
			input2  =>output20_B_S,
			input3  =>output20_A_S,
			input4  =>output20_B_S,
			sel   	=> challenge(20),
			output1 => output21_A_S,
			output2 => output21_B_S);
	Stage22 : entity work.Double_Mux
		port map (
			input1  =>output21_A_S,
			input2  =>output21_B_S,
			input3  =>output21_A_S,
			input4  =>output21_B_S,
			sel   	=> challenge(21),
			output1 => output22_A_S,
			output2 => output22_B_S);
	Stage23 : entity work.Double_Mux
		port map (
			input1  =>output22_A_S,
			input2  =>output22_B_S,
			input3  =>output22_A_S,
			input4  =>output22_B_S,
			sel   	=> challenge(22),
			output1 => output23_A_S,
			output2 => output23_B_S);
	Stage24 : entity work.Double_Mux
		port map (
			input1  =>output23_A_S,
			input2  =>output23_B_S,
			input3  =>output23_A_S,
			input4  =>output23_B_S,
			sel   	=> challenge(23),
			output1 => output24_A_S,
			output2 => output24_B_S);
	Stage25 : entity work.Double_Mux
		port map (
			input1  =>output24_A_S,
			input2  =>output24_B_S,
			input3  =>output24_A_S,
			input4  =>output24_B_S,
			sel   	=> challenge(24),
			output1 => output25_A_S,
			output2 => output25_B_S);
	Stage26 : entity work.Double_Mux
		port map (
			input1  =>output25_A_S,
			input2  =>output25_B_S,
			input3  =>output25_A_S,
			input4  =>output25_B_S,
			sel   	=> challenge(25),
			output1 => output26_A_S,
			output2 => output26_B_S);
	Stage27 : entity work.Double_Mux
		port map (
			input1  =>output26_A_S,
			input2  =>output26_B_S,
			input3  =>output26_A_S,
			input4  =>output26_B_S,
			sel   	=> challenge(26),
			output1 => output27_A_S,
			output2 => output27_B_S);
	Stage28 : entity work.Double_Mux
		port map (
			input1  =>output27_A_S,
			input2  =>output27_B_S,
			input3  =>output27_A_S,
			input4  =>output27_B_S,
			sel   	=> challenge(27),
			output1 => output28_A_S,
			output2 => output28_B_S);
	Stage29 : entity work.Double_Mux
		port map (
			input1  =>output28_A_S,
			input2  =>output28_B_S,
			input3  =>output28_A_S,
			input4  =>output28_B_S,
			sel   	=> challenge(28),
			output1 => output29_A_S,
			output2 => output29_B_S);
	Stage30 : entity work.Double_Mux
		port map (
			input1  =>output29_A_S,
			input2  =>output29_B_S,
			input3  =>output29_A_S,
			input4  =>output29_B_S,
			sel   	=> challenge(29),
			output1 => output30_A_S,
			output2 => output30_B_S);
	Stage31 : entity work.Double_Mux
		port map (
			input1  =>output30_A_S,
			input2  =>output30_B_S,
			input3  =>output30_A_S,
			input4  =>output30_B_S,
			sel   	=> challenge(30),
			output1 => output31_A_S,
			output2 => output31_B_S);
	Stage32 : entity work.Double_Mux
		port map (
			input1  =>output31_A_S,
			input2  =>output31_B_S,
			input3  =>output31_A_S,
			input4  =>output31_B_S,
			sel   	=> challenge(31),
			output1 => output32_A_S,
			output2 => output32_B_S);
	Stage33 : entity work.Double_Mux
		port map (
			input1  =>output32_A_S,
			input2  =>output32_B_S,
			input3  =>output32_A_S,
			input4  =>output32_B_S,
			sel   	=> challenge(32),
			output1 => output33_A_S,
			output2 => output33_B_S);
	Stage34 : entity work.Double_Mux
		port map (
			input1  =>output33_A_S,
			input2  =>output33_B_S,
			input3  =>output33_A_S,
			input4  =>output33_B_S,
			sel   	=> challenge(33),
			output1 => output34_A_S,
			output2 => output34_B_S);
	Stage35 : entity work.Double_Mux
		port map (
			input1  =>output34_A_S,
			input2  =>output34_B_S,
			input3  =>output34_A_S,
			input4  =>output34_B_S,
			sel   	=> challenge(34),
			output1 => output35_A_S,
			output2 => output35_B_S);
	Stage36 : entity work.Double_Mux
		port map (
			input1  =>output35_A_S,
			input2  =>output35_B_S,
			input3  =>output35_A_S,
			input4  =>output35_B_S,
			sel   	=> challenge(35),
			output1 => output36_A_S,
			output2 => output36_B_S);
	Stage37 : entity work.Double_Mux
		port map (
			input1  =>output36_A_S,
			input2  =>output36_B_S,
			input3  =>output36_A_S,
			input4  =>output36_B_S,
			sel   	=> challenge(36),
			output1 => output37_A_S,
			output2 => output37_B_S);
	Stage38 : entity work.Double_Mux
		port map (
			input1  =>output37_A_S,
			input2  =>output37_B_S,
			input3  =>output37_A_S,
			input4  =>output37_B_S,
			sel   	=> challenge(37),
			output1 => output38_A_S,
			output2 => output38_B_S);
	Stage39 : entity work.Double_Mux
		port map (
			input1  =>output38_A_S,
			input2  =>output38_B_S,
			input3  =>output38_A_S,
			input4  =>output38_B_S,
			sel   	=> challenge(38),
			output1 => output39_A_S,
			output2 => output39_B_S);
	Stage40 : entity work.Double_Mux
		port map (
			input1  =>output39_A_S,
			input2  =>output39_B_S,
			input3  =>output39_A_S,
			input4  =>output39_B_S,
			sel   	=> challenge(39),
			output1 => output40_A_S,
			output2 => output40_B_S);
	Stage41 : entity work.Double_Mux
		port map (
			input1  =>output40_A_S,
			input2  =>output40_B_S,
			input3  =>output40_A_S,
			input4  =>output40_B_S,
			sel   	=> challenge(40),
			output1 => output41_A_S,
			output2 => output41_B_S);
	Stage42 : entity work.Double_Mux
		port map (
			input1  =>output41_A_S,
			input2  =>output41_B_S,
			input3  =>output41_A_S,
			input4  =>output41_B_S,
			sel   	=> challenge(42),
			output1 => output42_A_S,
			output2 => output42_B_S);
	Stage43 : entity work.Double_Mux
		port map (
			input1  =>output42_A_S,
			input2  =>output42_B_S,
			input3  =>output42_A_S,
			input4  =>output42_B_S,
			sel   	=> challenge(42),
			output1 => output43_A_S,
			output2 => output43_B_S);
	Stage44 : entity work.Double_Mux
		port map (
			input1  =>output43_A_S,
			input2  =>output43_B_S,
			input3  =>output43_A_S,
			input4  =>output43_B_S,
			sel   	=> challenge(43),
			output1 => output44_A_S,
			output2 => output44_B_S);
	Stage45 : entity work.Double_Mux
		port map (
			input1  =>output44_A_S,
			input2  =>output44_B_S,
			input3  =>output44_A_S,
			input4  =>output44_B_S,
			sel   	=> challenge(44),
			output1 => output45_A_S,
			output2 => output45_B_S);
	Stage46 : entity work.Double_Mux
		port map (
			input1  =>output45_A_S,
			input2  =>output45_B_S,
			input3  =>output45_A_S,
			input4  =>output45_B_S,
			sel   	=> challenge(45),
			output1 => output46_A_S,
			output2 => output46_B_S);
	Stage47 : entity work.Double_Mux
		port map (
			input1  =>output46_A_S,
			input2  =>output46_B_S,
			input3  =>output46_A_S,
			input4  =>output46_B_S,
			sel   	=> challenge(47),
			output1 => output47_A_S,
			output2 => output47_B_S);
	Stage48 : entity work.Double_Mux
		port map (
			input1  =>output47_A_S,
			input2  =>output47_B_S,
			input3  =>output47_A_S,
			input4  =>output47_B_S,
			sel   	=> challenge(47),
			output1 => output48_A_S,
			output2 => output48_B_S);
	Stage49 : entity work.Double_Mux
		port map (
			input1  =>output48_A_S,
			input2  =>output48_B_S,
			input3  =>output48_A_S,
			input4  =>output48_B_S,
			sel   	=> challenge(48),
			output1 => output49_A_S,
			output2 => output49_B_S);
	Stage50 : entity work.Double_Mux
		port map (
			input1  =>output49_A_S,
			input2  =>output49_B_S,
			input3  =>output49_A_S,
			input4  =>output49_B_S,
			sel   	=> challenge(49),
			output1 => output50_A_S,
			output2 => output50_B_S);
	Stage51 : entity work.Double_Mux
		port map (
			input1  =>output50_A_S,
			input2  =>output50_B_S,
			input3  =>output50_A_S,
			input4  =>output50_B_S,
			sel   	=> challenge(50),
			output1 => output51_A_S,
			output2 => output51_B_S);
	Stage52 : entity work.Double_Mux
		port map (
			input1  =>output51_A_S,
			input2  =>output51_B_S,
			input3  =>output51_A_S,
			input4  =>output51_B_S,
			sel   	=> challenge(51),
			output1 => output52_A_S,
			output2 => output52_B_S);
	Stage53 : entity work.Double_Mux
		port map (
			input1  =>output52_A_S,
			input2  =>output52_B_S,
			input3  =>output52_A_S,
			input4  =>output52_B_S,
			sel   	=> challenge(52),
			output1 => output53_A_S,
			output2 => output53_B_S);
	Stage54 : entity work.Double_Mux
		port map (
			input1  =>output53_A_S,
			input2  =>output53_B_S,
			input3  =>output53_A_S,
			input4  =>output53_B_S,
			sel   	=> challenge(53),
			output1 => output54_A_S,
			output2 => output54_B_S);
	Stage55 : entity work.Double_Mux
		port map (
			input1  =>output54_A_S,
			input2  =>output54_B_S,
			input3  =>output54_A_S,
			input4  =>output54_B_S,
			sel   	=> challenge(54),
			output1 => output55_A_S,
			output2 => output55_B_S);
	Stage56 : entity work.Double_Mux
		port map (
			input1  =>output55_A_S,
			input2  =>output55_B_S,
			input3  =>output55_A_S,
			input4  =>output55_B_S,
			sel   	=> challenge(55),
			output1 => output56_A_S,
			output2 => output56_B_S);
	Stage57 : entity work.Double_Mux
		port map (
			input1  =>output56_A_S,
			input2  =>output56_B_S,
			input3  =>output56_A_S,
			input4  =>output56_B_S,
			sel   	=> challenge(56),
			output1 => output57_A_S,
			output2 => output57_B_S);
	Stage58 : entity work.Double_Mux
		port map (
			input1  =>output57_A_S,
			input2  =>output57_B_S,
			input3  =>output57_A_S,
			input4  =>output57_B_S,
			sel   	=> challenge(57),
			output1 => output58_A_S,
			output2 => output58_B_S);
	Stage59 : entity work.Double_Mux
		port map (
			input1  =>output58_A_S,
			input2  =>output58_B_S,
			input3  =>output58_A_S,
			input4  =>output58_B_S,
			sel   	=> challenge(58),
			output1 => output59_A_S,
			output2 => output59_B_S);
	Stage60 : entity work.Double_Mux
		port map (
			input1  =>output59_A_S,
			input2  =>output59_B_S,
			input3  =>output59_A_S,
			input4  =>output59_B_S,
			sel   	=> challenge(59),
			output1 => output60_A_S,
			output2 => output60_B_S);
	Stage61 : entity work.Double_Mux
		port map (
			input1  =>output60_A_S,
			input2  =>output60_B_S,
			input3  =>output60_A_S,
			input4  =>output60_B_S,
			sel   	=> challenge(60),
			output1 => output61_A_S,
			output2 => output61_B_S);
	Stage62 : entity work.Double_Mux
		port map (
			input1  =>output61_A_S,
			input2  =>output61_B_S,
			input3  =>output61_A_S,
			input4  =>output61_B_S,
			sel   	=> challenge(61),
			output1 => output62_A_S,
			output2 => output62_B_S);
	Stage63 : entity work.Double_Mux
		port map (
			input1  =>output62_A_S,
			input2  =>output62_B_S,
			input3  =>output62_A_S,
			input4  =>output62_B_S,
			sel   	=> challenge(62),
			output1 => output63_A_S,
			output2 => output63_B_S);
	Stage64 : entity work.Double_Mux
		port map (
			input1  =>output63_A_S,
			input2  =>output63_B_S,
			input3  =>output63_A_S,
			input4  =>output63_B_S,
			sel   	=> challenge(63),
			output1 => output64_A_S,
			output2 => output64_B_S);
	--Latch : entity work.SR_Latch
		--port map (
			--s   =>output64_A_S,
			--r =>output64_B_S,
			--rst =>rst,
			--q 	=>response);
	Flop : entity work.D_Flop
		port map (
			d   =>output64_A_S,
			clk =>output64_B_S,
			rst =>rst,
			q 	=>response);
						
end arch_XOR_Arbiter_PUF_STRAND;