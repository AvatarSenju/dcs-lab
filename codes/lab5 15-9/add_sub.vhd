----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2018 03:37:18 PM
-- Design Name: 
-- Module Name: add_sub - structural
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

entity add_sub is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           m : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           c : out STD_LOGIC);
end add_sub;

architecture structural of add_sub is


component full_dataflow is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

signal c1,c2,c3,x0,x1,x2,x3:STD_LOGIC;

begin
x0<=b(0) xor m;
x1<=b(1) xor m;
x2<=b(2) xor m;
x3<=b(3) xor m;

fa0:full_dataflow port map(a(0),x0,m,s(0),c1);
fa1:full_dataflow port map(a(1),x1,c1,s(1),c2);
fa2:full_dataflow port map(a(2),x2,c2,s(2),c3);
fa3:full_dataflow port map(a(3),x3,c3,s(3),c);


end structural;
