library ieee;
use ieee.std_logic_1164.all;

entity test_bench is
end entity;

architecture tb of test_bench is
signal D,clk,RST,W,R,Q: std_logic;
begin
uut: entity work.D_flipflop_rw port map(D,clk,RST,W,R,Q);
RST<='0','1' after 1 ns;
clk<='0','1' after 20 ns, '0' after 40 ns,'1' after 60 ns,'0' after 80 ns,'1' after 100 ns,'0' after 120 ns;
D<='0','1' after 10 ns, '1' after 20 ns,'0' after 40 ns,'1' after 50 ns,'0' after 80 ns,'1' after 120 ns;
W<='1','1' after 60 ns;
R<='1','0' after 60 ns;
end architecture;