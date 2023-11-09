----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2023 11:28:20 PM
-- Design Name: 
-- Module Name: Full_adder_TB - Behavioral
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

entity Full_adder_TB is
end Full_adder_TB;

architecture Behavioral of Full_adder_TB is
    component lab6_Full_adder_using_Half_adders is
        Port (
                A : in std_logic;
                B : in std_logic;
                Cin : in std_logic;
                sum : out std_logic;
                carry : out std_logic
        
         );
        end component;

signal A_TB : std_logic := '0';
signal B_TB : std_logic := '0';
signal Cin_TB : std_logic := '0';
signal sum_TB : std_logic := '0';
signal carry_TB: std_logic :='0';  

begin

UUT : lab6_Full_adder_using_Half_adders 
port map (
    A=> A_TB,
    B=> B_TB,
    Cin=>Cin_TB,
    sum=> sum_TB,
    carry=>carry_TB
);    

stimulus : process

begin
wait for 100 ns;

A_TB<='0';
B_TB<= '0';
Cin_TB<= '0';
wait for 10 ns;-- expected output is 0 0.
A_TB<='1';
B_TB<= '0';
Cin_TB<= '0';
wait for 10 ns; -- expected output 1 0
A_TB<='1';
B_TB<= '0';
Cin_TB<= '1';
wait for 10 ns; -- expected output 0 1
A_TB<='1';
B_TB<= '1';
Cin_TB<= '1'; -- expected output 1 1


wait;
end process;
end Behavioral;
