library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BCD_Avalon_Top is
port (
	clk : in std_logic;
	rstn : in std_logic;
	
	-- avalon-mm - slave configuration
	avmm_address 		: in 	std_logic_vector(2 downto 0);
	avmm_waitrequest	: out std_logic;
	avmm_read			: in	std_logic;
	avmm_readdata		: out	std_logic_vector(31 downto 0);
	avmm_write			: in 	std_logic;
	avmm_writedata		: in 	std_logic_vector(31 downto 0);
	avmm_byteenable	: in	std_logic_vector(3 downto 0); 
	
	enable_pinout		: out std_logic_vector(7 downto 0);
	bcd_pinout			: out std_logic_vector(7 downto 0);
	error	 				: out std_logic
);
end BCD_Avalon_Top;
architecture struct of BCD_Avalon_Top is
-- Components:
----------------
-- BCD_top
component BCD_top is
port (
	clk 			: in std_logic;
	rstn 			: in std_logic;
	number 		: in std_logic_vector(31 downto 0);
	
	digits 		: out std_logic_vector(7 downto 0);
	en				: out std_logic_vector(7 downto 0);	
	error		 	: out std_logic
);
end component;

--===============-
-- signals:
-----------------
constant VersionMajor	: natural := 0;							--	address 0	R
constant VersionMinor	: natural := 10;							--	address 1	R
signal CurrentNumber		: std_logic_vector(31 downto 0);		--	address 2	R/W
signal prevNumber			: std_logic_vector(31 downto 0);		-- address 3	R
signal errorCounter		: unsigned(31 downto 0);				-- address 4 	R
signal debug				: std_logic_vector(31 downto 0);		-- address 5 	R/W

signal enable_sig			: std_logic_vector(7 downto 0);
signal bcd_sig				: std_logic_vector(7 downto 0);
 
signal errorDer			: std_logic;
signal error_sig			: std_logic;
--===============-

begin

error <= error_sig;

bcd_top_0 : BCD_top port map (
	clk => clk,
	rstn => rstn,
	number => currentNumber,
	
	digits => bcd_sig,
	en => enable_sig,
	error => error_sig
);



avalon_proc: process (clk, rstn)
begin
if rstn='0' then
	avmm_readdata 		<= (others =>'0');
	CurrentNumber		<= (others =>'0');
	prevNumber			<= (others =>'0');
	errorCounter 		<= (others =>'0');
	avmm_waitrequest <= '0';
elsif rising_edge(clk) then
	errorDer <= error_sig;
	avmm_waitrequest <= '0';
	if debug=x"ffffffff" then
		enable_pinout	<= "11111001";
		bcd_pinout 		<= "00000110";
	else
		enable_pinout	<= enable_sig;
		bcd_pinout		<= bcd_sig;
	end if;
	
	if (avmm_write='1') and (avmm_byteenable="1111") then
	avmm_waitrequest <= '1';
		case avmm_address is
			when "010" => prevNumber <= currentNumber; currentNumber <= avmm_writedata;
			when "101" => debug <= avmm_writedata;
			when others => errorCounter <= errorCounter + 1;
		end case;
	end if;
	if (avmm_read='1') and (avmm_byteenable="1111") then
	avmm_waitrequest <= '1';
		case avmm_address is
			when "000" 	=>	avmm_readdata <= std_logic_vector(to_unsigned(VersionMajor, avmm_readdata'length));
			when "001" 	=>	avmm_readdata <= std_logic_vector(to_unsigned(VersionMinor, avmm_readdata'length));
			when "010" 	=>	avmm_readdata <= CurrentNumber;
			when "011" 	=>	avmm_readdata <= prevNumber;
			when "100" 	=>	avmm_readdata <= std_logic_vector(errorCounter);
			when "101"	=> avmm_readdata <= debug;
			when others =>	avmm_readdata <= (others => '1'); errorCounter <= errorCounter + 1;
		end case;
	end if;
	if errorDer='1' and error_sig='0' then
		errorCounter <= errorCounter+1;
	end if;
end if;	
end process avalon_proc;

end struct;