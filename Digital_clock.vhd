Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity Digital_clock is
   generic
   (frequency_g : natural := 50000000);
   port
   (
   clk         : in std_logic;
   rst_n       : in std_logic;
   key_n       : in std_logic_vector (2 downto 0);
   switch      : in std_logic; -- UP/DOWN
   switch_mode : in std_logic; -- Count/Timer
   hex         : out hex_t
   );
end entity;

architecture Behaviour of Digital_clock is

signal second_s    : digit_t;
signal minute_s    : digit_t;
signal hour_s      : natural range 0 to 99;

signal clocksecond_s    : digit_t;
signal clockminute_s    : digit_t;
signal clockhour_s      : natural range 0 to 23;

signal timersecond_s    : digit_t;
signal timerminute_s    : digit_t;
signal timerhour_s      : natural range 0 to 99;

signal counter_s   : natural;
signal q1          : std_logic_vector(2 downto 0) := (others => '1');
signal clk_state_s : clk_state_t := off;
signal tmr_state_s : clk_state_t := off;
signal slow_clk_s  : std_logic;

signal key_n0_s     : std_logic_vector(1 downto 0):= (others => '1');
signal key_n1_s     : std_logic_vector(1 downto 0):= (others => '1');
signal key_n2_s     : std_logic_vector(1 downto 0):= (others => '1');
signal switch_s     : std_logic_vector(1 downto 0):= (others => '0');
signal switch_mode_s: std_logic_vector(1 downto 0):= (others => '0');
signal rst_n_s      : std_logic_vector(1 downto 0):= (others => '1');


begin
-- Tre instanser av dubbla 7-segmentdisplayer
-- Timmar
   display01 : doublesegment port map 
   (digits => hour_s,   output1 => hex(5), output2 => hex(4));
-- Minuter
   display02 : doublesegment port map 
   (digits => minute_s, output1 => hex(3), output2 => hex(2));
-- Sekunder
   display03 : doublesegment port map 
   (digits => second_s, output1 => hex(1), output2 => hex(0));
-- instans av SlowClock
   Sec_Clock : SlowClock 
   generic map(frequency_g => frequency_g)
   port map
   (
   clk => clk,
   reset_n => rst_n, 
   slow_clk => slow_clk_s
   );
-- Process för motverka metastabilitet
   Metaguard_Reset : process (clk, rst_n) is
   begin
      if(rising_edge(clk)) then
         rst_n_s(0) <= rst_n;
         rst_n_s(1) <= rst_n_s(0);
      end if;
   end process;
-- Process för motverka metastabilitet
   Metaguard_Switch  : process (clk, key_n, switch, rst_n_s(1)) is
   begin
      if (rst_n_s(1) = '0') then
         key_n0_s      <= (others => '1');
         key_n1_s      <= (others => '1');
         key_n2_s      <= (others => '1');
         switch_s      <= (others => '0');
         switch_mode_s <= (others => '0');
      elsif(rising_edge(clk)) then
         key_n0_s(0) <= key_n(0);
         key_n0_s(1) <= key_n0_s(0);

         key_n1_s(0) <= key_n(1);
         key_n1_s(1) <= key_n1_s(0);
         
         key_n2_s(0) <= key_n(2);
         key_n2_s(1) <= key_n2_s(0);

         switch_s(0) <= switch;
         switch_s(1) <= switch_s(0);

         switch_mode_s(0) <= switch_mode;
         switch_mode_s(1) <= switch_mode_s(0);
      end if;
   end process;
-- Process för att byta aktuellt värde för display.
   display_sel : process (clk, switch_mode_s(1))
   begin
      if(rising_edge(clk)) then
         if switch_mode_s(1) = '0' then
            second_s <= clocksecond_s;
            minute_s <= clockminute_s;
            hour_s   <= clockhour_s;
         elsif switch_mode_s(1) = '1' then
            second_s <= timersecond_s;
            minute_s <= timerminute_s;
            hour_s   <= timerhour_s;
         end if;
      end if;
   end process;
-- Process för tillståndsmaskin:
   state_mach : process (clk, rst_n_s(1), switch_mode_s(1)) is
   begin
      if (rst_n_s(1) = '0') then
         clk_state_s <= off;
         tmr_state_s <= off;
         q1 <= (others => '1'); 
      elsif(rising_edge(clk)) then
         q1(0) <= key_n0_s(1); -- FSM BUTTON (ON/OFF)
         q1(1) <= key_n1_s(1); -- HOUR BUTTON
         q1(2) <= key_n2_s(1); -- MINUTE BUTTON
-----------------------------------FSM-CASES----------------------------------------
         case clk_state_s is
            when off =>
               if(key_n0_s(1) = '0' and q1(0) = '1' and switch_mode_s(1) = '0') then
                  clk_state_s <= counting;
               end if;
            when counting =>
               if(key_n0_s(1) = '0' and q1(0) = '1' and switch_mode_s(1) = '0') then
                  clk_state_s <= paused;
               end if;
            when paused =>
               if(key_n0_s(1) = '0' and q1(0) = '1' and switch_mode_s(1) = '0') then
                  clk_state_s <= counting;
               end if;
         end case;
         case tmr_state_s is
            when off =>
               if(key_n0_s(1) = '0' and q1(0) = '1' and switch_mode_s(1) = '1') then
                  tmr_state_s <= counting;
               end if;
            when counting =>
               if(key_n0_s(1) = '0' and q1(0) = '1' and switch_mode_s(1) = '1') then
                  tmr_state_s <= paused;
               end if;
            when paused =>
               if(key_n0_s(1) = '0' and q1(0) = '1' and switch_mode_s(1) = '1') then
                  tmr_state_s <= counting;
               end if;
         end case;
      end if;
   end process;
