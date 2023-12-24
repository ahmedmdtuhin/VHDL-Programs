----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2023 11:51:23 AM
-- Design Name: 
-- Module Name: counter_and_clock_divider_TB - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_and_clock_divider_TB is
end counter_and_clock_divider_TB;

architecture Behavioral of counter_and_clock_divider_TB is
--component 
    component lab7_counter_and_clock_divider is
        Port ( 
               clk : in std_logic;
               reset : in std_logic;
               clk_out :out std_logic;
               count_out : out std_logic_vector(3 downto 0)
        
        );
        end component;
--I/O signals
signal clk : std_logic := '0';
signal reset : std_logic :='0';
signal clk_out : std_logic;
signal count_out : std_logic_vector(3 downto 0);

-- clock period definition
constant clk_period : time := 10 ns;

begin

UUT : lab7_counter_and_clock_divider
port map (
    clk=> clk,
    reset => reset,
    clk_out => clk_out,
    count_out => count_out
);

clk_process : process 
begin
 clk<= '0';
 wait for clk_period/2;
 clk<= '1';
 wait for clk_period/2;

end process;


stimulus: process 
begin
    wait for 100 ns; -- hold reset for 100 ns

    wait for clk_period*10;
    reset <= '1';
    wait for 100 ns;
    reset<= '0';
    wait;
end process;
end Behavioral;
