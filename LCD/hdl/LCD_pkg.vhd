library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package LCD_pkg is

constant ADDRESS_WIDTH 		integer := 4;
constant AVMM_DATA_WIDTH 	integer := 32;
constant AVMM_SIZE			integer := 10;

type slv is std_logic_vector(AVMM_DATA_WIDTH-1 downto 0);
type avmm_array is std_logic_vector(AVMM_SIZE-1 downto 0) of stdv;



end package LCD_pkg;