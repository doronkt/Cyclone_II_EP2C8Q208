library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package uart_pkg is

	--=========== TYPES ===========--
	subtype BAUD is integer range 9600 to 115200; -- common and minimized group
	type UART_State  is (Rx_StartBit, Rx, Rx_StopBit, Tx_StartBit, Tx, Tx_StopBit, IDLE);
	subtype databitsType is unsigned(3 downto 0);
	subtype stopbitsType is unsigned(0 downto 0);
	--=========== Constants ===========--
	
	--=========== Functions ===========--
	function baudrateDivisor (rate : BAUD) return integer;
	function baudrateMidpoint (rate: BAUD) return integer;
	function translateDataBits(databits : integer range 7 to 9) return databitsType;
	function translateStopBits(stopbits : integer range 1 to 2) return stopbitsType;

end uart_pkg;

package body uart_pkg is
	--=========== Functions ===========--
	
	-- this function retrieves the integer value for the divisor
	-- clk frequency is known to be 50MHz
	-- returning value-1 due to counter starting from 0 to (value-1)
	function baudrateDivisor (rate : BAUD)
					return integer is
	begin
		if rate=9600 then
			return 5207;
		elsif rate=57600 then
			return 867;
		else -- 115200
			return 433;
		end if;
	end baudrateDivisor;
	
	-- returning value-1 due to counter starting from 0 to (value-1)
	function baudrateMidpoint (rate: BAUD)
					return integer is
	begin
		if rate=9600 then
			return 2603;
		elsif rate = 57600 then
			return 433;
		else --115200
			return 216;
		end if;
	end baudrateMidpoint;
	
	function translateDataBits(databits : integer range 7 to 9)
		return databitsType is
	begin
		if databits=7 then
			return "0110";
		elsif databits=8 then
			return "0111";
		elsif databits=9 then
			return "1000";
		else --all other cases use default 8
			return "0111";
		end if;
	end translateDataBits;
	
	function translateStopBits(stopbits : integer range 1 to 2)
		return stopbitsType is
		variable zero : stopbitsType := "0";
		variable one : stopbitsType := "1";
	begin	
		if stopbits=1 then
			return zero;
		elsif stopbits=2 then
			return one;
		else
			return zero;
		end if;
	end translateStopBits;
end package body uart_pkg;