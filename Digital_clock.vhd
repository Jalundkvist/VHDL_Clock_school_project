Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.segment_pkg.all;

entity Digital_clock is
   port
   (
   clk   : in std_logic;
   rst_n : in std_logic;
   key_n : in std_logic;
   display : out std_logic_vector(5 downto 0)
   );
   
end entity;

architecture Behaviour of Digital_clock is

begin

   process(clk) is
    
      begin;
      if(rising_edge(clk)) then
         if(key_n = '1') then

         

         end if;
      end if;
   end process;
end architecture;