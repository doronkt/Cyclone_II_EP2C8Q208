LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY LCD_DRIVER IS
PORT(
sys_clk_50M	:	in		std_logic;
rstn_sys_clk		:	in		std_logic;

lcd_clk_250K	: in	std_logic;
rstn_lcd_clk	: in	std_logic;

-- s1
avmm_address		:	in		std_logic_vector(4 downto 0);
avmm_write			:	in		std_logic;
avmm_writedata		:	in		std_logic_vector(7 downto 0);
avmm_waitrequest	: 	out	std_logic;
avmm_read			:	in		std_logic;
avmm_readdata		:	out	std_logic_vector(7 downto 0);

-- lcd_hw_io
rs			:	out	std_logic;
rw			:	out	std_logic;
en			:	out	std_logic;
db			:	out	std_logic_vector(7 downto 0)
);
end LCD_DRIVER;
ARCHITECTURE BEH OF LCD_DRIVER IS

-- lcd helpers
signal index_char		: integer range 0 to 31;

type State_TYPE is (SCREEN_CLEAR, CURSOR_RETURN, INPUT_SET, DISPLAY_SWITCH, SHIFT, FUNCTION_SET, DATA_WRITE, DDRAM_AD_SET, NULL_STATE);
type LCD_TEXT_ARRAY is array(31 downto 0) of std_logic_vector(7 downto 0);
signal currentState 	:	State_TYPE;
signal nextState		:	State_TYPE;

-- counters
signal timer_1_64ms 	: unsigned(8 downto 0);
signal timer_40us		: unsigned(3 downto 0);
signal en_sig			: std_logic;

-- avmm generated signals
signal LCD_text_bank :	LCD_TEXT_ARRAY;
signal datavalid		:	std_logic;

signal timer_1_64ms_Full : unsigned(11 downto 0);
signal timer_1_64ms_toggle : unsigned(11 downto 0);
alias timer_full : unsigned(8 downto 0)
	is timer_1_64ms_Full(8 downto 0);
alias timer_toggle : unsigned(8 downto 0)
	is timer_1_64ms_toggle(8 downto 0);

BEGIN

en <= en_sig and datavalid;
timer_1_64ms_Full <= x"19A";
timer_1_64ms_toggle <= x"0CD";



sync: process (rstn_lcd_clk, lcd_clk_250K)
begin
if rstn_lcd_clk='0' then
	currentState <= FUNCTION_SET;
	timer_1_64ms <= (others=>'0');
	timer_40us <= (others=>'0');
	en_sig		<= '0';
	
elsif rising_edge(lcd_clk_250K) then
	currentState <= nextState;
	timer_40us <= timer_40us + 1;
	if timer_40us=x"A" then
		timer_40us<= (others=>'0');
		en_sig <='1';
	elsif timer_40us=x"5" then
		en_sig <= '0';
	end if;
	
	case currentState is
			when SCREEN_CLEAR		=>
				rs <= '0';
				rw <= '0';
				db	<= x"01";
				timer_40us <= (others=>'0');
				timer_1_64ms <= timer_1_64ms + 1;
				if timer_1_64ms = timer_full then
					timer_1_64ms <= (others=>'0');
					en_sig <= '1';
				elsif timer_1_64ms >= timer_toggle then
					en_sig <= '0';
				else
					en_sig <='1';
				end if;
				
				index_char <= 0;
				
			when CURSOR_RETURN	=>
				rs <= '0';
				rw <= '0';
				db <= x"03";
				timer_40us <= (others=>'0');
				timer_1_64ms <= timer_1_64ms + 1;
				if timer_1_64ms = timer_full then
					timer_1_64ms <= (others=>'0');
					en_sig <= '1';
				elsif timer_1_64ms >= timer_toggle then
					en_sig <= '0';
				else
					en_sig <= '1';
				end if;
			
			when INPUT_SET			=>
				rs <= '0';
				rw <= '0';
				db	<= x"06";
			
			when DISPLAY_SWITCH	=>
				rs <= '0';
				rw <= '0';
				db	<= x"0C";
			
			when SHIFT				=>
				rs <= '0';
				rw <= '0';
				db	<= x"1F";
			
			when FUNCTION_SET		=>
				rs <= '0';
				rw <= '0';
				db	<= x"38";
				
			when DDRAM_AD_SET 	=>
				rs <= '0';
				rw <= '0';
				db <= x"C0";
				
			when DATA_WRITE		=>
				rs <= '1';
				rw <= '0';
				db <= LCD_text_bank(index_char);
				
				if timer_40us=x"A" then
					if index_char = 31 then
						index_char <= 0;
					else 	
						index_char <= index_char + 1;
					end if;
				end if;
				
				timer_1_64ms <= (others=>'0');
	
			when NULL_STATE		=>
				rs <= '0';
				rw <= '0';
				db <= x"00";
				timer_1_64ms <= (others=>'0');
				timer_40us <= (others=>'0');
				en_sig <= '0';
		
			when others =>
				rs <= '1';
				rw <= '0';
				db <= x"00";
				timer_1_64ms <= (others=>'0');
				timer_40us <= (others=>'0');
				en_sig <= '0';
				
	end case;
