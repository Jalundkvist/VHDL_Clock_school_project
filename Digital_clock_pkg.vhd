library IEEE;
use IEEE.std_logic_1164.all;

package segment_pkg is
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
-- Komponentdeklaration:
 component segment is
     port
     (
        timecount : in natural (range 0 to 10);
        output 	  : out std_logic_vector(6 downto 0)
     );
 end component;

end package;