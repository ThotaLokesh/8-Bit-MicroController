library ieee;
use ieee.std_logic_1164.all;

entity D_flipflop is
port(
D,clk,RST: in std_logic;
Q,Q1: buffer std_logic
);
end entity;

architecture struc of D_flipflop is
signal s0,s1:std_logic;

component D_latch 
port(
D,clk,RST: in std_logic;
Q,Q1: out std_logic
);
end component;
begin
D0: D_latch port map(D,not clk,RST,s0,s1);
D1: D_latch port map(s0,clk,RST,Q,Q1);
end architecture;