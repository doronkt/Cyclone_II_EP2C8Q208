-- stimulus
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

-- packages
use work.uart_pkg.all;

entity stimulus is
generic(
		baudrate	: BAUD := 115200;
		dataBits	: integer range 7 to 9 := 8;
		stopBits : integer range 1 to 2 := 1
);
Port(
clk 			: out	std_logic := '0';
rstn			: out	std_logic:='0';
-- master avalon-mm
avmm_address	: out	std_logic:= '0';
avmm_write		: out	std_logic :='0';
avmm_writedata	: out	std_logic_vector(15 downto 0):= (others=>'0');
avmm_waitrequest: in	std_logic;
avmm_read		: out	std_logic :='0';
avmm_readdata	: in	std_logic_vector(15 downto 0);
-- io
rxd				: out	std_logic :='1';
txd				: in	std_logic;
-- misc.
dataavailable_n	: in	std_logic;
readyfordata_n	: in	std_logic
);
end stimulus;

architecture stim of stimulus is

CONSTANT period 			: TIME := 20 ns; -- 50Mhz

signal clk_sig 				: std_logic := '0';
signal rstn_sig				: std_logic;
-- avalon-mm
signal avmm_address_sig		:	std_logic; 
signal avmm_write_sig		: 	std_logic;
signal avmm_writedata_sig	: 	std_logic_vector(15 downto 0);
signal avmm_waitrequest_sig :	std_logic;
signal avmm_read_sig		:	std_logic;
signal avmm_readdata_sig	:	std_logic_vector(15 downto 0);	
-- i/o
signal rxd_out_sig			:	std_logic := '1';
signal txd_in_sig			:	std_logic := '1';
signal rxdata_sig			:	std_logic_vector(7 downto 0) := (others=>'0');
signal divisor				:	integer;
signal state				:	integer;

file test_input_file: text open read_mode is "testInput.txt";
file results: text open write_mode is "results.txt";
	
begin
clk <= clk_sig;
rstn <= rstn_sig;
avmm_waitrequest_sig <= avmm_waitrequest;
avmm_write <= avmm_write_sig;
avmm_read <= avmm_read_sig;
avmm_address <= avmm_address_sig;
avmm_writedata <= avmm_writedata_sig;
avmm_readdata_sig <= avmm_readdata;

rxd <= rxd_out_sig;
-- 
divisor <= baudrateDivisor(baudrate);

generate_sys_clock : PROCESS (clk_sig)
BEGIN -- process
clk_sig <= NOT clk_sig AFTER period/2; -- this necessitates init value
END PROCESS;

-- RSTN logic
rstn_sig <= '0',
 '1' AFTER 10 ns;
 
--  Stimulus logic
stim_proc : process 

variable L_In				: line;
variable L_Out				: line;
variable avmm_address_var 	: std_logic := '0';
variable avmm_write_var 	: std_logic;
variable avmm_writedata_var : std_logic_vector(15 downto 0):= (others => '0');
variable avmm_read_var		:	std_logic;
variable rxdata_var			:	std_logic_vector(7 downto 0);

variable spaceVar 			: character;

begin
rxdata_sig <= (others=>'0');
avmm_address_sig <= '0';
avmm_read_sig <= '0';
avmm_write_sig <='0';
avmm_writedata_sig <= (others=>'0');

report "Test started";
wait until rstn_sig='1';
report "rstn = 1";

