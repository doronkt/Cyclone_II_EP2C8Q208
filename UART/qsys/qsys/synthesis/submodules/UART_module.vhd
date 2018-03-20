-- USB to TTL over UART protocol
-- fixed baudrate 115200
-- clk freq 50MHz
-- unit is wrapped with avalon mm interface with logic similar to the UART qsys component
-- automatic configuration - no parity bit, 

-- Designer : Doron Kopit
-- Version: 0.1


library ieee;
library work;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.uart_pkg.all;

ENTITY UART_module	IS 
GENERIC (
		baudrate	: BAUD := 115200;
		dataBits	: integer range 7 to 9 := 8;
		stopBits : integer range 1 to 2 := 1
);
PORT(
	clk 	:	in		std_logic;
	rstn 	:	in		std_logic;
	-- uart io
	rxd	: in		std_logic;
	txd	: out		std_logic;
	
	-- indication
	dataavailable_n 		: out std_logic;
	readyfordata_n		: out std_logic;
	
	-- avalon-mm:
	avmm_address 		: in	std_logic;
	avmm_read			: in	std_logic;
	avmm_readdata		: out	std_logic_vector(15 downto 0);
	avmm_write			: in	std_logic;
	avmm_writedata		: in	std_logic_vector(15 downto 0);
	avmm_waitrequest	: out	std_logic
);
END UART_module;

ARCHITECTURE BEHAVE OF UART_module IS 
--SIGNALS

signal divisor 				: 	integer;
signal midpoint				:	integer;
signal databits_local		:	unsigned(3 downto 0);
signal stopBits_local		:	stopbitsType;
signal txdata, rxdata		:	std_logic_vector(8 downto 0);
signal txReady, rxReady		:	std_logic;
signal rxReadyAnd			:	std_logic;
signal avmm_writedata_sig	:	std_logic_vector(8 downto 0);
-- COMPONENTS

COMPONENT TX_MACHINE IS
PORT(
clk					: in	std_logic;
rstn					: in	std_logic;

databits_local 	: in 	unsigned(3 downto 0);
stopBits_local		: in	stopbitsType;
divisor				: in 	integer;

txReady				: in	std_logic;
txdata				: in	std_logic_vector(8 downto 0);

txd					: out	std_logic;
readyfordata_n		: out std_logic
);
END COMPONENT;

COMPONENT RX_MACHINE IS
PORT(
clk					: in	std_logic;
rstn				: in	std_logic;

databits_local 		: in 	unsigned(3 downto 0);
stopBits_local		: in	stopbitsType;
divisor				: in 	integer;
midpoint			: in	integer;

rxready				: out	std_logic;
rxdata				: out	std_logic_vector(8 downto 0);

rxd					: in	std_logic;
dataavailable_n		: out 	std_logic
);
END COMPONENT;

BEGIN

divisor <= baudrateDivisor(baudrate);
midpoint <= baudrateMidpoint(baudrate);
databits_local <= translateDataBits(dataBits);
stopBits_local <= translateStopBits(stopBits);
avmm_writedata_sig <= avmm_writedata(8 downto 0);

tx_0 : TX_MACHINE PORT MAP (
clk					=> clk,					
rstn					=> rstn,	
databits_local		=> databits_local,
stopBits_local		=> stopBits_local,
divisor				=> divisor,	
txReady				=> txReady,	
txdata				=> txdata,	
txd					=> txd,	
readyfordata_n		=> readyfordata_n
);


rx_0 : RX_MACHINE PORT MAP (
clk					=> clk,
rstn					=> rstn,
databits_local 	=> databits_local,
stopBits_local		=> stopBits_local,
divisor				=> divisor,
midpoint				=> midpoint,
rxready				=> rxready,
rxdata				=> rxdata,
rxd					=> rxd,
dataavailable_n	=> dataavailable_n
);

avalon_proc: process (clk, rstn)
begin
	if rstn='0' then	
		avmm_readdata <= (others=>'0');
		avmm_waitrequest <='1';
		txReady <= 	'0';
		rxReadyAnd <= '0';
		txdata <= (others=>'0');
	elsif rising_edge(clk) then
		avmm_waitrequest <= '0';
		txReady <= '0';
		if rxReady='1' then
			rxReadyAnd  <= '1';
		end if;
		if avmm_write='1' and avmm_address='0' then 
			avmm_waitrequest <= '1';
			txdata <= avmm_writedata_sig;
			txReady <= '1';
		elsif avmm_read='1'  and avmm_address='1' and  rxReadyAnd='1' then
				avmm_waitrequest <= '1';
				avmm_readdata(8 downto 0) <= rxdata;
				avmm_readdata(15 downto 9) <= (others=>'1');
				rxReadyAnd <='0';
		elsif avmm_read='1'  and avmm_address='1' and  rxReadyAnd='0' then
				avmm_waitrequest <= '1';
				avmm_readdata <= (others=>'0');
		end if;
	end if;
end process avalon_proc;
END BEHAVE;