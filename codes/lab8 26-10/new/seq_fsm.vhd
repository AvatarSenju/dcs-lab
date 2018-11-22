----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2018 02:36:34 PM
-- Design Name: 
-- Module Name: seq_fsm - Behavioral
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

entity seq_fsm is
    Port ( inp : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           res : out STD_LOGIC);
end seq_fsm;

architecture Behavioral of seq_fsm is

type state_type is (a,b,c,d);
signal pr_st,nx_st:state_type;



begin

process(clk,reset)
    begin
    if (reset='1')then
        pr_st<=a;
    elsif(rising_edge(clk))then
        pr_st<=nx_st;
    end if;
end process;




process(pr_st,inp)
    begin
    case pr_st is 
        when a=>
            res<='0';
            if(inp = '1')then
                nx_st<=b;
            else
                nx_st<=a;
            end if;


        when b=>
            res<='0';
            if(inp = '1')then
                nx_st<=c;
            else
                nx_st<=a;
            end if;
                
        when c=>
            res<='0';
            if(inp = '1')then
                nx_st<=c;
            else
                nx_st<=d;
            end if;
                               
                               
        when d=>
            
            if(inp = '1')then
                res<='1';
                nx_st<=b;
            else
                res<='0';
                nx_st<=a;
            end if;
       end case;
end process;



end Behavioral;
