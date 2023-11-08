----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2023 07:38:17 AM
-- Design Name: 
-- Module Name: when_else - Behavioral
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

entity when_else is
    Port (
        A         : in std_logic;
        B         : in std_logic;
        C         : in std_logic;
        assign_A  : in std_logic;
        assign_B  : in std_logic;
        Z         : out std_logic
    );
end when_else;

architecture Behavioral of when_else is

begin

Z<=A when assign_A ='1' else
   B when assign_B ='1' else
   C;

end Behavioral;
