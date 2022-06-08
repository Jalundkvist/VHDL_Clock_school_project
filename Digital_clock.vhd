Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity Digital_clock is
   port
   (
   clk     : in std_logic;
   rst_n   : in std_logic;
   key_n   : in std_logic_vector (2 downto 0);
	switch  : in std_logic; -- UP/DOWN
   hex     : out hex_t
   );
end entity;

architecture Behaviour of Digital_clock is

signal second_s    : natural;
signal minute_s    : natural;
signal hour_s      : natural;
signal counter_s   : natural;
signal q1          : std_logic_vector(2 downto 0);
signal clk_state_s : clk_state_t := off;
signal slow_clk_s  : std_logic;
signal frequency_s : natural;

signal key_n0_s     : std_logic_vector(1 downto 0);
signal key_n1_s     : std_logic_vector(1 downto 0);
signal key_n2_s     : std_logic_vector(1 downto 0);
signal switch_s     : std_logic_vector(1 downto 0);
signal rst_n_s      : std_logic_vector(1 downto 0);

begin

	frequency_s <= COUNTER_MAX;

	display01 : doublesegment port map 
	(digits => hour_s,   output1 => hex(5), output2 => hex(4));
	display02 : doublesegment port map 
	(digits => minute_s, output1 => hex(3), output2 => hex(2));
	display03 : doublesegment port map 
	(digits => second_s, output1 => hex(1), output2 => hex(0));


	Sec_Clock : SlowClock port map
	(
	clk => clk,
	reset_n => rst_n,
	frequency => frequency_s, 
	slow_clk => slow_clk_s
	);


	Metaguard_Reset   : process (clk, rst_n) is
	begin
		if(rst_n = '0') then
			rst_n_s <= (others => '0');
		elsif(rising_edge(clk)) then
			rst_n_s(0) <= rst_n;
			rst_n_s(1) <= rst_n_s(0);
		end if;
	end process;

	Metaguard_Switch  : process (clk, key_n, switch, rst_n_s(1)) is
	begin
		if (rst_n_s(1) = '0') then
			key_n0_s  <= (others => '0');
			key_n1_s  <= (others => '0');
			key_n2_s  <= (others => '0');
			switch_s  <= (others => '0');
		elsif(rising_edge(clk)) then
			key_n0_s(0) <= key_n(0);
			key_n0_s(1) <= key_n0_s(0);

			key_n1_s(0) <= key_n(1);
			key_n1_s(1) <= key_n1_s(0);
			
			key_n2_s(0) <= key_n(2);
			key_n2_s(1) <= key_n2_s(0);

			switch_s(0) <= switch;
			switch_s(1) <= switch_s(0);
		end if;
	end process;
-----------------------------------------------------------------
   state_mach : process (clk, rst_n_s(1)) is
   begin
	   if (rst_n_s(1) = '0') then
         clk_state_s <= off;
		 q1 <= (others => '1'); 
      elsif(rising_edge(clk)) then
-----------------------------------------------------------------
         case clk_state_s is
            when off =>
					if(key_n0_s(1) = '0' and q1(0) = '1') then
						clk_state_s <= counting;
					end if;
				when counting =>
					if(key_n0_s(1) = '0' and q1(0) = '1') then
						clk_state_s <= paused;
					end if;
				when paused =>
					if(key_n0_s(1) = '0' and q1(0) = '1') then
						clk_state_s <= counting;
					end if;
			end case;
		   q1(0) <= key_n0_s(1);
		   q1(1) <= key_n1_s(1); -- HOUR BUTTON
		   q1(2) <= key_n2_s(1); -- MINUTE BUTTON
		end if;
	end process;
-----------------------------------------------------------------	
   counter24h : process (clk, rst_n_s(1)) is
   begin
	    if (rst_n_s(1) = '0') then
		   second_s <= 0;
			--deci_second_s <= 0;
			minute_s <= 0;
			--deci_minute_s <= 0;
			hour_s <= 0;
			--deci_hour_s <= 0; 
	    elsif (rising_edge(clk)) then 
-----------------------------------------------------------------	
		   if clk_state_s = counting then
			   if (slow_clk_s = '1') then
					if(hour_s = 23 and minute_s = 59 and second_s = 59) then
						hour_s <= 0;
						minute_s <= 0;
						second_s <= 0;		
					elsif (minute_s = 59 and second_s = 59) then
						hour_s <= hour_s + 1;
						minute_s <= 0;
						second_s <= 0;
					elsif (second_s = 59) then
						minute_s <= minute_s + 1;
						second_s <= 0;
					else 
				      second_s <= second_s +1;
					end if;
				end if;
        	elsif clk_state_s = paused then
				if (switch_s(1) = '1') then                        -- UP ( +h +m)
				    if(key_n1_s(1) = '0' and q1(1) = '1') then     -- HOUR UP
				   	if(hour_s = 23)
							hour_s <= 0;
						else	
							hour_s <= hour_s + 1;
						end if;
				    elsif (key_n2_s(1) = '0' and q1(2) = '1') then -- MIN UP
					   if(minutes_s = 59)
							minute_s <= 0;
						else
							minute_s <= minute_s + 1;
						end if;
				    end if;
				elsif (switch_s(1) = '0') then 							-- DOWN (-h -m)
				    if(key_n1_s(1) = '0' and q1(1) = '1') then 		-- HOUR DOWN
				   	    hour_s <= hour_s - 1;
				    elsif (key_n2_s(1) = '1' and q1(2) = '1') then -- MIN DOWN
					    minute_s <= minute_s - 1;
				   end if;
				end if;
			end if;

        end if;
   end process;
end architecture;