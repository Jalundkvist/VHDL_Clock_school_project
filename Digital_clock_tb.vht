Library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.Digital_clock_pkg.all;

entity Digital_clock_tb is
end entity;

architecture TB of Digital_clock_tb is

component Digital_clock is
    port
   (
   clk   : in std_logic;
   rst_n : in std_logic;
   key_n : in std_logic;
   display : out std_logic_vector(5 downto 0)
   );
end component;

signal clk_s     : std_logic := '0';
signal rst_n_s   : std_logic := '0';
signal key_n_s   : std_logic := '0';
signal display_s : std_logic_vector(5 downto 0);

begin

uut : Digital_clock port map
    (
        clk     => clk_s,
        rst_n   => rst_n_s, 
        key_n   => key_n_s,
        display => display_s
    );


clk_process : process
begin
    clk_s <= not clk_s;
    wait for CLK_PERIOD/2;

    if(now > MAX_TIME) then
        wait;
    end if;
end process;

test : process
begin
    wait for 3*CLK_PERIOD;
    rst_n_s <= '1';
    wait for 10*CLK_PERIOD;
    key_n_s <= '1';
    wait for 10*CLK_PERIOD;
    key_n_s <= '0';
    wait for 10*CLK_PERIOD;
    key_n_s <= '1';
    wait for 10*CLK_PERIOD;
    key_n_s <= '0';
    wait for 10*CLK_PERIOD;
    key_n_s <= '1';
    wait;

end process;


end architecture;