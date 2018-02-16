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

signal digit_in_signal 	: std_logic_vector(3 downto 0);
signal error_signal 		: std_logic;
signal counter_error 	: std_logic;
signal en_signal			: std_logic_vector(7 downto 0);
signal clk_intr			: std_logic;
signal clk_cntr			: unsigned(30 downto 0);
signal counter				: unsigned(2 downto 0);
alias flip					: unsigned(27 downto 0) is clk_cntr(27 downto 0);

begin
error <= error_signal or counter_error;
en <= en_signal;

counter_proc: process (clk, rstn) 
begin
	if rstn='0' then
		clk_cntr <= (others=>'0');
		clk_intr <= '0';
	elsif rising_edge(clk) then
		clk_cntr <= clk_cntr + 1;
		if flip=x"000F000" then
			clk_intr <= not(clk_intr);
			clk_cntr <= (others=>'0');
		end if;
	end if;
end process;

mux_proc: process (clk_intr, rstn)
begin
	if	rstn='0' then
		en_signal <= (others=>'1');
		counter_error <= '0';
		digit_in_signal <= (others=>'0');
		counter <= (others=>'0');

	elsif rising_edge(clk_intr) then
		counter<= counter + 1;
		case counter is
			when "000" 	=> digit_in_signal <= number(3 downto 0); 	en_signal <= "11111110"; counter_error <='0';
			when "001" 	=> digit_in_signal <= number(7 downto 4);	en_signal <= "11111101"; counter_error <='0';
			when "010" 	=> digit_in_signal <= number(11 downto 8); 	en_signal <= "11111011"; counter_error <='0';
			when "011" 	=> digit_in_signal <= number(15 downto 12); en_signal <= "11110111"; counter_error <='0';
			when "100" 	=> digit_in_signal <= number(19 downto 16); en_signal <= "11101111"; counter_error <='0';
			when "101" 	=> digit_in_signal <= number(23 downto 20); en_signal <= "11011111"; counter_error <='0';
			when "110" 	=> digit_in_signal <= number(27 downto 24); en_signal <= "10111111"; counter_error <='0';
			when "111" 	=> digit_in_signal <= number(31 downto 28); en_signal <= "01111111"; counter_error <='0';
			when others => digit_in_signal <= "1111"; 				en_signal <= "01010101"; counter_error <='1'; 
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