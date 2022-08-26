library ieee;
use ieee.std_logic_1164.all;

entity Test_Bench is
end entity;

architecture tb of Test_Bench is
signal clk,RST: std_logic;
signal Q:std_logic_vector(7 downto 0);
begin
uut: entity work.counter_8bit port map(clk,RST,Q);
RST<='0','1' after 1ns;
proc:process
variable var: integer;
begin
for var in 0 to 300 loop
if (var mod 2)= 0 then
clk<='0';
wait for 10ns;
else 
clk<='1';
wait for 10ns;
end if;
end loop;
end process;
end architecture;