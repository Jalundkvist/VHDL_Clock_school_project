Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity ClockTop_tb is
end entity;

architecture TB of ClockTop_tb is
-- Topmodulens komponent
   component ClockTop is
      generic(frequency_g : natural := 3);
      port(
         clk         : in std_logic;
         rst_n       : in std_logic;
         key_n       : in std_logic_vector (2 downto 0);
         switch      : in std_logic;
         switch_mode : in std_logic;
         hex         : out hex_t
      );
   end component;

-- Signaler
   signal clk_s         : std_logic := '0';
   signal rst_n_s       : std_logic := '0';
   signal key_n_s       : std_logic_vector (2 downto 0) := (others => '1'); -- (0)= FSM Enable/disable, (1)= HOUR, (2)= MIN
   signal switch_s      : std_logic := '0'; -- 0 = subtract, 1 = add time.
   signal switch_mode_s : std_logic := '0'; -- 0 = clock, 1 = timer.
   signal display_s     : hex_t;

-- Procedur för att generera en puls på angiven input baserat på ingående värde.
  procedure pulse_input
      (
             values_in  : in  std_logic;
      signal values_out : out std_logic 
      ) is
   begin
      values_out <= values_in;
      wait for 2*CLK_PERIOD;
      values_out <= not values_in;
      wait for 2*CLK_PERIOD;
   end procedure;

   begin
      uut : ClockTop port map
      (
         clk         => clk_s,
         rst_n       => rst_n_s, 
         key_n       => key_n_s,
         switch      => switch_s,
         switch_mode => switch_mode_s,
         hex         => display_s
      );

   -- Process för generera klocka i modelsim.
   clk_process : process
   begin
      clk_s <= not clk_s;
      wait for CLK_PERIOD/2;
      if(now > MAX_TIME) then
         wait;
      end if;
   end process;
   -- Process för test av insignaler
   test : process
   begin
      wait for 2*CLK_PERIOD;
      rst_n_s <= '1';
      wait for 2*CLK_PERIOD;
      pulse_input('0', key_n_s(0)); -- Aktiverar klockan
      wait for 10*CLK_PERIOD;
      pulse_input('0', key_n_s(1)); -- backar till 1 timme till hr 23.
      wait for 25*CLK_PERIOD;
      switch_mode_s <= '1';         -- Slår över till timer.
      pulse_input('0', key_n_s(1)); -- backar till 1 timme till 100h timer.
      wait for 10*CLK_PERIOD;
      pulse_input('0', key_n_s(0)); -- Aktiverar timern att räkna ner från h:99 - m:59 - s:59.
      wait for 300*CLK_PERIOD;
      pulse_input('0', key_n_s(0));
      wait for 10*CLK_PERIOD;
      switch_mode_s <= '0';         -- Slår över till klocka.
      wait for 10*CLK_PERIOD;
      pulse_input('0', rst_n_s);    -- reset
      pulse_input('0', key_n_s(0)); -- Aktiverar klockan
      switch_s <= '1';              -- Addera tid
      pulse_input('0', key_n_s(1));
      pulse_input('0', key_n_s(1));
      pulse_input('0', key_n_s(2));
      pulse_input('0', key_n_s(1));
      wait for 10*CLK_PERIOD;
      switch_mode_s <= '1';         -- Slår över till timer.
      wait for 10*CLK_PERIOD;
      pulse_input('0', key_n_s(0)); -- Aktiverar timer
      pulse_input('0', key_n_s(1));
      pulse_input('0', key_n_s(1));
      pulse_input('0', key_n_s(2));
      pulse_input('0', key_n_s(1));
      wait;
   end process;
end architecture;