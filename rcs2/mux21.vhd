----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:59:31 06/21/2023 
-- Design Name: 
-- Module Name:    mux21 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux21 is
    Port ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
           D1 : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end mux21;

architecture Behavioral of mux21 is

begin

process(D0, D1, S) 
	begin
 
 case S is 
	when '0' =>
		O<=D0;
	when '1' =>
		O<=D1;
	when others =>
		O <= (others => 'X');
 end case;

end process;


end Behavioral;
