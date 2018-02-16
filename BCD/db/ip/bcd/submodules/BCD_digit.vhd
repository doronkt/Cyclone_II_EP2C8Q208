library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Designer: Doron Kopit
-- Title: BCD Controller
-- Inputs:
-- Outputs:
-- 

entity BCD_digit is port
(
	clk 			: in 	std_logic;
	rstn 			: in 	std_logic;
	
	digit_in 	: in 	std_logic_vector(3 downto 0);
	digit_out 	: out std_logic_vector (7 downto 0);
	error			: out std_logic	
);
end BCD_digit;

architecture decoder_beh of BCD_digit is
signal digit_out_sig : std_logic_vector (7 downto 0);
begin
digit_out <= digit_out_sig;
process (clk, rstn)
begin
	if rstn='0' then
		digit_out_sig <= (others=>'0');
	elsif rising_edge(clk) then
		case digit_in is
		-- active low, -[1][g][f][e][d][c][b][a]
			when "0000" => digit_out_sig <= "11000000"; 	--0
			when "0001" => digit_out_sig <= "11111001";	--1
			when "0010" => digit_out_sig <= "10100100";	--2
			when "0011" => digit_out_sig <= "10110000";	--3
			when "0100" => digit_out_sig <= "10011001";	--4
			when "0101" => digit_out_sig <= "10010010";	--5
			when "0110" => digit_out_sig <= "10000010";	--6
			when "0111" => digit_out_sig <= "11111000";	--7
			when "1000" => digit_out_sig <= "10000000";	--8
			when "1001" => digit_out_sig <= "10011000";	--9
			when "1010" => digit_out_sig <= "10001000";	--A
			when "1011" => digit_out_sig <= "10000011";	--B
			when "1100" => digit_out_sig <= "11000110";	--C
			when "1101" => digit_out_sig <= "10100001";	--D
			when "1110" => digit_out_sig <= "10000110";	--E
			when "1111" => digit_out_sig <= "10001110";	--F
			when others => digit_out_sig <= "00000000";
		end case;
	end if;
end process;

end decoder_beh;