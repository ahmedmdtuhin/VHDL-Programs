----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2023 12:45:25 PM
-- Design Name: 
-- Module Name: switch_led - Behavioral
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

entity switch_led is
   Port (switch1: in std_logic;
         switch2: in std_logic;
         led1 : out std_logic;
         led2 : out std_logic
            );
end switch_led;


architecture Behavioral of switch_led is

begin
led1<= switch1;
led2<= switch2;

end Behavioral;