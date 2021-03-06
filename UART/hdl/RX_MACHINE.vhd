-- USB to TTL over UART protocol
-- fixed baudrate 115200
-- clk freq 50MHz
-- unit is wrapped with avalon mm interface with logic similar to the UART qsys component
-- automatic configuration - no parity bit, 

-- Rx_Machine
-- Designer : Doron Kopit
-- Version: 0.1


library ieee;
library work;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.uart_pkg.all;

ENTITY RX_MACHINE IS
PORT(
clk					: in	std_logic;
rstn					: in	std_logic;

databits_local 	: in 	unsigned(3 downto 0);
stopBits_local		: in	stopbitsType;
divisor				: in 	integer;
midpoint				: in	integer;

rxready				: out	std_logic;
rxdata				: out	std_logic_vector(8 downto 0);

rxd					: in	std_logic;
dataavailable_n	: out std_logic
);
END RX_MACHINE;

ARCHITECTURE RX_ARC OF RX_MACHINE is 
-- SINGALS
signal bitCount				:	unsigned(3 downto 0);				--	 0111 <=>7, 1000 <=>8, 1001 <=> 9
signal stopBitCount			:	stopbitsType; 								-- '0'<=>1, '1'<=>2
signal state, nextState		:	UART_State;
signal counter 				: 	unsigned(12 downto 0);
signal rxShReg					:	std_logic_vector(8 downto 0);

BEGIN
sync_proc : process (clk, rstn)
begin
	if rstn='0' then
		counter 	<= (others=>'0');
		bitCount <= (others=>'0');
		stopBitCount <= (others=>'0');
		state		<= IDLE;
		rxdata <= (others=>'0');	rxShReg <= (others=>'0');	rxready <='0';
		dataavailable_n <= '1';
		
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
				rxready <= '0';
			--============ Rx_StartBit ============--
			when Rx_StartBit =>
				bitCount <= (others => '0');
				rxShReg <= (others => '0');
				rxready <= '0';
				stopBitCount <= (others=>'0');	
				
			--============ Rx ============--
			when Rx =>
				if to_integer(counter)=midpoint then
					rxShReg(to_integer(bitCount)) <= rxd;
				end if;
				stopBitCount <= (others=>'0');	
			--============ Rx_StopBit ============--		
			when Rx_StopBit =>
				if to_integer(counter)=midpoint and rxd='1' then
					rxdata <= rxShReg;
					bitCount <= bitCount + 1;
				elsif to_integer(counter)=divisor and rxd='1' then
					dataavailable_n <= '0';
					rxready <= '1';
				end if;
			
			--============ Others ============--		
			when others =>
				counter <= (others=>'0');
				bitCount <= (others=>'0');
				stopBitCount <= (others=>'0');
		end case;
	end if;
end process sync_proc;

async_proc : process (state, bitCount, counter, rxd)
begin

case state is 
			--============ IDLE state ============--
			when IDLE =>
					nextState <= IDLE;
					if rxd='0' then
						nextState <= Rx_StartBit;
					end if;
						
			--============ Rx_StartBit ============--
			when Rx_StartBit =>
				nextState <= Rx_StartBit;
				if to_integer(counter)=divisor then
					nextState <= Rx;
				end if;
			--============ Rx ============--
			when Rx =>
				nextState <= Rx;
				if to_integer(counter)=divisor and bitCount=databits_local then
					nextState <= Rx_StopBit;
				end if;
			--============ Rx_StopBit ============--		
			when Rx_StopBit =>
				nextState <= Rx_StopBit;
				if rxd='1' and to_integer(counter)=divisor and stopBitCount=stopBits_local then
					nextState <= IDLE;
				end if;
			--============ Others ============--		
			when others =>
				nextState <= IDLE;
		end case;
end process async_proc;

END RX_ARC;