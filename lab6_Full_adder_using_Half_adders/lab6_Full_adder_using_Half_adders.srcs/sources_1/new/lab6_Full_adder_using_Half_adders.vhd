----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2023 10:13:40 PM
-- Design Name: 
-- Module Name: lab6_Full_adder_using_Half_adders - Behavioral
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

entity lab6_Full_adder_using_Half_adders is
Port (
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        sum : out std_logic;
        carry : out std_logic

 );
end lab6_Full_adder_using_Half_adders;

architecture Behavioral of lab6_Full_adder_using_Half_adders is

    signal sum1,sum2,carry1,carry2 : std_logic;    

    component Half_adder is  --component declaration
        Port (
               A : in std_logic;
               B : in std_logic;
               sum: out std_logic;
               carry: out std_logic
        
         );
        end component;    

    
begin

HA1: Half_adder port map (
    
                        A => A,    --Left is the component port name , right is the signal or output or input of the top or larger design.
                        B => B,
                        sum => sum1,
                        carry => carry1
    
);


HA2: Half_adder port map (
    
                        A => sum1,    --Left is the component port name , right is the signal or output or input of the top or larger design.
                        B => Cin,
                        sum => sum2,
                        carry => carry2
    
);

sum <=sum2;
carry<= carry1 or carry2;
end Behavioral;
