library ieee;
use ieee.std_logic_1164.all;

Entity nand_2 is
port(
A,B: in std_logic;
F: out std_logic
);
end entity;

architecture df of nand_2 is
begin
F<= A nand B;
end architecture;