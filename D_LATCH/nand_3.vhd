library ieee;
use ieee.std_logic_1164.all;

Entity nand_3 is
port(
A,B,C: in std_logic;
F: out std_logic
);
end entity;

architecture df of nand_3 is
begin
F<= not(A and B and C);
end architecture;