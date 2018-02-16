-- testbench
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;
use work.all;

entity testbench is 
end testbench;

architecture struct of testbench is
signal clk50Mhz				:	std_logic;
signal rstn					:	std_logic;  
signal avmm_address			:	std_logic_vector(5 downto 0);  
signal avmm_write			:	std_logic;
signal avmm_writedata		:	std_logic_vector(7 downto 0);
signal avmm_waitrequest		:	std_logic;  
signal rs					:	std_logic;
signal rw					:	std_logic;
signal en					:	std_logic;
signal db					:	std_logic_vector(7 downto 0);

component  stimulus is
Port(
clk50Mhz 		: out	std_logic;
rstn			: out	std_logic;
-- master avalon-mm
avmm_address	: out	std_logic_vector(5 downto 0);
avmm_write		: out	std_logic;
avmm_writedata	: out	std_logic_vector(7 downto 0);
avmm_waitrequest: in	std_logic;
-- io
rs				: in	std_logic;
rw				: in	std_logic;
en				: in	std_logic;
db				: in	std_logic_vector(7 downto 0)
);
end component;

component LCD_DRIVER IS
PORT(
sys_clk_50M	:	in		std_logic;
rstn_sys_clk		:	in		std_logic;

-- s1
avmm_address		:	in		std_logic_vector(5 downto 0);
avmm_write			:	in		std_logic;
avmm_writedata		:	in		std_logic_vector(7 downto 0);
avmm_waitrequest	: 	out	std_logic;
avmm_read			:	in		std_logic;
avmm_readdata		:	out		std_logic_vector(7 downto 0);

-- lcd_hw_io
rs			:	out	std_logic;
rw			:	out	std_logic;
en			:	out	std_logic;
db			:	out	std_logic_vector(7 downto 0)
);
end component;

begin
dut_inst : LCD_DRIVER
port map (
	sys_clk_50M			=> clk50Mhz		,
	rstn_sys_clk		=> rstn			,
	
	avmm_address		=> avmm_address	,
	avmm_write			=> avmm_write		,
	avmm_writedata		=> avmm_writedata	,
	avmm_waitrequest	=> avmm_waitrequest,
	avmm_read			=> '0',
	avmm_readdata		=> open,
	rs					=> rs				,
	rw					=> rw				,
	en					=> en				,
	db					=> db				
);

stimulus_inst : stimulus
port map (
	clk50Mhz 			=> clk50Mhz		,
	rstn				=> rstn			,
	avmm_address		=> avmm_address	,
	avmm_write			=> avmm_write		,
	avmm_writedata		=> avmm_writedata	,
	avmm_waitrequest	=> avmm_waitrequest,
	rs					=> rs				,
	rw					=> rw				,
	en					=> en				,
	db                  => db				
);
end struct;


