----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2023 01:20:41 AM
-- Design Name: 
-- Module Name: If_else - Behavioral
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

entity If_else is
Port (
       A : in std_logic;
       B : in std_logic;
       C : in std_logic;
       D : in std_logic;
       sel : in std_logic_vector(2 downto 0);
       Y : out std_logic

 );
end If_else;

architecture Behavioral of If_else is

begin

process (A,B,C,D,sel)
    begin
        if (sel(0) = '1' ) then 
          Y <= A;
          elsif (sel(1) = '1') then
          Y <= B;
          elsif (sel(2) ='1') then
                Y<=C;
          else
                Y<=D;
        end if;

end process;
end Behavioral;
