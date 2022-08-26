LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity and_4 is
port(
A: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
F:out std_logic
);
end entity;

architecture df of and_4 is
begin
F<=(A(0) AND A(1) AND A(2) AND A(3));
end architecture;