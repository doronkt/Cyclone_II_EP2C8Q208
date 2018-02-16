-- stimulus
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

entity stimulus is
Port(
clk50Mhz 		: out	std_logic := '0';
rstn			: out	std_logic:='0';
-- master avalon-mm
avmm_address	: out	std_logic_vector(5 downto 0) := (others=>'0');
avmm_write		: out	std_logic :='0';
avmm_writedata	: out	std_logic_vector(7 downto 0):= (others=>'0');
avmm_waitrequest: in	std_logic;
-- io
rs				: in	std_logic;
rw				: in	std_logic;
en				: in	std_logic;
db				: in	std_logic_vector(7 downto 0)
);
end stimulus;

architecture stim of stimulus is

CONSTANT period 			: TIME := 20 ns; -- 50Mhz
CONSTANT period_lcd			: TIME := 4 us; -- 250Khz
signal clk50M_sig 			: std_logic := '0';
signal rstn_sig				: std_logic;
signal avmm_address_sig		:	std_logic_vector(5 downto 0); 
signal avmm_write_sig		: 	std_logic;
signal avmm_writedata_sig	: 	std_logic_vector(7 downto 0);
signal avmm_waitrequest_sig :	std_logic;
signal clk250K_sig			: std_logic := '0';

file test_input_file: text open read_mode is "testInput.txt";
file results: text open write_mode is "results.txt";
	
begin
clk50Mhz <= clk50M_sig;
rstn <= rstn_sig;
avmm_waitrequest_sig <= avmm_waitrequest;
avmm_write <= avmm_write_sig;
avmm_address <= avmm_address_sig;
avmm_writedata <= avmm_writedata_sig;

generate_sys_clock : PROCESS (clk50M_sig)
BEGIN -- process
clk50M_sig <= NOT clk50M_sig AFTER period/2; -- this necessitates init value
END PROCESS;



-- RSTN logic
rstn_sig <= '0',
 '1' AFTER 10 ns;
 
 
--  Stimulus logic
stim_proc : process 
variable L_In: line;
variable L_Out: line;
variable avmm_address_var : std_logic_vector(5 downto 0):= (others => '0');
variable avmm_write_var : std_logic;
variable avmm_writedata_var : std_logic_vector(7 downto 0):= (others => '0');
variable spaceVar : character;
begin
report "Test started";
wait until rstn_sig='1';
report "rstn = 1";
wait until rising_edge(clk50M_sig);
report "testing Avalon-MM";
write(L_Out, string'("Avalon-MM Interface"));
writeline(results, L_Out);
write(L_Out, string'("ADDRESS       WRITE       WRITEDATA       WAITREQUEST\t"));
while not endfile(test_input_file) loop
	readline(test_input_file, L_In);
	read(L_In,avmm_address_var);
	read(L_In, spaceVar);
	read(L_In,avmm_write_var);
	read(L_In, spaceVar);
	read(L_In,avmm_writedata_var);
	if (avmm_address_var /= "XXXXXX") then
		report "updating avmm_address";
		avmm_address_sig <= avmm_address_var;
	end if;
	if (avmm_write_var /= 'X') then
		report "updating avmm_write";
		avmm_write_sig <= avmm_write_var;
	end if;
	if (avmm_writedata_var /= "XXXXXXXX") then
		report "updating avmm_writedata";
		avmm_writedata_sig <= avmm_writedata_var;
	end if;
	wait until rising_edge(clk50M_sig);
	write(L_Out, avmm_address_sig, RIGHT, 8);
	write(L_Out, avmm_write_sig, RIGHT, 8);
	write(L_Out, avmm_writedata_sig, RIGHT, 8);
	write(L_Out, avmm_waitrequest_sig, RIGHT, 8);
	writeline(results, L_Out);
	wait until rising_edge(clk50M_sig);
	if avmm_waitrequest_sig = '1' then
		
		avmm_write_sig <= '0';
	end if;
	wait for 100 ns;
end loop;
file_close(test_input_file);
file_close(results);
avmm_write_sig <= '0';
avmm_address_sig <= "111111";
wait;
end process;
end stim;