----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2023 02:21:51 PM
-- Design Name: 
-- Module Name: with_select - Behavioral
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

entity with_select is
Port (
       A : in std_logic;
       B : in std_logic;
       C : in std_logic;
       D : in std_logic;
       control : in std_logic_vector(1 downto 0);
       Z : out std_logic

 );
end with_select;

architecture Behavioral of with_select is

signal control_signal : std_logic_vector (1 downto 0);

begin

control_signal<= control;
with control_signal select 
Z <= A when "00", 
     B when "01",
     C when "10",
     D when "11",
     '0' when others;

end Behavioral;
