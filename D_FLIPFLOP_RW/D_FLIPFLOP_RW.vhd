library ieee;
use ieee.std_logic_1164.all;

entity D_flipflop_rw is
port(
D,clk,RST,W,R:in std_logic;
Q:buffer std_logic
);
end entity;

architecture struc of D_flipflop_rw is
signal s0,s1,s2: std_logic;
begin
mux: entity work.mux2_1 port map(s1,D,W,s0);
D_ff: entity work.D_flipflop port map(s0,clk,RST,s1,s2); 
Tristate_buffer: entity work.tri_buff port map(s1,R,Q);
end architecture;
