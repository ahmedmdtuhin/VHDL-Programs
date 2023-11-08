----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2023 07:12:55 AM
-- Design Name: 
-- Module Name: when_else_TB - Behavioral
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

entity when_else_TB is
--  Port ( );
end when_else_TB;

architecture Behavioral of when_else_TB is
component when_else is
        Port (
            A         : in std_logic;
            B         : in std_logic;
            C         : in std_logic;
            assign_A  : in std_logic;
            assign_B  : in std_logic;
            Z         : out std_logic
        );
    end component;
--Inputs and outputs
signal A_TB, B_TB,C_TB,assign_A_TB,assign_B_TB : std_logic :='0';
signal Z_TB : std_logic;

begin
UUT: when_else 
port map (
    A=> A_TB,
    B=>B_TB,
    C=>C_TB,
    assign_A=>assign_A_TB,
    assign_B=>assign_B_TB,
    Z=>Z_TB
    
);

Stimulus: process
begin

wait for 100 ns;

A_TB<= '1';
B_TB<= '0';
C_TB<= '1';
assign_A_TB<='0';
assign_B_TB<='1';
wait for 10 ns;
report "Input patternt 101 01" severity note;
assert (Z_TB='1') report "Passed at input 101 01" severity note;


assign_A_TB<= '1';
assign_B_TB<= '0';
wait for 10 ns;

assign_A_TB <='0';
assign_B_TB<= '0';
wait;

    


end process;
end Behavioral;
