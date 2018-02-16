LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY LCD_DRIVER IS
PORT(
sys_clk_50M	:	in		std_logic;
rstn_sys_clk		:	in		std_logic;

-- s1
avmm_address		:	in		std_logic_vector(5 downto 0);
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
signal timer_1_64ms 	: unsigned(16 downto 0);
signal timer_40us		: unsigned(10 downto 0);
signal en_sig			: std_logic;
signal en_sig_d		: std_logic;

signal timer_1_64ms_full : unsigned(19 downto 0);
signal timer_1_64ms_toggle : unsigned(19 downto 0);

signal timer_40us_full : unsigned(11 downto 0);
signal timer_40us_toggle : unsigned(11 downto 0);

alias timer_full_1_64ms : unsigned(16 downto 0)
	is timer_1_64ms_full(16 downto 0);
alias timer_toggle_1_64ms : unsigned(16 downto 0)
	is timer_1_64ms_toggle(16 downto 0);
	
alias timer_full_40us : unsigned(10 downto 0)
	is timer_40us_full(10 downto 0);
alias timer_toggle_40us : unsigned (10 downto 0)
	is timer_40us_toggle(10 downto 0);

signal init_done : unsigned(11 downto 0);
signal timer_4_2ms_init_done : unsigned (11 downto 0);
signal init	: std_logic;



-- avmm generated signals
signal LCD_text_bank :	LCD_TEXT_ARRAY;
signal datavalid		:	std_logic;
signal currentChar 	:	std_logic_vector(7 downto 0);


BEGIN

en <= en_sig_d;-- and datavalid;
timer_1_64ms_full <= x"14050";
timer_1_64ms_toggle <= x"0A028";
timer_40us_full <= x"7D0";
timer_40us_toggle <= x"3E8";
timer_4_2ms_init_done <= x"834";

sync: process (rstn_sys_clk, sys_clk_50M)
begin
if rstn_sys_clk='0' then
	currentState 	<= FUNCTION_SET;
	init_done		<= (others=>'0');
	timer_1_64ms 	<= (others=>'0');
	timer_40us 		<= (others=>'0');
	en_sig			<= '0';
	en_sig_d			<= '0';
	
elsif rising_edge(sys_clk_50M) then
	currentState <= nextState;
	timer_40us <= timer_40us + 1;
	if timer_40us=timer_full_40us then
		timer_40us<= (others=>'0');
		en_sig <='1';
	elsif timer_40us=timer_toggle_40us then
		en_sig <= '0';
	end if;
	en_sig_d <= en_sig;
	
	case currentState is
			when SCREEN_CLEAR		=>
				rs <= '0';
				rw <= '0';
				db	<= x"01";
				
				timer_40us <= (others=>'0');
				timer_1_64ms <= timer_1_64ms + 1;
				if timer_1_64ms = timer_full_1_64ms then
					timer_1_64ms <= (others=>'0');
					en_sig <= '1';
				elsif timer_1_64ms >= timer_toggle_1_64ms then
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
				if timer_1_64ms = timer_full_1_64ms then
					timer_1_64ms <= (others=>'0');
					en_sig <= '1';
				elsif timer_1_64ms >= timer_toggle_1_64ms then
					en_sig <= '0';
				else
					en_sig <= '1';
				end if;
			
			when INPUT_SET			=>
				rs <= '0';
				rw <= '0';
				db	<= x"06";
				init <= '0';
			
			when DISPLAY_SWITCH	=>
				rs <= '0';
				rw <= '0';
				if init='1' then
					db	<= x"08";
				elsif init='0' then
					db <= x"0C";
				else
					db <= x"00";
				end if;
			
			when SHIFT				=>
				rs <= '0';
				rw <= '0';
				db	<= x"1F";
			
			when FUNCTION_SET		=>
				rs <= '0';
				rw <= '0';
				db	<= x"38";
				init_done <= init_done + 1;
				init <= '1';
				
			when DDRAM_AD_SET 	=>
				rs <= '0';
				rw <= '0';
				db <= x"C0";
				
			when DATA_WRITE		=>
				rs <= '1';
				rw <= '0';
				db <= LCD_text_bank(index_char);
				
				if timer_40us=timer_full_40us then
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
				en_sig <= '1';
		
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

async: process (currentState,index_char)
begin
	case currentState is
			when SCREEN_CLEAR		=>
				nextState <= SCREEN_CLEAR;
				if timer_1_64ms = timer_full_1_64ms then -- 1.64ms
					nextState <= INPUT_SET;	
				end if;
						
			when CURSOR_RETURN 	=>
			nextState <= CURSOR_RETURN;
				if timer_1_64ms = timer_full_1_64ms then -- 1.64ms
					nextState <= DATA_WRITE;
				end if;
				
			when INPUT_SET			=>
				nextState <= INPUT_SET;
				if timer_40us = timer_full_40us then -- 40us
					nextState <= DISPLAY_SWITCH;
				end if;
					
			when DISPLAY_SWITCH	=>
				nextState <= DISPLAY_SWITCH;
				if timer_40us = timer_full_40us and init='1' then -- 40us
					nextState <= SCREEN_CLEAR;
				elsif timer_40us = timer_full_40us and init='0' and datavalid='1' then
					nextState <= DATA_WRITE;
				end if;
			when SHIFT				=>
				nextState <= SHIFT;
				if timer_40us = timer_full_40us then -- 40us
					nextState <= SCREEN_CLEAR;
				end if;
			when DDRAM_AD_SET =>
				nextState <= DDRAM_AD_SET;
				if timer_40us = timer_full_40us then -- 40us
					nextState <= DATA_WRITE; 
				end if;
			when FUNCTION_SET		=>
				nextState <= FUNCTION_SET;
				if timer_40us = timer_full_40us and init_done>timer_4_2ms_init_done	then -- 40us
					nextState <= DISPLAY_SWITCH;
				end if;
				
			when DATA_WRITE		=> 
				nextState <= DATA_WRITE;
				
				if index_char = 15 and timer_40us=timer_full_40us then
					nextState <= DDRAM_AD_SET;
				elsif index_char = 31 and timer_40us=timer_full_40us then
					nextState <= CURSOR_RETURN;
				end if;
				
			when NULL_STATE		=>
					nextState <= NULL_STATE;
					
			when others =>
				nextState <= NULL_STATE;
			end case;

end process async;

avmm_proc: process (sys_clk_50M, rstn_sys_clk)
variable bank_index : integer;
begin
if rstn_sys_clk='0' then
	for i in 0 to 31 loop
		LCD_text_bank(i) <= x"42"; --$
	end loop;
	avmm_waitrequest <='1';
	datavalid <= '0';
elsif rising_edge(sys_clk_50M) then
	avmm_waitrequest <= '0';
	bank_index := to_integer(unsigned(avmm_address));
	
	if avmm_write='1' then
		avmm_waitrequest <='1';
		datavalid <= '0';
		LCD_text_bank(bank_index) <= avmm_writedata;
		currentChar <= avmm_writedata;
		if avmm_address="011111" then
			datavalid <= '1';
		end if;
	elsif avmm_read='1' then
		avmm_waitrequest <='1';
		avmm_readdata <= LCD_text_bank(bank_index);
	end if;
end if;
end process avmm_proc;
END BEH;
