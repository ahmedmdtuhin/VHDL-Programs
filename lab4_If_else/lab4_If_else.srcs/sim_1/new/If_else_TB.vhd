----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2023 01:55:06 PM
-- Design Name: 
-- Module Name: If_else_TB - Behavioral
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

entity If_else_TB is
end If_else_TB;

architecture Behavioral of If_else_TB is
component If_else is
        Port (
               A : in std_logic;
               B : in std_logic;
               C : in std_logic;
               D : in std_logic;
               sel : in std_logic_vector(2 downto 0);
               Y : out std_logic
        
         );
        end component;

signal  A_TB : std_logic := '0';       
signal  B_TB : std_logic := '0';   
signal  C_TB : std_logic := '0';       
signal  D_TB : std_logic := '0';  
signal sel_TB : std_logic_vector (2 downto 0 ) := (others => '0');
signal Y_TB : std_logic;

begin
UUT : If_else port map
 (
    A => A_TB,
    B => B_TB,
    C => C_TB,
    D => D_TB,
    sel=> sel_TB,
    Y => Y_TB

);

Stimulus: process

begin 
wait for 100 ns;

A_TB <= '1';
B_TB <= '0';
C_TB <= '0';
D_TB <= '1';

sel_TB <= "100" ; -- select line 2 is set high 
wait for 10 ns;
report "Input pattern 1001 " severity note;
assert (Y_TB='1') report "Passed at input 1001 for select line 2 so, C will pass to the output which is 0" severity note;

sel_TB <= "001";
wait for 10 ns;
assert (Y_TB ='0') report "passed at input 1001 for A which is 1" severity note;

sel_TB <= "011";
wait for 10 ns;
assert (Y_TB='0') report "Passed for A which is 1" severity note;

sel_TB <= "000";
wait for 10 ns;
assert (Y_TB='0') report "passed for others D is 1" severity note;

wait;
end process;
end Behavioral;
