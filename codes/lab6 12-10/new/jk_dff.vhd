----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2018 03:07:36 PM
-- Design Name: 
-- Module Name: jk_dff - Behavioral
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

entity jk_dff is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end jk_dff;

architecture Behavioral of jk_dff is

component d_flip is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end component;

signal tq:STD_LOGIC:='0';
signal tqb:STD_LOGIC:='1';
signal temp:STD_LOGIC;

begin

temp<=(j and tqb) or ( (not k) and tq);
d1: d_flip port map(temp,clk,tq,tqb);
q<=tq;
qb<=tqb;

end Behavioral;
