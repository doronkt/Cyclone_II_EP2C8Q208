-- USB to TTL over UART protocol
-- fixed baudrate 115200
-- clk freq 50MHz
-- unit is wrapped with avalon mm interface with logic similar to the UART qsys component
-- automatic configuration - no parity bit, 

-- Tx_Machine
-- Designer : Doron Kopit
-- Version: 0.2


library ieee;
library work;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.uart_pkg.all;

ENTITY TX_MACHINE IS
PORT(
clk					: in	std_logic;
rstn					: in	std_logic;

databits_local 		: in 	unsigned(3 downto 0);
stopBits_local		: in	stopbitsType;
divisor				: in 	integer;

txReady				: in	std_logic;
txdata				: in	std_logic_vector(8 downto 0);

txd					: out	std_logic;
readyfordata_n		: out std_logic
);
END TX_MACHINE;

ARCHITECTURE TX_ARC OF TX_MACHINE IS
-- SIGNALS
signal bitCount				:	unsigned(3 downto 0);				--	 0111 <=>7, 1000 <=>8, 1001 <=> 9
signal stopBitCount			:	stopbitsType; 								-- '0'<=>1, '1'<=>2
signal state, nextState		:	UART_State;
signal counter 				: 	unsigned(12 downto 0);
signal txShReg					:	std_logic_vector(8 downto 0);

BEGIN

sync_proc : process (clk, rstn)
begin
	if rstn='0' then
		counter 		<= (others=>'0');
		bitCount 		<= (others=>'0');
		stopBitCount 	<= (others=>'0');
		txd 			<= '1';
		state			<= IDLE;
		
		txShReg <= (others=>'0');	
		
		readyfordata_n <= '1';
		
	elsif (rising_edge(clk)) then
		-- counter increment
		counter <= counter+1;
		if to_integer(counter)=divisor then
			counter <= (others => '0');
			bitCount <= bitCount + 1;
			stopBitCount <= stopBitCount + 1;
			if bitCount=databits_local then
				bitCount <= (others =>'0');
			end if;
			if stopBitCount=stopBits_local then
				stopBitCount <= (others=>'0');
			end if;
		end if;
		
		state <= nextState;
		
		case state is
			--============ IDLE state ============--
			when IDLE =>
				counter <= (others=>'0');
				bitCount <= (others=>'0');
				stopBitCount <= (others=>'0');
				txd <= '1';
				readyfordata_n <= '0';
			
			--============ Tx_StartBit ============--
			when Tx_StartBit =>
				txd <= '0';
				txShReg <= txdata;
				bitCount <= (others=>'0');
				stopBitCount <= (others=>'0');
			--============ Tx ============--
			when Tx =>
				txd <= txShReg(to_integer(bitCount));
				readyfordata_n	<= '1';
				stopBitCount <= (others=>'0');	
			--============ Tx_StopBit ============--		
			when Tx_StopBit =>
				txd <= '1';
				txShReg <= (others=>'0');
				bitCount <= (others=>'0');
			--============ Others ============--		
			when others =>
				counter <= (others=>'0');
				bitCount <= (others=>'0');
				stopBitCount <= (others=>'0');
		end case;
	end if;
end process sync_proc;

async_proc : process (state, bitCount, counter, txReady)
begin

case state is 
			--============ IDLE state ============--
			when IDLE =>
					nextState <= IDLE;
					if txReady='1' then
						nextState <= Tx_StartBit;
					end if;
						
			--============ Tx_StartBit ============--
			when Tx_StartBit =>
				nextState <= Tx_StartBit;
				if to_integer(counter)=divisor then
					nextState <= Tx;
				end if;
		
			--============ Tx ============--
			when Tx =>
				nextState <= Tx;
				if to_integer(counter)=divisor and bitCount=databits_local then
					nextState <= Tx_StopBit;
				end if;
			
			--============ Tx_StopBit ============--		
			when Tx_StopBit =>
				nextState <= Tx_StopBit;
				if to_integer(counter)=divisor and stopBitCount=stopBits_local then
					nextState <= IDLE;
				end if;
						--============ Others ============--		
			when others =>
				nextState <= IDLE;
		end case;
end process async_proc;
END TX_ARC;