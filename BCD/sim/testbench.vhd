library ieee;	
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture struct of testbench is
signal digits		:	std_logic_vector(7 downto 0);
signal en			:	std_logic_vector(7 downto 0);
signal error		:	std_logic;

signal clk_int		:	std_logic;
signal rstn_int		:	std_logic;
signal number_int	:	std_logic_vector(31 downto 0);

component stimuli is
port (
	clk 		: out std_logic;
	rstn 		: out std_logic;
	number 		: out std_logic_vector(31 downto 0)
);
end component;

component BCD_top is
port (
	clk 			: in std_logic;
	rstn 			: in std_logic;
	number 			: in std_logic_vector(31 downto 0);
	
	digits 			: out std_logic_vector(7 downto 0);
	en				: out std_logic_vector(7 downto 0);	
	error		 	: out std_logic
);
end component;
begin

stim_0 : stimuli port map (
clk => clk_int,
rstn => rstn_int,
number => number_int
);

dut_0 : BCD_top port map(
clk			=> clk_int,
rstn 		=> rstn_int,
number 		=> number_int,
digits 		=> digits,
en			=> en,
error		=> error
);

end struct;