end if;			
end process sync;

async: process (currentState,index_char, timer_40us, timer_1_64ms)
begin
	case currentState is
			when SCREEN_CLEAR		=>
				nextState <= SCREEN_CLEAR;
				if datavalid='1' and timer_1_64ms = timer_full then -- 1.64ms
					nextState <= DATA_WRITE;	
				end if;
						
			when CURSOR_RETURN 	=>
			nextState <= CURSOR_RETURN;
				if timer_1_64ms = timer_full then -- 1.64ms
					nextState <= DATA_WRITE;
				end if;
				
			when INPUT_SET			=>
				nextState <= INPUT_SET;
				if timer_40us = x"A" then -- 40us
					nextState <= SCREEN_CLEAR;
				end if;
					
			when DISPLAY_SWITCH	=>
				nextState <= DISPLAY_SWITCH;
				if timer_40us = x"A" then -- 40us
					nextState <= INPUT_SET;
				end if;
			when SHIFT				=>
				nextState <= SHIFT;
				if timer_40us = x"A" then -- 40us
					nextState <= SCREEN_CLEAR;
				end if;
			when DDRAM_AD_SET =>
				nextState <= DDRAM_AD_SET;
				if timer_40us = x"A" then -- 40us
					nextState <= DATA_WRITE; 
				end if;
			when FUNCTION_SET		=>
				nextState <= FUNCTION_SET;
				if timer_40us = x"A" then -- 40us
					nextState <= DISPLAY_SWITCH;
				end if;
				
			when DATA_WRITE		=> 
				nextState <= DATA_WRITE;
				
				if index_char = 15 and timer_40us=x"A" then
					nextState <= DDRAM_AD_SET;
				elsif index_char = 31 and timer_40us=x"A" then
					nextState <= NULL_STATE;
				end if;
				
			when NULL_STATE		=>
					nextState <= NULL_STATE;
					
			when others =>
				nextState <= NULL_STATE;
			end case;

end process async;

avmm_proc: process (sys_clk_50M, rstn_sys_clk)
begin
if rstn_sys_clk='0' then
	for i in 0 to 31 loop
		LCD_text_bank(i) <= x"42"; --$
	end loop;
	avmm_waitrequest <='1';
	datavalid <= '0';
elsif rising_edge(sys_clk_50M) then
	avmm_waitrequest <= '0';
	if avmm_write='1' then
		avmm_waitrequest <='1';
		LCD_text_bank(to_integer(unsigned(avmm_address))) <= avmm_writedata;
		if avmm_address="11111" then
			datavalid <= '1';
		end if;
	elsif avmm_read='1' then
		avmm_waitrequest <='1';
		avmm_readdata <= LCD_text_bank(to_integer(unsigned(avmm_address)));
	end if;
end if;
end process avmm_proc;
END BEH;
