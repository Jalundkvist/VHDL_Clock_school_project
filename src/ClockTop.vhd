library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity ClockTop is
   generic(frequency_g : natural := FREQUENCY_1HZ);
   port(
      clk         : in std_logic;
      rst_n       : in std_logic;
      key_n       : in std_logic_vector (2 downto 0);
      switch      : in std_logic;
      switch_mode : in std_logic;
      hex         : out hex_t
   );
end entity;

architecture top of ClockTop is

begin

   bigclock : Digital_clock 
   generic map(frequency_g => frequency_g)
   port map(
      clk         => clk,
      rst_n       => rst_n,
      key_n       => key_n,
      switch      => switch,
      switch_mode => switch_mode,
      hex         => hex
   );


end architecture;