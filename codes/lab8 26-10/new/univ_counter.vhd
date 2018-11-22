----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2018 02:38:54 PM
-- Design Name: 
-- Module Name: univ_counter - Behavioral
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

entity univ_counter is
    Port ( count : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           res : out std_logic_vector(1 downto 0));
end univ_counter;

architecture Behavioral of univ_counter is

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

process(pr_st,count)
begin
    case pr_st is
        when a => 
            res<="00";
            if (count = '1')then
                nx_st<=d;
            else
                nx_st<=b;
            end if;

        when b => 
            res<="01";
            if (count = '1')then
               nx_st<=a;
            else
               nx_st<=c;
            end if;
        when c => 
             res<="10";
             if (count = '1')then
                nx_st<=b;
             else
                nx_st<=d;
             end if;
                                            
        when d => 
              res<="11";
              if (count = '1')then
                 nx_st<=c;
              else
                 nx_st<=a;
              end if;
              
        end case;
 end process;
                
                


end Behavioral;