wait until rising_edge(clk_sig);
report "testing UART RX";
----------------------------------------------------------------------------------------------------------
write(L_Out, string'("UART testbench output file"));
writeline(results, L_Out);
write(L_Out, string'("ADDRESS"), LEFT, 8);
write(L_Out, string'("READ"), LEFT, 8);
write(L_Out, string'("WRITE"), LEFT, 8);
write(L_Out, string'("WRITEDATA"), LEFT, 20);
write(L_Out, string'("RXDATA"), LEFT, 10);
write(L_Out, string'("RXD"), LEFT, 8);

writeline(results, L_Out);
while not endfile(test_input_file) loop
	state <= 0;
	readline(test_input_file, L_In);
	-- avmm_address,avmm_read,avmm_write,avmm_writedata,rxdata
	--X,X,X,X,01101011
	read(L_In, avmm_address_var);
	report "avmm_address:" & STD_LOGIC'image(avmm_address_var);
	read(L_In, spaceVar);
	read(L_In, avmm_read_var);
	report "avmm_read:" & STD_LOGIC'image(avmm_read_var);
	read(L_In, spaceVar);
	read(L_In, avmm_write_var);
	report "avmm_write:" & STD_LOGIC'image(avmm_write_var);
	read(L_In, spaceVar);
	read(L_In, avmm_writedata_var);
	report "avmm_writedata:" & integer'image(to_integer(unsigned(avmm_writedata_var)));
	read(L_In, spaceVar);
	read(L_In, rxdata_var);
	report "rxdata:" & integer'image(to_integer(unsigned(rxdata_var)));

	
	-- Priority
	-- 1. RXDATA
	-- 2. avmm_write 
	-- 3. avmm_read
	-------- Priority 1. RXDATA -------------------------
	if  rxdata_var/="XXXXXXXX" then
		rxdata_sig <= rxdata_var;
		avmm_address_sig <= '0';
		avmm_read_sig <= '0';
		avmm_write_sig <='0';
		avmm_writedata_sig <= (others=>'0');
		state <= 1;
		write(L_Out, string'("RXDATA"));
		writeline(results, L_Out);
		-- Start bit
		wait until rising_edge(clk_sig);
		rxd_out_sig	<= '0';
			-- WRITE TO OUTPUTFILE!
			-- ADDRESS	||	READ	||	WRITE	||	WRITEDATA	||	RXDATA	||	RXD	||
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			writeline(results, L_Out);
		-- wait for bit/baudrate
		for i in 0 to divisor loop
			wait until rising_edge(clk_sig);
		end loop;
		-- sending data and wait bit/baudrate
		for i in 0 to 7 loop
			rxd_out_sig <= rxdata_sig(i);
			-- WRITE TO OUTPUTFILE!
			-- ADDRESS	||	READ	||	WRITE	||	WRITEDATA	||	RXDATA	||	RXD	||
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			writeline(results, L_Out);
			for j in 0 to divisor loop
				wait until rising_edge(clk_sig);
			end loop;
		end loop;
		-- Stop Bit		
		for i in 1 to stopBits loop
			rxd_out_sig <= '1';
			-- WRITE TO OUTPUTFILE!
			-- ADDRESS	||	READ	||	WRITE	||	WRITEDATA	||	RXDATA	||	RXD	||
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			writeline(results, L_Out);
			for j in 0 to divisor loop
				wait until rising_edge(clk_sig);
			end loop;
		end loop;
		
		--------Priority 2. avmm_write -------------------------
		elsif avmm_write_var='1' and avmm_address_var='0' then
			avmm_write_sig <= '1';
			avmm_address_sig <='0';
			avmm_writedata_sig <= avmm_writedata_var;
			avmm_read_sig <='0';
			rxd_out_sig <= '1';
			state <= 2;
			write(L_Out, string'("Avalon write"));
			writeline(results, L_Out);
			wait until avmm_waitrequest_sig='1';
			wait until rising_edge(clk_sig);
			avmm_write_sig <= '0';
			
			-- Tx_StartBit
			-- WRITE TO OUTPUTFILE!
			-- ADDRESS	||	READ	||	WRITE	||	WRITEDATA	||	RXDATA	||	RXD	||
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			writeline(results, L_Out);
			
			for i in 0 to divisor loop
				wait until rising_edge(clk_sig);
			end loop;			
			-- Tx
			for i in 0 to 7 loop
				for j in 0 to divisor loop
					wait until rising_edge(clk_sig);
				end loop;
			-- WRITE TO OUTPUTFILE!
			-- ADDRESS	||	READ	||	WRITE	||	WRITEDATA	||	RXDATA	||	RXD	||
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			writeline(results, L_Out);	
			end loop;		
			-- Tx_StopBit
			
			-- WRITE TO OUTPUTFILE!
			-- ADDRESS	||	READ	||	WRITE	||	WRITEDATA	||	RXDATA	||	RXD	||
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			writeline(results, L_Out);
			
			for i in 0 to divisor loop
				wait until rising_edge(clk_sig);
			end loop;			
		
		--------Priority 3. avmm_read -------------------------

		elsif (avmm_read_var='1' and avmm_address_var='1') then
			avmm_write_sig <= '0';
			avmm_address_sig <='1';
			avmm_writedata_sig <= (others=>'0');
			avmm_read_sig <='1';
			rxd_out_sig <= '1';
			state <= 3;
			write(L_Out, string'("Avalon read"));
			writeline(results, L_Out);

			wait until avmm_waitrequest_sig='1';
			wait until rising_edge(clk_sig);
			avmm_read_sig <='0';
			
			write(L_Out, avmm_address_sig, LEFT, 8);
			write(L_Out, avmm_read_sig, LEFT, 8);
			write(L_Out, avmm_write_sig, LEFT, 8);
			write(L_Out, avmm_writedata_sig, LEFT, 20);
			write(L_Out, rxdata_sig, LEFT, 10);
			write(L_Out, rxd_out_sig, LEFT, 8);	
			wait until rising_edge(clk_sig);	
			wait for 100 ns;
			
		end if;
	end loop;
file_close(test_input_file);
file_close(results);
avmm_write_sig <= '0';

wait;
end process;

end stim;