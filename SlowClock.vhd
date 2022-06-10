library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity SlowClock is
	generic
	(frequency_g : natural := 50000000);
   port
   (
      clk       : in std_logic;   
      reset_n   : in std_logic;   
      slow_clk  : out std_logic
   );
end entity;

architecture behaviour of SlowClock is
signal counter_s     : frequency_t;
signal counter_max_s : frequency_t;

begin
	counter_max_s <= frequency_g;
	
   process (clk, reset_n) is
   begin
      if (reset_n = '0') then
         slow_clk <= '0';
         counter_s  <=  0;
      elsif rising_edge(clk) then
         counter_s <= counter_s +1;
         if counter_s >= counter_max_s then
            slow_clk <= '1';
            counter_s  <=  0;
         else
            slow_clk <= '0';
         end if;
      end if;
	end process;
	
end architecture;
