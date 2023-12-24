----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2023 03:51:02 PM
-- Design Name: 
-- Module Name: lab8_voting_FSM_TB - Behavioral
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
--use IEEE.std_logic_arith.all;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab8_voting_FSM_TB is
end lab8_voting_FSM_TB;

architecture Behavioral of lab8_voting_FSM_TB is

component lab8_voting_machine is 
    port (
        clk : in std_logic;
        reset : in std_logic;
        party1: in std_logic;
        party2: in std_logic;
        party3: in std_logic;
        select_party : in std_logic;
        count1_op : out std_logic_vector(5 downto 0);
        count2_op : out std_logic_vector(5 downto 0);
        count3_op : out std_logic_vector(5 downto 0)
  
  
   );
  end component;
--Inputs
signal clk :std_logic :='0';
signal reset: std_logic :='0';
signal party1 : std_logic :='0';
signal party2 : std_logic := '0';
signal party3 :std_logic := '0'; 
signal select_party : std_logic := '0';
--Outputs
signal count1_op : std_logic_vector (5 downto 0):=(others=>'0');
signal count2_op : std_logic_vector (5 downto 0):=(others=>'0');
signal count3_op : std_logic_vector (5 downto 0):=(others=>'0');
-- Clock definition
constant clk_period : time := 5 ns;

begin
UUT : lab8_voting_machine 
port map (
    clk=> clk,
    reset => reset,
    party1 => party1,
    party2 => party2,
    party3 => party3,
    select_party => select_party,
    count1_op => count1_op,
    count2_op => count2_op,
    count3_op => count3_op

);

clk_process : process
begin

    clk<='0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;

end process;

stimulus : process
begin
wait for 100 ns;
wait for clk_period*10 ;

reset<='1';
wait for 10 ns;
reset<= '0';

party1<='0';
party2<='0';
party3<='0';
--wait for 10 ns;

party1<='1'; -- 1st vote for party1
wait for 10 ns;
party1<='0';
wait for 10 ns;
select_party<='1';
wait for 10 ns;
select_party<='0';
wait for 10 ns;

assert (count1_op="000001") report "Failed for party 1_1" severity note;

party1<='1'; -- 2nd vote for party1
wait for 10 ns;
party1<='0';
wait for 10 ns;
select_party<='1';
wait for 10 ns;
select_party<='0';
wait for 10 ns;
assert (count1_op="000010") report "Failed for party 1_2" severity note;
party1<='1'; -- 3rd vote for party1, so far 3 votes should be counted
wait for 10 ns;
party1<='0';
wait for 10 ns;
select_party<='1';
wait for 10 ns;
select_party<='0';
wait for 10 ns;
assert (count1_op="000011") report "Failed for party1_3" severity note;
party2<='1'; -- party2 get 1 vote
wait for 10 ns;
party2<='0';
wait for 10 ns;
select_party<='1';
wait for 10 ns;
select_party<='0';
wait for 10 ns;
assert (count2_op="000001") report "Failed for party2_1" severity note;
party3<='1'; -- party3 get 1 vote
wait for 10 ns;
party3<='0';
wait for 10 ns;
select_party<='1';
wait for 10 ns;
select_party<='0';
wait for 10 ns;
assert (count3_op="000001") report "Failed for party3_1" severity note;


    wait;
end process;
end Behavioral;
