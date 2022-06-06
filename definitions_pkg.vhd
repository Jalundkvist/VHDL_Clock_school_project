library IEEE;
use IEEE.std_logic_1164.all;

package definitions_pkg is

	 constant COUNTER_MAX : natural := 50000000;
	 subtype counter_t is natural range 0 to 50000000;
	 type clk_state_t is (off, counting, paused);
	 
-- constanter för simulering och klocka
    constant CLK_PERIOD : time := 20 ns;
    constant MAX_TIME   : time := 50 us;
	 
-- Array för utsignal till display.
	type hex_t is array (0 to 5) of std_logic_vector(6 downto 0);
	 
-- Makron för sjusegments displayer.
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
	 
-- Komponentdeklarationer:
component segment is
    port
    (
    digit  : in natural range 0 to 9;
    output : out std_logic_vector ( 6 downto 0)
    );
end component;

component SlowClock is
   port
   (
      clk       : in std_logic;   
      reset_n   : in std_logic;   
      frequency : in counter_t; 
      slow_clk  : out std_logic
   );
end component;

end package;