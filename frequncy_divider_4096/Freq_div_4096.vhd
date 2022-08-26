library ieee;
use ieee.std_logic_1164.all;

entity Freq_div_4096 is
port(
clk,RST: in std_logic;
Q,Q1:out std_logic
);
end entity;

architecture struc of Freq_div_4096 is
component JK_flipflop
port(
J,K,clk,RST: in std_logic;
Q,Q1:buffer std_logic
);
end component;

signal s1:std_logic;
signal m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11:std_logic;
signal n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11:std_logic;
begin 
s1<='1';
CNTR1: JK_flipflop port map(s1,s1,clk,RST,m1,n1);
CNTR2: JK_flipflop port map(s1,s1,n1,RST,m2,n2);
CNTR3: JK_flipflop port map(s1,s1,n2,RST,m3,n3);
CNTR4: JK_flipflop port map(s1,s1,n3,RST,m4,n4);
CNTR5: JK_flipflop port map(s1,s1,n4,RST,m5,n5);
CNTR6: JK_flipflop port map(s1,s1,n5,RST,m6,n6);
CNTR7: JK_flipflop port map(s1,s1,n6,RST,m7,n7);
CNTR8: JK_flipflop port map(s1,s1,n7,RST,m8,n8);
CNTR9: JK_flipflop port map(s1,s1,n8,RST,m9,n9);
CNTR10: JK_flipflop port map(s1,s1,n9,RST,m10,n10);
CNTR11: JK_flipflop port map(s1,s1,n10,RST,m11,n11);
CNTR12: JK_flipflop port map(s1,s1,n11,RST,Q,Q1);
end architecture;