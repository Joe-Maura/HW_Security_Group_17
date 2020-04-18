library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        clk50MHz : in  std_logic;
        rst      : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(1 downto 0)
        );
end top_level;

architecture STR of top_level is

    component clk_gen
        generic (
            ms_period : positive);
        port (
            clk50MHz : in  std_logic;
            rst      : in  std_logic;
            button_n : in  std_logic;
            clk_out  : out std_logic);
    end component;

    component counter
        port (
            clk    : in  std_logic;
            rst    : in  std_logic;
			enable : in  std_logic;
			done   : out std_logic;
            output : out std_logic_vector(8 downto 0));
    end component;
	
    constant MS_CLOCK_PERIOD : natural                      := 1000;
	signal challenge	: std_logic_vector (63 downto 0);
	signal response	: std_logic_vector (63 downto 0);
    signal counter_out : std_logic_vector(8 downto 0);
	signal clk_gen_out : std_logic;
	signal finish : std_logic;
  
begin 

    U_CLK_GEN : clk_gen
        generic map (
            ms_period => MS_CLOCK_PERIOD)
        port map (
            clk50MHz => clk50MHz,
            rst      => rst,
            button_n => button(1),
            clk_out  => clk_gen_out); 
			
    U_COUNTER : counter 
	port map (
        clk    => clk_gen_out,
        rst    => rst,
		enable => '1',
		done   => finish,
        output => counter_out);	
		
	XOR_PUF : entity work.XOR_Arbiter_PUF
		port map (
			challenge  => counter_out or x"0000",
			rst  => rst,
			clk => clk_gen_out,
			response => response -- should get tied to ouput ram
			);
			
	--In_RAM : entity work.PUF_RAM_1
		--port map (
			--address => counter_out,
			--clock  => clk_gen_out,
			--data => x"0000000000000000",
			--wren => '0',
			--q => challenge
			--);

	
	

end STR;