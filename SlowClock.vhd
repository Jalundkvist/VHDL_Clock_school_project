Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity SlowClock is
   port
	(
	   clock      : in std_logic;   
      reset_n    : in std_logic;   
      --frequency  : in frequency_t; 
      slow_clock : out std_logic
	);
end entity;