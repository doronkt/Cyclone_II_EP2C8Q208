-- testbench
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;
use work.all;
use work.uart_pkg.all;

entity testbench is 
end testbench;

architecture struct of testbench is

-- signals
signal clk_sig					:	std_logic;
signal rstn_sig				    :	std_logic;
signal rxd_sig				    :	std_logic;
signal txd_sig				    :	std_logic;
signal avmm_address_sig			:	std_logic;	
signal avmm_read_sig			:	std_logic;	
signal avmm_readdata_sig		:	std_logic_vector(15 downto 0);		
signal avmm_write_sig			:	std_logic;	
signal avmm_writedata_sig		:	std_logic_vector(15 downto 0);		
signal avmm_waitrequest_sig		:	std_logic;		
signal dataavailable_n_sig		:	std_logic;
signal readyfordata_n_sig		:	std_logic;



-- components
COMPONENT UART_module	IS 
GENERIC (
		baudrate	: BAUD := 115200;
		dataBits	: integer range 7 to 9 := 8;
		stopBits : integer range 1 to 2 := 1
);
PORT(
	clk 				:	in		std_logic;
	rstn 				:	in		std_logic;
	-- uart io
	rxd					: in		std_logic;
	txd					: out		std_logic;
	
	-- indication
	dataavailable_n 	: out std_logic;
	readyfordata_n		: out std_logic;
	
	-- avalon-mm:
	avmm_address 		: in	std_logic;
	avmm_read			: in	std_logic;
	avmm_readdata		: out	std_logic_vector(15 downto 0);
	avmm_write			: in	std_logic;
	avmm_writedata		: in	std_logic_vector(15 downto 0);
	avmm_waitrequest	: out	std_logic
);
END COMPONENT;

COMPONENT stimulus is
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
end COMPONENT;

-- begin
begin
-- port maps
dut_inst: UART_module 
generic map (
		baudrate	=>  115200,
		dataBits	=> 8,
		stopBits 	=> 1
)
port map (
clk 	=> clk_sig,		
rstn 	=> rstn_sig,
rxd		=> rxd_sig,
txd		=> txd_sig,

dataavailable_n => dataavailable_n_sig,
readyfordata_n	=> readyfordata_n_sig,

-- avalon-mm:
avmm_address 		=> avmm_address_sig,
avmm_read			=> avmm_read_sig,
avmm_readdata		=> avmm_readdata_sig,
avmm_write			=> avmm_write_sig, 
avmm_writedata		=> avmm_writedata_sig,
avmm_waitrequest	=> avmm_waitrequest_sig
);

stimulus_inst: stimulus
generic map (
		baudrate	=>  115200,
		dataBits	=> 8,
		stopBits 	=> 1
)
port map (
clk 	=> clk_sig,		
rstn 	=> rstn_sig,
rxd		=> rxd_sig,
txd		=> txd_sig,

dataavailable_n => dataavailable_n_sig,
readyfordata_n	=> readyfordata_n_sig,

-- avalon-mm:
avmm_address 		=> avmm_address_sig,
avmm_read			=> avmm_read_sig,
avmm_readdata		=> avmm_readdata_sig,
avmm_write			=> avmm_write_sig, 
avmm_writedata		=> avmm_writedata_sig,
avmm_waitrequest	=> avmm_waitrequest_sig
);
end struct;
--end 
