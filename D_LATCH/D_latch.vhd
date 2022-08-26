library ieee;
use ieee.std_logic_1164.all;

Entity D_latch is
port(
D,clk,RST: in std_logic;
Q,Q1: buffer std_logic
);
end entity;

architecture struc of D_latch is
signal s0,s1: std_logic;

component nand_2
port(
A,B: in std_logic;
F: out std_logic
);
end component;

component nand_3
port(
A,B,C: in std_logic;
F: out std_logic
);
end component;
begin
nand0: nand_2 port map(D,clk,s0);
nand1: nand_2 port map(not D,clk,s1);
nand2: nand_2 port map(s0,Q1,Q);
nand3: nand_3 port map(s1,Q,RST,Q1);
end architecture;
