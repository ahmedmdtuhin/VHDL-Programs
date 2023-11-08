----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2023 04:16:24 PM
-- Design Name: 
-- Module Name: case_select - Behavioral
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

entity case_select is
    Port (
        A : in std_logic;
        B : in std_logic; 
        C : in std_logic;
        D : in std_logic;
        sel : in std_logic_vector (1 downto 0);
        Y : out std_logic
     );
end case_select;

architecture Behavioral of case_select is

begin
process (A,B,C,D,sel)
begin 

        case sel is 
            when "00" => Y <= A;
            when "01" => Y <= B;
            when "10" => Y <= C;
            when "11" => Y <= D;
            when others => Y <='0';
        end case ;
end process;
end Behavioral;
