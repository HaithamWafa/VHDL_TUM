----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:15:30 06/22/2023 
-- Design Name: 
-- Module Name:    key_generator - Behavioral 
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

entity key_generator is
    Port ( key : in  STD_LOGIC_VECTOR (127 downto 0);
           round_counter : in  STD_LOGIC_VECTOR (3 downto 0);
           key1 : out  STD_LOGIC_VECTOR (15 downto 0);
           key2 : out  STD_LOGIC_VECTOR (15 downto 0);
           key3 : out  STD_LOGIC_VECTOR (15 downto 0);
           key4 : out  STD_LOGIC_VECTOR (15 downto 0);
           key5 : out  STD_LOGIC_VECTOR (15 downto 0);
           key6 : out  STD_LOGIC_VECTOR (15 downto 0));
end key_generator;

architecture Behavioral of key_generator is
begin

process (key, round_counter) begin

case round_counter is 
	when "0000" =>
		key1<=key(127 downto 112);
		key2<=key(111 downto 96);
		key3<=key(95 downto 80);
		key4<=key(79 downto 64);
		key5<=key(63 downto 48);
		key6<=key(47 downto 32);
	when "0001" =>
	   key1<=key(31 downto 16);
		key2<=key(15 downto 0);
		key3<=key(102 downto 87);
		key4<=key(86 downto 71);
		key5<=key(70 downto 55);
		key6<=key(54 downto 39);
	when "0010" =>
		key1<=key(38 downto 23);
		key2<=key(22 downto 7);
		key3<=(key(6 downto 0) & key(127 downto 119));
		key4<=key(118 downto 103);
		key5<=key(77 downto 62);
		key6<=key(61 downto 46);
	when "0011" =>
		key1<=key(45 downto 30);
		key2<=key(29 downto 14);
		key3<= (key(13 downto 0) & key(127 downto 126));
		key4<=key(125 downto 110);
		key5<=key(109 downto 94);
		key6<=key(93 downto 78);
	when "0100" =>
		key1<=key(52 downto 37);
		key2<=key(36 downto 21);
		key3<=key(20 downto 5);
		key4<=(key(4 downto 0) & key(127 downto 117));
		key5<=key(116 downto 101);
		key6<=key(100 downto 85);
	when "0101" =>
		key1<=key(84 downto 69);
		key2<=key(68 downto 53);
		key3<=key(27 downto 12);
		key4<=(key(11 downto 0) & key(127 downto 124));
		key5<=key(123 downto 108);
		key6<=key(107 downto 92);
	when "0110" =>
		key1<=key(91 downto 76);
		key2<=key(75 downto 60);
		key3<=key(59 downto 44);
		key4<=key(43 downto 28);
		key5<=(key(2 downto 0) & key(127 downto 115));
		key6<=key(114 downto 99);
	when "0111" =>
		key1<=key(98 downto 83);
		key2<=key(82 downto 67);
		key3<=key(66 downto 51);
		key4<=key(50 downto 35);
		key5<=key(34 downto 19);
		key6<=key(18 downto 3);
	when "1000" =>
		key1<=key(105 downto 90);
		key2<=key(89 downto 74);
		key3<=key(73 downto 58);
		key4<=key(57 downto 42);
		key5<=(others =>'0');
		key6<=(others =>'0');
	when others =>
		key1<= (others =>'0');
		key2<= (others =>'0');
		key3<= (others =>'0');
		key4<= (others =>'0');
		key5<= (others =>'0');
		key6<= (others =>'0');
 end case;



end process;


end Behavioral;