-- Process för räknaren.
   counting_process : process (clk, rst_n_s(1)) is
   begin
      if (rst_n_s(1) = '0') then
         timerhour_s <= 0;
         timerminute_s <= 0;
         timersecond_s <= 0;
         clockhour_s <= 0;
         clockminute_s <= 0;
         clocksecond_s <= 0;
      elsif (rising_edge(clk)) then 
--------------------------------------TIMER------------------------------------------
         if tmr_state_s = counting then      
            if (slow_clk_s = '1') then
               if(timerhour_s = 0 and timerminute_s = 0 and timersecond_s = 0) then
                  timersecond_s <= 0;
                  timerminute_s <= 0;
                  timerhour_s   <= 0;                 
               elsif (timerhour_s > 0 and timerminute_s = 0 and timersecond_s = 0) then
                  timerhour_s <= timerhour_s - 1;
                  timerminute_s <= 59;
                  timersecond_s <= 59;            
               elsif ((timerminute_s > 0 and timerminute_s < 60) and timersecond_s = 0) then
                  timerminute_s <= timerminute_s -1;
                  timersecond_s <= 59;                
               elsif (timerminute_s = 0 and timersecond_s = 0) then
                  timerminute_s <= 59;
                  timersecond_s <= 59;
               else
                  timersecond_s <= timersecond_s - 1;
               end if;
            end if;  
         end if;
--------------------------------------CLOCK------------------------------------------
         if clk_state_s = counting then
            if(slow_clk_s = '1') then
               if(clockhour_s = 23 and clockminute_s = 59 and clocksecond_s = 59) then
                  clockhour_s <= 0;
                  clockminute_s <= 0;
                  clocksecond_s <= 0;     
               elsif (clockminute_s = 59 and clocksecond_s = 59) then
                  clockhour_s <= clockhour_s + 1;
                  clockminute_s <= 0;
                  clocksecond_s <= 0;
               elsif (clocksecond_s = 59) then
                  clockminute_s <= clockminute_s + 1;
                  clocksecond_s <= 0;
               else 
                  clocksecond_s <= clocksecond_s +1;
               end if;
            end if;
         end if;
--------------------------------TIMER-ADJUST-TIME--------------------------------   
         if (switch_mode_s(1) = '1') then-- Timer när switch är uppe
            if (switch_s(1) = '1') then                        -- UP ( +h +m)
               if(key_n1_s(1) = '1' and q1(1) = '0') then     -- HOUR UP
                  if(timerhour_s = 99) then
                     timerhour_s <= 0;
                  else  
                     timerhour_s <= timerhour_s + 1;
                  end if;
               elsif (key_n2_s(1) = '1' and q1(2) = '0') then -- MIN UP
                  if (timerminute_s = 59) then
                     timerminute_s <= 0;
                  else
                     timerminute_s <= timerminute_s + 1;
                  end if;
               end if;
               
            elsif (switch_s(1) = '0') then                     -- DOWN (-h -m)
               if(key_n1_s(1) = '1' and q1(1) = '0') then      -- HOUR DOWN
                  if (timerhour_s = 0 and timerminute_s = 0) then
                     timerhour_s <= 99;
                     timerminute_s <= 59;
                     timersecond_s <= 59;
                  else
                     timerhour_s <= timerhour_s - 1;
                  end if;
               elsif (key_n2_s(1) = '1' and q1(2) = '0') then -- MIN DOWN
                  if(timerminute_s = 0) then
                     timerminute_s <= 59;
                  else
                     timerminute_s <= timerminute_s - 1;
                  end if;
               end if;
            end if;
--------------------------------CLOCK-ADJUST-TIME--------------------------------
         elsif(switch_mode_s(1) = '0') then 
            if (switch_s(1) = '1') then                       -- UP ( +h +m)
               if(key_n1_s(1) = '1' and q1(1) = '0') then     -- HOUR UP
                  if(clockhour_s = 23) then
                     clockhour_s <= 0;
                  else  
                     clockhour_s <= clockhour_s + 1;
                  end if;
               elsif (key_n2_s(1) = '1' and q1(2) = '0') then -- MIN UP
                  if(clockminute_s = 59) then
                     clockminute_s <= 0;
                  else
                     clockminute_s <= clockminute_s + 1;
                  end if;
               end if;
            elsif (switch_s(1) = '0') then                 -- DOWN (-h -m)
               if(key_n1_s(1) = '1' and q1(1) = '0') then  -- HOUR DOWN
                  if(clockhour_s = 0 and clockminute_s = 0) then
                     clockhour_s <= 23;
                     clockminute_s <= 59;
                  elsif(clockhour_s = 0) then
                     clockhour_s <= 23;
                  else
                     clockhour_s <= clockhour_s - 1;
                  end if;
               elsif (key_n2_s(1) = '1' and q1(2) = '0') then
                  if(clockminute_s = 0) then
                     clockminute_s <= 59; -- MIN DOWN
                  else
                     clockminute_s <= clockminute_s - 1;
                  end if;
               end if;
            end if;
         end if;
      end if;
   end process;
end architecture;