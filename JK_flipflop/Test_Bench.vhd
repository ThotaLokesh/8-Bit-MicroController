library ieee;
use ieee.std_logic_1164.all;

entity test_bench is
end entity;

architecture tb of test_bench is
signal J,K,clk,RST,Q,Q1: std_logic;
begin
uut: entity work.JK_flipflop port map(J,K,clk,RST,Q,Q1);
RST<='0','1' after 1 ns;
clk<='0','1' after 20 ns, '0' after 40 ns,'1' after 60 ns,'0' after 80 ns,'1' after 100 ns,'0' after 120 ns,
'1' after 140 ns, '0' after 160 ns,'1' after 180 ns,'0' after 200 ns,'1' after 220 ns,'0' after 240 ns;
J<='0','1' after 10 ns, '1' after 30 ns,'0' after 50 ns,'1' after 70 ns,'1' after 90 ns,'0' after 110 ns
,'1' after 130 ns, '1' after 150 ns,'0' after 170 ns,'1' after 190 ns,'1' after 210 ns,'0' after 230 ns;
K<='0','1' after 10 ns, '0' after 30 ns,'1' after 50 ns,'1' after 70 ns,'0' after 90 ns,'0' after 110 ns
,'0' after 130 ns, '1' after 150 ns,'0' after 170 ns,'1' after 190 ns,'1' after 210 ns,'0' after 230 ns;
end architecture;