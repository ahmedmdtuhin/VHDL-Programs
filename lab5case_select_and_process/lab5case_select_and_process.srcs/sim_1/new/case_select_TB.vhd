----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2023 05:22:11 PM
-- Design Name: 
-- Module Name: case_select_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity case_select_TB is
end case_select_TB;

architecture Behavioral of case_select_TB is

    component case_select is
        Port (
            A : in std_logic;
            B : in std_logic; 
            C : in std_logic;
            D : in std_logic;
            sel : in std_logic_vector (1 downto 0);
            Y : out std_logic
         );
    end component;

signal A,B,C,D,Y : std_logic :='0';
signal sel : std_logic_vector(1 downto 0):= (others =>'0');

begin
DUT: case_select port map (

                    A=> A,
                    B=> B,
                    C=> C,
                    D=> D,
                    sel => sel,
                    Y=> Y

);

stimulus: process
begin
wait for 10 ns;

A <= '1';
B <= '1';
C <= '0';
D <= '0';

sel <= "00";
wait for 10 ns;
report "Inputs are initiated" severity note;
assert(Y='1') report "Failed at sel 00" severity note;

sel <="01";
wait for 10 ns;
assert (Y='1') report " Failed at sel 01" severity note;

sel <= "10";
wait for 10 ns;
assert (Y='0') report "Failed at sel 10"severity note;

sel <= "11";
assert (Y='1') report "Passed at sel 11" severity note;



end process;

end Behavioral;
