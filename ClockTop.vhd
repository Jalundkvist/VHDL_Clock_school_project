library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.definitions_pkg.all;

entity ClockTop is
    port
    (
    clk     : in std_logic;
    rst_n   : in std_logic;
    key_n   : in std_logic;
    hex     : out hex_t
    );
end entity;

architecture top of ClockTop is

begin

bigclock : Digital_clock port map
(
clk   => clk,
rst_n => rst_n,
key_n => key_n,
hex   => hex
);


end architecture;