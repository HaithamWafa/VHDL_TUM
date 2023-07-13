----------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    control - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control is
    Port ( CLK : in  STD_LOGIC;
           INIT : in  STD_LOGIC;
           TRAFO : in STD_LOGIC;
           EN125 : out  STD_LOGIC;
           EN346 : out  STD_LOGIC;
           EN78 : out  STD_LOGIC;
           RESULT : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(1 downto 0);
           S_T: out STD_LOGIC_VECTOR(1 downto 0));	
end control;

architecture Behavioral of control is

    signal internal_state : std_logic_vector(2 downto 0):="111";
	 signal enable_1 : std_logic:='0';
	 signal enable_2 : std_logic:='0';
	 signal enable_3 : std_logic:='0';
	 signal result_internal : std_logic:='0';
	 signal start : std_logic:='0';
	 signal S_in: std_logic_vector(1 downto 0):="XX";
   
begin

counter: process(CLK) begin
	if(rising_edge(CLK)) then
		internal_state<= internal_state+1;
		
end if;

end process;

status: process(INIT, internal_state) begin

if(INIT = '1') then start<='1'; end if;

if(start='1') then
case internal_state is
               when "000" =>
                   enable_1<='1';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "00";
               when "001" =>
                   enable_1<='0';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "00";
      
					when "010" =>
                   enable_1<='0';
						 enable_2<='1';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "01";
               when "011" =>
                   enable_1<='0';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "01";
					  when "100" =>
                    enable_1<='0';
						 enable_2<='0';
						 enable_3<='1';
						 result_internal <='0';
						 S_in<= "10";
                  when "101" =>
                   enable_1<='0';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "10";
						 when "110" =>
                    enable_1<='0';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='1';
						 S_in<= "11";
 
               when "111" =>
                   enable_1<='0';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "11";
						 start<='0';
					
					when others =>
						 enable_1<='0';
						 enable_2<='0';
						 enable_3<='0';
						 result_internal <='0';
						 S_in<= "00";
						 start<='0';
           end case;

end if;
	EN125<=enable_1;
	EN346<=enable_2;
	EN78<=enable_3;
	RESULT<=result_internal;
	S<=S_in;

end process;

	
S_T<="00"; --to be implemented later


end Behavioral;

