library ieee;
use ieee.std_logic_1164.all;

entity counter_controller is
port(
clk_4096,clk,RST,load,start: in std_logic;
O_clk,O_rst: out std_logic
);
end entity;

architecture struc of counter_controller is
signal s0,s1: std_logic;
component tri_buff is
port(
A,sel:in std_logic;
F:out std_logic
);
end component;
begin
TB0: tri_buff port map(clk_4096,(RST and load and (not start)),s0);
TB1: tri_buff port map(clk,(RST and start and (not load)),s1);
O_clk<= s0 or s1;
O_rst<= RST and (load or start);
end architecture;
