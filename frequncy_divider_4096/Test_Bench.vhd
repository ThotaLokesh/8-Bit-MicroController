library ieee;
use ieee.std_logic_1164.all;

entity Test_Bench is
end entity;

architecture tb of Test_Bench is
signal clk,RST,Q,Q1: std_logic;
begin
uut: entity work.freq_div_4096 port map(clk,RST,Q,Q1);
RST<='0','1' after 1 ns;
label_P:process
variable var:integer range 0 to 10001 :=0;
begin
label1:while var<10001 loop
if ((var)mod 2)=0 then
clk<='0';
wait for 10 ns;
else
clk<='1';
wait for 10 ns;
end if;
var:=var+1;
end loop;
wait;
end process;
end architecture;
