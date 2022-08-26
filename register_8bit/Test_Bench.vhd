library ieee;
use ieee.std_logic_1164.all;

entity Test_Bench is
end entity;

architecture tb of test_bench is
signal D: std_logic_vector(7 downto 0);
signal clk,RST,W,R:std_logic;
signal Q: std_logic_vector(7 downto 0);
begin
uut: entity work.register_8bit port map(D,clk,RST,W,R,Q);
RST<='0','1' after 1 ns;
clk<='0','1' after 20 ns, '0' after 40 ns,'1' after 60 ns,'0' after 80 ns,'1' after 100 ns,'0' after 120 ns;
W<='1','1' after 60 ns;
R<='1','1' after 60 ns;
D<="00000000","10101100" after 30 ns, "10111000" after 70 ns,"00010111" after 90 ns,"00001111" after 110 ns;
end architecture;