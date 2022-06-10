library IEEE;
use IEEE.std_logic_1164.all;

package definitions_pkg is
-- Värden och tillstånd för klockan
   subtype digit_t  is natural range 0 to 59;
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
-- Frekvensförändring för snabbare test mot FPGA.
   subtype  frequency_t is natural; 
   constant FREQUENCY_1HZ   : frequency_t := 50000000;
   constant FREQUENCY_2HZ   : frequency_t := 25000000;
   constant FREQUENCY_4HZ   : frequency_t := 12500000;
   constant FREQUENCY_8HZ   : frequency_t := 6250000;
   constant FREQUENCY_16HZ  : frequency_t := 3125000;
   constant FREQUENCY_32HZ  : frequency_t := 1562500;
   constant FREQUENCY_64HZ  : frequency_t := 781250;
   constant FREQUENCY_128HZ : frequency_t := 390625;
	constant FREQUENCY_256HZ : frequency_t := 195312;
	constant FREQUENCY_512HZ : frequency_t := 97656;
	constant FREQUENCY_1024HZ: frequency_t := 48828;
    
-- Komponentdeklarationer:
component Digital_clock is
   generic
   (frequency_g : natural := 50000000);
   port
   (
      clk         : in std_logic;
      rst_n       : in std_logic;
      key_n       : in std_logic_vector (2 downto 0);
      switch      : in std_logic; -- UP/DOWN
      switch_mode : in std_logic;
      hex         : out hex_t
    );
end component;

component SlowClock is
   generic
   (frequency_g : natural := 50000000);
   port
   (
      clk       : in std_logic;   
      reset_n   : in std_logic;   
      slow_clk  : out std_logic
   );
end component;

component segment is
    port
    (
    digit  : in natural range 0 to 9;
    output : out std_logic_vector (6 downto 0)
    );
end component;

component doublesegment is
    port
    (
      digits  : in natural range 0 to 99;
      output1 : out std_logic_vector (6 downto 0);
      output2 : out std_logic_vector (6 downto 0)
    );
end component;

end package;