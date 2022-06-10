Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity Digital_clock_tb is
end entity;

architecture TB of Digital_clock_tb is

component Digital_clock is
   generic
   (frequency_g : natural := FREQUENCY_128HZ); -- Ändra manuellt mellan 0 till 50M eller använd makro
   port
   (
      clk         : in std_logic;
      rst_n       : in std_logic;
      key_n       : in std_logic_vector (2 downto 0);
      switch      : in std_logic; -- UP/DOWN
      switch_mode : in std_logic;
      hex         : out hex_t
    );
end component;


signal clk_s       : std_logic := '0';
signal rst_n_s     : std_logic := '1';
signal key_n_s     : std_logic_vector (2 downto 0) := (others => '0');
signal switch_s      : std_logic;
signal switch_mode_s : std_logic;
signal display_s   : hex_t;

begin

uut : Digital_clock port map
    (
        clk         => clk_s,
        rst_n       => rst_n_s, 
        key_n       => key_n_s,
		  switch      => switch_s,
		  switch_mode => switch_mode_s,
        hex         => display_s
    );


clk_process : process
begin
    clk_s <= not clk_s;
    wait for CLK_PERIOD/2;
--- VID HALVA MAXTIME TOGGLA SWITCH MODE O KOLLA TIMER ISTÄLLET
    if(now > MAX_TIME) then
        wait;
    end if;
end process;

test : process
begin
    wait for 3*CLK_PERIOD;
    rst_n_s <= '0';
    wait for 10*CLK_PERIOD;
    key_n_s <= '1';
    wait for 10*CLK_PERIOD;
    key_n_s <= '0';
    wait for 10*CLK_PERIOD;
    key_n_s <= '1';
    wait for 10*CLK_PERIOD;
    key_n_s <= '0';
    wait;

end process;


end architecture;