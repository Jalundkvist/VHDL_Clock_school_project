library IEEE;
use IEEE.std_logic_1164.all;



package Digital_clock_pkg is

	constant COUNTER_MAX : natural := 5;
	subtype counter_t is natural range 0 to COUNTER_MAX;
	type clk_state_t is (off, counting, paused);
    constant CLK_PERIOD : time := 20 ns;
    constant MAX_TIME   : time := 20 us;
	
    constant ZERO:  std_logic_vector(6 downto 0) := "1000000";
    constant ONE:   std_logic_vector(6 downto 0) := "1111001";
    constant TWO:   std_logic_vector(6 downto 0) := "0100100";
    constant THREE: std_logic_vector(6 downto 0) := "0110000";
    constant FOUR:  std_logic_vector(6 downto 0) := "0011001";
    constant FIVE:  std_logic_vector(6 downto 0) := "0010010";
    constant SIX:   std_logic_vector(6 downto 0) := "0000010";
    constant SEVEN: std_logic_vector(6 downto 0) := "1111000";
    constant EIGHT: std_logic_vector(6 downto 0) := "0000000";
    constant NINE:  std_logic_vector(6 downto 0) := "0010000";
    constant NONE:  std_logic_vector(6 downto 0) := "1111111";
-- Komponentdeklaration:
 component segment is
     port
     (
        timecount : in natural range 0 to 10;
        output 	  : out std_logic_vector(6 downto 0)
     );
 end component;

end package;