-- library
library IEEE;
use IEEE.std_logic_1164.all;

library work;
use work.definitions_pkg.all;

entity segment is
    port
    (
    digit  : in natural range 0 to 9;
    output : out std_logic_vector ( 6 downto 0)
    );
end segment;
-----------------------------------------------------
-- Segment jämför värden av datatypen natural och 
-- skickar tillbaka ett sjubitars tal som motsvarar
-- en siffra på sjusegmentsdisplayter
-----------------------------------------------------
architecture gate of segment is
begin
    
    process(digit) is
    begin
        case digit is
            when 0 => output <= ZERO;  --0
            when 1 => output <= ONE;   --1
            when 2 => output <= TWO;   --2
            when 3 => output <= THREE; --3
            when 4 => output <= FOUR;  --4
            when 5 => output <= FIVE;  --5
            when 6 => output <= SIX;   --6
            when 7 => output <= SEVEN; --7
            when 8 => output <= EIGHT; --8
            when 9 => output <= NINE;  --9
            when others => output <= NONE; -- else sats 
        end case;
    end process;
end architecture;