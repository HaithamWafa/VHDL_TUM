----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulop is
    Port ( I_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR (15 downto 0);
			  debug: out STD_LOGIC_VECTOR (16 downto 0));
end mulop;

architecture Behavioral of mulop is 
begin

multiplication: process (I_1, I_2) 

variable temp: integer range 0 to 65535;
--variable tempo: std_logic_vector(15 downto 0);
variable operand_1: integer range 0 to 65536; --17 bits to include 2^16
variable operand_2: integer range 0 to 65536;
variable abdiv2n: integer range 0 to 65536; --17 bits to accomodate max value
variable abmod2n: integer range 0 to 65535; --16 bits to do a mod 2^16


begin

if (I_1 = x"0000") then 
	operand_1 := 65536;
	
else
	operand_1 := to_integer(unsigned(I_1));
	
end if;


--operand_1:= 65536 when I_1 = x"0000" else to_integer(unsigned(I_1));
--operand_2:= 65536 when I_2 = x"0000" else to_integer(unsigned(I_2));



if (I_2 = x"0000") then 
	operand_2 := 65536;
else
	operand_2 := to_integer(unsigned(I_2));
end if;

if (operand_1 = 65536 and operand_2 = 65536) then

	abdiv2n := operand_1*(operand_2/65536);

else

	abdiv2n := (operand_1*operand_2)/65536;

end if;

abmod2n := operand_1*operand_2;

--if(abmod2n>=65536) then abmod2n:=abmod2n-65536; end if;
--if(abdiv2n>=65536) then abdiv2n:=abdiv2n-65536; end if;

if abmod2n >= abdiv2n then

	temp:=abmod2n-abdiv2n; 
	
	--tempo:=std_logic_vector(to_unsigned((abmod2n-abdiv2n),16));
	


else

	temp:=abmod2n-abdiv2n + 65536 + 1;
	
	--if temp >= 65536 then temp:=0; end if;
	--tempo:=std_logic_vector(to_unsigned((abmod2n-abdiv2n + 65536 + 1),16));
end if;

debug <= std_logic_vector(to_unsigned(abdiv2n, 17)); 

O_1<= std_logic_vector(to_unsigned(temp, 16)); 
--O_1<=tempo;


end process;


end Behavioral;

