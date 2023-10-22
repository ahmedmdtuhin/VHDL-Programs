library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity and_tb is
end and_tb;


architecture Behavioral of and_tb is
 
component and_gate is
        port (
            a : in std_logic;
            b : in std_logic;
            c : out std_logic);
end component;    

signal a,b,c : std_logic :='0';

begin
 -- Instatntiate the uut-unit under test(the module we watnt to test)   
    
DUT : and_gate
port map (
    a => a,
    b => b,
    c => c
);

stimulus : process 
begin

    report "starting input pattern" severity note;
    a<='0'; 
    b<='0';
    wait for 100 ns;
    report "Input pattern 00" severity note;
    assert (c='0') report "Failed at input 00" severity note;

    a<='0'; 
    b<='1';
    wait for 100 ns;

    a<='1'; 
    b<='0';
    wait for 100 ns;

    a<='1'; 
    b<='1';
    wait for 100 ns;

wait;
end process;
end Behavioral;


