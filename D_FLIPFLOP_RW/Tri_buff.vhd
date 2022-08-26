library ieee;
use ieee.std_logic_1164.all;

entity tri_buff is
port(
A,sel:in std_logic;
F:out std_logic
);
end entity;

architecture df of tri_buff is
begin
F<=A when sel='1' else 'Z';
end architecture;