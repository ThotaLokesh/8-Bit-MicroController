library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
port(
i0,i1,sel: in std_logic;
F: buffer std_logic
);
end entity;

architecture df of mux2_1 is
begin
F<=(NOT SEL AND i0) OR (SEL and i1);
end architecture;