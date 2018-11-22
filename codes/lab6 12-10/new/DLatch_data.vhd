----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2018 02:17:05 PM
-- Design Name: 
-- Module Name: DLatch_data - Behavioral
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

entity DLatch_data is
    Port ( d : in STD_LOGIC;
           en : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end DLatch_data;

architecture Behavioral of DLatch_data is
signal tq : STD_LOGIC :='0';
signal tqb : STD_LOGIC :='1';
signal a,b: STD_LOGIC;
begin

--temp<=(d nand en) nand (not temp);
--q<=temp;
--qb<=not temp;
a<=(not d) and en;
b<=d and en;
tq<=tqb nor a;
tqb<=tq nor b;
q<=tq;
qb<=tqb;

end Behavioral;
