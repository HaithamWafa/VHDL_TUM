----------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    mulop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mulop is
    Port ( I_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR (15 downto 0));
end mulop;

architecture Behavioral of mulop is 
begin


multiplication: process(I_1, I_2)
        variable a_temp: unsigned(16 downto 0);
        variable b_temp: unsigned(16 downto 0);
		  variable abmod2n: unsigned(15 downto 0);
		  variable abdiv2n: unsigned(16 downto 0);
		  variable temp: unsigned(15 downto 0);
        variable mult_result: unsigned(33 downto 0);
    begin

        
        if I_1 = x"0000" then
            a_temp := "10000000000000000";
        else
            a_temp := unsigned("0" &I_1);
        end if;
        
        if I_2 = x"0000" then
            b_temp := "10000000000000000";
        else
            b_temp := unsigned("0" & I_2);
        end if;

        
        mult_result := a_temp * b_temp;
		  
		  abmod2n:=mult_result(15 downto 0);
		  abdiv2n:=mult_result(32 downto 16);
		  
			if abmod2n >= abdiv2n then

				temp:=to_unsigned((to_integer(abmod2n)-to_integer(abdiv2n)),16); 
				
			else

				temp:=to_unsigned((to_integer(abmod2n)- to_integer(abdiv2n) + 65536 + 1),16);
				
			end if;
		  
       O_1 <= std_logic_vector(temp);
		 
    end process;

end Behavioral;

