library ieee;	
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

entity stimuli is
port (
	clk : out std_logic;
	rstn : out std_logic;
	number : out std_logic_vector(31 downto 0)
);
end stimuli;

architecture stim of stimuli is

CONSTANT period : TIME := 20 ns;
SIGNAL clk_sig : STD_LOGIC := '0';
SIGNAL rstn_sig : STD_LOGIC;
SIGNAL number_sig : std_logic_vector(31 downto 0);

begin
clk <= clk_sig;
rstn <= rstn_sig;
number <= number_sig;

generate_clock : PROCESS (clk_sig)
BEGIN -- process
clk_sig <= NOT clk_sig AFTER period/2; -- this necessitates init value
END PROCESS;

rstn_sig <= '0',
 '1' AFTER 10 ns;
 
stim_proc : process 
begin
	wait until rstn_sig='1';
	wait for 100 ns;
	wait until clk_sig='1';
	number_sig <= std_logic_vector(to_unsigned(16#ABCDEF0#, number_sig'length));
	wait for 700 ns;
	number_sig <= std_logic_vector(to_unsigned(16#A5A5A5A#, number_sig'length));
	wait;	
end process stim_proc;
end stim; 