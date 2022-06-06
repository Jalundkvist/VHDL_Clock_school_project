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
   --display : out std_logic_vector(6 downto 0);
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
signal q2            : std_logic;
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
(clk => clk, reset_n => rst_n, frequency => frequency_s, slow_clk => slow_clk_s);


-----------------------------------------------------------------
   state_mach : process (clk, q1, q2) is

   begin
 
      if(rising_edge(clk)) then
         if rst_n = '0' then
            clk_state_s <= off;
         else
				q1 <= key_n;
-----------------------------------------------------------------
				if (key_n = '1' and q1 = '0') then
					q2 <= '1';
				else
					q2 <= '0';
				end if;
         
-----------------------------------------------------------------
            case clk_state_s is
               when off =>
                  if(q2= '1') then
                     clk_state_s <= counting;
                  end if;
               when counting =>
                  if(q2 = '1') then
                     clk_state_s <= paused;
                  end if;
               when paused =>
                  if(q2 = '1') then
                     clk_state_s <= counting;
                  end if;
            end case;
			end if;
		end if;
	end process;
	
-----------------------------------------------------------------	

   counter24h : process (slow_clk_s) is
   begin
      if(rising_edge(slow_clk_s)) then
         
-----------------------------------------------------------------		
				if clk_state_s = off then
					second_s <= 0;
					deci_second_s <= 0;
					minute_s <= 0;
					deci_minute_s <= 0;
					hour_s <= 0;
					deci_hour_s <= 0;	
-----------------------------------------------------------------
            elsif clk_state_s = counting then
					if (slow_clk_s = '1') then
						second_s <= second_s + 1;
					end if;
-----------------------------------------------------------------				
					
					if(second_s = 9 and slow_clk_s = '1') then
						second_s <= 0;
						deci_second_s <= deci_second_s + 1;
					end if;
-----------------------------------------------------------------					
					
					if(deci_second_s = 5 and second_s = 9 and slow_clk_s = '1') then
						deci_second_s <= 0;
						minute_s <= minute_s + 1;
					end if;
----------------------------------------------------------------------------------------------------------------------------------				
					if(minute_s = 9 and deci_second_s = 5 and second_s = 9 and slow_clk_s = '1') then
						minute_s <= 0;
						deci_minute_s <= deci_minute_s + 1; 
					end if;
----------------------------------------------------------------------------------------------------------------------------------					
					if(deci_minute_s = 5 and minute_s = 9 and deci_second_s = 5 and second_s = 9 and slow_clk_s = '1') then
						deci_minute_s <= 0;
						hour_s <= hour_s + 1;
					end if;
----------------------------------------------------------------------------------------------------------------------------------			
					if(hour_s = 9 and deci_minute_s = 5 and minute_s = 9 and deci_second_s = 5 and second_s = 9 and slow_clk_s = '1') then
						hour_s <= 0;
						deci_hour_s <= deci_hour_s + 1;
					end if;
----------------------------------------------------------------------------------------------------------------------------------					
					if(deci_hour_s = 2 and hour_s = 3 and deci_minute_s = 5 and minute_s = 9 and deci_second_s = 5 and second_s = 9 and slow_clk_s = '1') then
						deci_hour_s <= 0;
						hour_s <= 0;
					end if;
----------------------------------------------------------------------------------------------------------------------------------				
			elsif clk_state_s = paused then
				counter_s <= counter_s;
         end if;   
      end if;
   end process;
----------------------------------------------------------------------------------------------------------------------------------

end architecture;