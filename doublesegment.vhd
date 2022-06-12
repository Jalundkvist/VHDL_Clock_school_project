library IEEE;
use IEEE.std_logic_1164.all;

library work;
use work.definitions_pkg.all;
-- doublesegment består av två stycken segment moduler
entity doublesegment is
    port
    (
       digits  : in natural range 0 to 99;
       output1 : out std_logic_vector (6 downto 0);
       output2 : out std_logic_vector (6 downto 0)
    );
end entity;

architecture behaviour of doublesegment is
   signal digit1 : natural range 0 to 9 := 0;
   signal digit2 : natural range 0 to 9 := 0;
begin
   display1 : segment port map
   (
      digit  => digit1,
      output => output1
   );
   
   display2 : segment port map
   (
      digit  => digit2,
      output => output2
   );
-- Beräkning för att bryta ut tiotal och ental från tal mellan 0-99.
digit1 <= ((digits - (digits mod 10))/10); -- exempel digits = 52 - 2 = 50/10 = 5
digit2 <= (digits mod 10);

end architecture;