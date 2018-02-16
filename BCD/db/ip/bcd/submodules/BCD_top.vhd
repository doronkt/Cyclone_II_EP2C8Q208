library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Designer: Doron Kopit
-- Title: BCD Controller
-- Inputs: clk(50MHz), rstn, number (4 bytes)
-- Outputs: digits (for BCD, pinout), enable pinout, error flag 
-- 

entity BCD_top is
port (
	clk 			: in std_logic;
	rstn 			: in std_logic;
	number 		: in std_logic_vector(31 downto 0);
	
	digits 		: out std_logic_vector(7 downto 0);
	en				: out std_logic_vector(7 downto 0);	
	error		 	: out std_logic
);
end BCD_top;

architecture struct of BCD_top is
-- components
component BCD_digit is port
(
	clk 			: in 	std_logic;
	rstn 			: in 	std_logic;
	
	digit_in 	: in 	std_logic_vector(3 downto 0);
	digit_out 	: out std_logic_vector (7 downto 0);
	error			: out std_logic	
);
end component;

-- signals
signal counter			 	: unsigned (2 downto 0);
signal digit_in_signal 	: std_logic_vector(3 downto 0);
signal error_signal 		: std_logic;
signal counter_error 	: std_logic;
signal en_signal			: std_logic_vector(7 downto 0);

begin
error <= error_signal or counter_error;
en <= en_signal;

counter_proc: process (clk, rstn) 
begin
	if rstn='0' then
		counter <= (others=>'0');
	elsif rising_edge(clk) then
		counter <= counter + 1;
	end if;
end process;

mux_proc: process (clk)
begin
	if rising_edge(clk) then
		case counter is
			when "000" 	=> digit_in_signal <= number(3 downto 0); 	en_signal <= "11111110"; counter_error <='0';
			when "001" 	=> digit_in_signal <= number(7 downto 4);		en_signal <= "11111101"; counter_error <='0';
			when "010" 	=> digit_in_signal <= number(11 downto 8); 	en_signal <= "11111011"; counter_error <='0';
			when "011" 	=> digit_in_signal <= number(15 downto 12); 	en_signal <= "11110111"; counter_error <='0';
			when "100" 	=> digit_in_signal <= number(19 downto 16); 	en_signal <= "11101111"; counter_error <='0';
			when "101" 	=> digit_in_signal <= number(23 downto 20); 	en_signal <= "11011111"; counter_error <='0';
			when "110" 	=> digit_in_signal <= number(27 downto 24); 	en_signal <= "10111111"; counter_error <='0';
			when "111" 	=> digit_in_signal <= number(31 downto 28); 	en_signal <= "01111111"; counter_error <='0';
			when others => digit_in_signal <= "1111"; 					en_signal <= "01010101"; counter_error <='1'; 
		end case;
	end if;
end process;

dig_to_BCD: BCD_digit port map(
	clk 			=>	clk,
	rstn 			=>	rstn,
	digit_in 	=>	digit_in_signal,
	digit_out 	=>	digits,
	error			=> error_signal
);
		
end struct;