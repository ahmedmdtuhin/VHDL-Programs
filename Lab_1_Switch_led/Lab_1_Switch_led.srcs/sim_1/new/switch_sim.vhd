----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2023 01:49:29 PM
-- Design Name: 
-- Module Name: switch_sim - Behavioral
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

entity switch_sim is
end switch_sim;

architecture Behavioral of switch_sim is
component switch_led is
        Port (switch1: in std_logic;
              switch2: in std_logic;
              led1 : out std_logic;
              led2 : out std_logic
                 );
     end component;

--signal a,b,c,d :std_logic :='0';
signal a : std_logic :='0';
signal b : std_logic :='0';
signal c : std_logic ;
signal d :std_logic;

begin
DUT : switch_led 
port map (
    switch1=>a,
    switch2=>b,
    led1=>c,
    led2=>d
);

stimulus : process
begin

wait for 100 ns;
a<='0';
b<='0';
wait for 10 ns;

a<='1';
b<='0';
wait for 10 ns;

a<='0';
b<='1';
wait for 10 ns;

a<='1';
b<='1';
wait for 10 ns;

wait;
end process;

end Behavioral;
