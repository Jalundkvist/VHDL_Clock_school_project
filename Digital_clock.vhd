Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.Digital_clock_pkg.all;

entity Digital_clock is
   port
   (
   clk   : in std_logic;
   rst_n : in std_logic;
   key_n : in std_logic;
   display : out std_logic_vector(5 downto 0);
   type hex is array (0 to 5) of std_logic_vector(6 downto 0);
   );
   
end entity;

architecture Behaviour of Digital_clock is

signal second_s      : natural;
signal deci_second_s : natural;
signal minut_s       : natural;
signal deci_minut_s  : natural;
signal hour_s        : natural;
signal deci_hour_s   : natural;
signal counter_s     : natural;
signal q1            : std_logic;
signal q2            : std_logic;
signal clk_state_s   : clk_state_t := off;

begin

   display(0) : segment port map (digit => deci_hour_s;, output => hex());
   display(1) : segment port map (digit => deci_hour_s;, output => hex());


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
	
   counter24h : process (clk) is
   begin
      if(rising_edge(clk)) then
         if clk_state_s = off then
            display <= (others => '0');
            counter_s <= 0;
				second_s <= 0;
				deci_second_s <= 0;
				minut_s <= 0;
				deci_minut_s <= 0;
				hour_s <= 0;
				deci_hour_s <= 0;
				
				
         elsif clk_state_s = counting then
            counter_s <= counter_s + 1;
				if (counter_s = COUNTER_MAX) then
					counter_s <= 0;
					second_s <= second_s + 1;
				end if;
				if(second_s = 10) then
					second_s <= 0;
					deci_second_s <= deci_second_s + 1;
				end if;
				if(deci_second_s = 6) then
					deci_second_s <= 0;
					minut_s <= minut_s + 1;
				end if;
				if(minut_s = 10) then
					minut_s <= 0;
					deci_minut_s <= deci_minut_s + 1; 
				end if;
				if(deci_minut_s = 6) then
					deci_minut_s <= 0;
					hour_s <= hour_s + 1;
				end if;
				if(hour_s = 10) then
					hour_s <= 0;
					deci_hour_s <= deci_hour_s + 1;
				end if;
				if(deci_hour_s = 2 and hour_s = 4 and) then
					deci_hour_s <= 0;
					hour_s <= 0;
				end if;
				
			elsif clk_state_s = paused then
				counter_s <= counter_s;
         end if;   
      end if;
   end process;

   display(5) <= second_s; 
   display(4) <= deci_second_s
   display(3) <= minut_s
   display(2) <= deci_minut_s
   display(1) <= hour_s;
   display(0) <= deci_hour_s;
end architecture;