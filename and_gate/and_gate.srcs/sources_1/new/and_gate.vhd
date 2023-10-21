library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity and_gate is
    port (
        a : in std_logic;
        b : in std_logic;
        c : out std_logic
    );
end and_gate;

architecture Behavioral of and_gate is

begin

c<=a and b;


end Behavioral;
