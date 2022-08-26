library ieee;
use ieee.std_logic_1164.all;

entity test_bench is
end entity;

architecture tb of test_bench is
signal s0,s1,s2,s3,s4: std_logic;
begin
uut: entity work.D_flipflop port map(s0,s1,s2,s3,s4);
s2<='0','1' after 1 ns;
s1<='0','1' after 20 ns, '0' after 40 ns,'1' after 60 ns,'0' after 80 ns,'1' after 100 ns,'0' after 120 ns;
s0<='0','1' after 10 ns, '1' after 20 ns,'0' after 40 ns,'1' after 50 ns,'0' after 80 ns,'1' after 120 ns;
end architecture;