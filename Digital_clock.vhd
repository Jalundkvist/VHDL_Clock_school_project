Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity Digital_clock is
   port
   (
   clk     : in std_logic;
   rst_n   : in std_logic;
   key_n   : in std_logic;
   hex     : out hex_t
   );
end entity;

architecture Behaviour of Digital_clock is

signal second_s      : natural;
signal deci_second_s : natural;
signal minute_s      : natural;
signal deci_minute_s : natural;
signal hour_s        : natural;
signal deci_hour_s   : natural;
signal counter_s     : natural;
signal q1            : std_logic;
signal clk_state_s   : clk_state_t := off;
signal slow_clk_s    : std_logic;
signal frequency_s   : natural;

begin

frequency_s <= COUNTER_MAX;

display0 : segment port map 
(digit => deci_hour_s, output => hex(5));

display1 : segment port map
(digit => hour_s, output => hex(4));

display2 : segment port map 
(digit => deci_minute_s, output => hex(3));

display3 : segment port map 
(digit => minute_s, output => hex(2));

display4 : segment port map 
(digit => deci_second_s, output => hex(1));

display5 : segment port map 
(digit => second_s, output => hex(0));

Sec_Clock : SlowClock port map
(
clk => clk,
reset_n => rst_n,
frequency => frequency_s, 
slow_clk => slow_clk_s
);


-----------------------------------------------------------------


   state_mach : process (clk, rst_n) is
   begin
	   if (rst_n = '1') then
         clk_state_s <= off;
			q1 <= '1'; 
      elsif(rising_edge(clk)) then
-----------------------------------------------------------------
         case clk_state_s is
            when off =>
					if(key_n = '0' and q1 = '1') then
						clk_state_s <= counting;
					end if;
				when counting =>
					if(key_n = '0' and q1 = '1') then
						clk_state_s <= paused;
					end if;
				when paused =>
					if(key_n = '0' and q1 = '1') then
						clk_state_s <= counting;
					end if;
			end case;
		   q1 <= key_n;
		end if;
	end process;
	
-----------------------------------------------------------------	

   counter24h : process (clk, rst_n) is
   begin
	 
	   if (rst_n = '1') then
		   second_s <= 0;
			deci_second_s <= 0;
			minute_s <= 0;
			deci_minute_s <= 0;
			hour_s <= 0;
			deci_hour_s <= 0; 
	   elsif (rising_edge(clk)) then 
-----------------------------------------------------------------	
		   if clk_state_s = counting then
			   if (slow_clk_s = '1') then
					if(deci_hour_s = 2 and hour_s = 3 and deci_minute_s = 5 and minute_s = 9 and deci_second_s = 5 and second_s = 9) then
						deci_hour_s <= 0;
						hour_s <= 0;
						deci_minute_s <= 0;
						minute_s <= 0;
						deci_second_s <= 0;
						second_s <= 0;
					elsif (hour_s = 9 and deci_minute_s = 5 and minute_s = 9 and deci_second_s = 5 and second_s = 9) then
						deci_hour_s <= deci_hour_s + 1;
						hour_s <= 0;
						deci_minute_s <= 0;
						minute_s <= 0;
						deci_second_s <= 0;
						second_s <= 0;
					elsif (deci_minute_s = 5 and minute_s = 9 and deci_second_s = 5 and second_s = 9) then
						hour_s <= hour_s + 1;
						deci_minute_s <= 0;
						minute_s <= 0;
						deci_second_s <= 0;
						second_s <= 0;
					elsif (minute_s = 9 and deci_second_s = 5 and second_s = 9) then
						deci_minute_s <= deci_minute_s + 1;
						minute_s <= 0;
						deci_second_s <= 0;
						second_s <= 0;
					elsif (deci_second_s = 5 and second_s = 9) then
						minute_s <= minute_s + 1;
						deci_second_s <= 0;
						second_s <= 0;
					elsif (second_s = 9) then
						deci_second_s <= deci_second_s + 1;
						second_s <= 0;
					else 
				      second_s <= second_s +1;
					end if;
				end if;
         end if;   
      end if;
   end process;
----------------------------------------------------------------------------------------------------------------------------------
end architecture;