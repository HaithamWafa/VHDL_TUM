----------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
-- 
-- Create Date:    15:12:17 05/11/2023 
-- Design Name: 
-- Module Name:    addop - Behavioral 
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


entity addop is
    Port ( I_1 : in  STD_LOGIC_VECTOR(15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR(15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR(15 downto 0));
end addop;

architecture Behavioral of addop is
begin

process(I_1, I_2)
variable temp: unsigned(15 downto 0);
begin

temp:= unsigned(I_1) + unsigned(I_2);

O_1<=std_logic_vector(temp); 


end process;


end Behavioral;

