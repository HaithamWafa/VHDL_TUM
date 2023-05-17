----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--questions
-- the adder should have a mod of 65536 or 65535?
-- if anyways we have a modulo, then no overflow will happen, it will just wrap around. is that correct? should we just test for the wrap around behavior?
-- should the adder handle negative (signed) inputs? or should we assume unsigned inputs
-- which test cases should we test for to verify completeness
-- modulo mutluplier: low-high algorithm?
-- should this first submission work on FPGA or only simulation?
entity addop is
    Port ( I_1 : in  STD_LOGIC_VECTOR(15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR(15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR(15 downto 0));
end addop;

architecture Behavioral of addop is
begin

process(I_1, I_2)
variable temp: integer range 0 to 65535;
begin
temp:= to_integer(unsigned(I_1))+ to_integer(unsigned(I_2));

O_1<=std_logic_vector(to_unsigned(temp, 16)); 


end process;


end Behavioral;

