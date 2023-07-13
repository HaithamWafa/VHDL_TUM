----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:50 06/21/2023 
-- Design Name: 
-- Module Name:    reg16 - Behavioral 
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

entity reg16 is
    Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (15 downto 0));
end reg16;

architecture Behavioral of reg16 is

begin

process (clk) begin
if (rising_edge(clk)) then
	if(enable='1') then 
		data_out<=data_in; --no else statement, tool might infer a latch! check if u have implementation problems
	
		end if;
	end if;

end process;


end Behavioral;

