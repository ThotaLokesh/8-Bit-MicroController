library ieee;
use ieee.std_logic_1164.all;

entity register_16Byte is
port(
D: in std_logic_vector(0 to 7);
clk,RST: in std_logic;
W,R: in std_logic_vector(0 to 15);
Q: buffer std_logic_vector(0 to 7)
);
end entity;

ARCHITECTURE struc of register_16Byte is
component register_8bit 
port(
D: in std_logic_vector(0 to 7);
clk,RST,W,R: in std_logic;
Q: buffer std_logic_vector(0 to 7)
);
end component;
begin
Register_16Byte:for i in 0 to 15 generate
Generation: register_8bit port map(D,clk,RST,W(i),R(i),Q);
end generate;
end architecture;