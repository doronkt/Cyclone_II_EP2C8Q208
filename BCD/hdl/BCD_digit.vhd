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
		error <= '0';
	elsif rising_edge(clk) then
		case digit_in is
		-- active low, -[1][g][f][e][d][c][b][a]
			when "0000" => digit_out_sig <= "11000000";	error <= '0'; --0 	: C0
			when "0001" => digit_out_sig <= "11111001";	error <= '0'; --1	: F9
			when "0010" => digit_out_sig <= "10100100";	error <= '0'; --2	: A4
			when "0011" => digit_out_sig <= "10110000";	error <= '0'; --3	: B0
			when "0100" => digit_out_sig <= "10011001";	error <= '0'; --4	: 99
			when "0101" => digit_out_sig <= "10010010";	error <= '0'; --5	: 92
			when "0110" => digit_out_sig <= "10000010";	error <= '0'; --6	: 82
			when "0111" => digit_out_sig <= "11111000";	error <= '0'; --7	: F8
			when "1000" => digit_out_sig <= "10000000";	error <= '0'; --8	: 80
			when "1001" => digit_out_sig <= "10011000";	error <= '0'; --9	: 98 
			when "1010" => digit_out_sig <= "10001000";	error <= '0'; --A	: 88
			when "1011" => digit_out_sig <= "10000011";	error <= '0'; --B	: 83
			when "1100" => digit_out_sig <= "11000110";	error <= '0'; --C	: C6
			when "1101" => digit_out_sig <= "10111111";	error <= '0'; --D	: A1 - "-"
			when "1110" => digit_out_sig <= "10000110";	error <= '0'; --E	: 86 - (For Error)
			when "1111" => digit_out_sig <= "11111111";	error <= '0'; --F	: FF - blank
			when others => digit_out_sig <= "00000000"; error <= '1';
		end case;
	end if;
end process;

end decoder_beh;