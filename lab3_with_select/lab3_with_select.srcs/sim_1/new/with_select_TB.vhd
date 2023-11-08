----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2023 02:48:17 PM
-- Design Name: 
-- Module Name: with_select_TB - Behavioral
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

entity with_select_TB is
end with_select_TB;

architecture Behavioral of with_select_TB is
component with_select is
        Port (
               A : in std_logic;
               B : in std_logic;
               C : in std_logic;
               D : in std_logic;
               control : in std_logic_vector(1 downto 0);
               Z : out std_logic
        
         );
        end component;

--Inputs and outputs 
signal A_TB : std_logic :='0';
signal B_TB : std_logic :='0';
signal C_TB : std_logic :='0';
signal D_TB : std_logic :='0';
signal control_TB : std_logic_vector(1 downto 0) := (others=>'0');
signal Z_TB : std_logic;

begin
UUT: with_select port map (
    A => A_TB,
    B => B_TB,
    C => C_TB,
    D => D_TB,
    control => control_TB,
    Z => Z_TB
);

Stimulus: process
begin

    wait for 100 ns;
    A_TB <='1';
    B_TB <='0';
    C_TB <='1';
    D_TB <='0';
    control_TB <= "00";

    wait for 10 ns;

    control_TB <= "01";
    wait for 10 ns;
    control_TB <= "10";
    wait for 10 ns;
    control_TB <= "11";



wait;    
end process;    
end Behavioral;
