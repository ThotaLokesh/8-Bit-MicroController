library ieee;
use ieee.std_logic_1164.all;

entity Test_bench is
end entity;

architecture Tb of Test_bench is
signal A:std_logic_vector(3 downto 0);
signal F:std_logic_vector(15 downto 0);
begin
uut: entity work.Decoder_4ip_16op port map(A,F);
A<="0000","1111" after 20 ns, "1010" after 40ns, "0011" after 60ns, "1110" after 80ns;
end architecture;