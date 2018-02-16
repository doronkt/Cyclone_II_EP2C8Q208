library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd_clk_gen is port(

	sys_clk_50M : in std_logic;
	sys_rstn		: in std_logic;
	
	lcd_clk		: out std_logic;
	lcd_rstn		: out std_logic
);
end lcd_clk_gen;

architecture beh of lcd_clk_gen is
signal counter : unsigned(7 downto 0);
signal period_2 : unsigned(7 downto 0) := x"63";

signal lcd_clk_sig : std_logic;

begin

lcd_clk <= lcd_clk_sig;

lcd_clk_proc: process (sys_rstn, sys_clk_50M) is
begin
if sys_rstn='0' then
	counter <= (others=>'0');
	lcd_rstn <='0';
	lcd_clk_sig <='0';
	
elsif rising_edge(sys_clk_50M) then
	counter<= counter + 1;
	lcd_rstn <= sys_rstn;
	if counter = period_2 then
		counter <= (others=>'0');
		lcd_rstn <= sys_rstn;
		lcd_clk_sig <= not(lcd_clk_sig);
	end if;
end if;		
end process;

end beh;