library ieee;
use ieee.std_logic_1164.all;

entity register_8bit is
port(
D: in std_logic_vector(0 to 7);
clk,RST,W,R: in std_logic;
Q: buffer std_logic_vector(0 to 7)
);
end entity;

architecture struc of register_8bit is
component D_flipflop_rw 
port(
D,clk,RST,W,R:in std_logic;
Q:buffer std_logic
);
end component;
begin
register_generation:for i in 0 to 7 generate
register_8bit: D_flipflop_rw port map(D(i),clk,RST,W,R,Q(i));
end generate;
end architecture;  
