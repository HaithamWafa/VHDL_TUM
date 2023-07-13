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

--updated implementation (fixed 1 CC delay and changed the counter process)
entity control_ext is
    Port ( CLK : in  STD_LOGIC;
           INIT : in  STD_LOGIC;
           TRAFO : in STD_LOGIC;
           EN125 : out  STD_LOGIC;
           EN346 : out  STD_LOGIC;
           EN78 : out  STD_LOGIC;
           RESULT : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(1 downto 0);
           S_T: out STD_LOGIC_VECTOR(1 downto 0));	
end control_ext;

architecture Behavioral of control_ext is

    signal internal_state : std_logic_vector(2 downto 0):="111";
	 signal enable_1 : std_logic:='0';
	 signal enable_2 : std_logic:='0';
	 signal enable_3 : std_logic:='0';
	 signal result_internal : std_logic:='0';
	 signal start : std_logic:='0';
	 signal S_in: std_logic_vector(1 downto 0):="XX";
	  signal ST_in: std_logic_vector(1 downto 0):="XX";
   
begin



status: process(internal_state, TRAFO) begin

case internal_state is
               when "000" =>
					if (TRAFO = '0') then
                   EN125<='1';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "00";
						 S_T<="00";
					else if(TRAFO ='1') then
						 EN125<='1';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "00";
						 S_T<="01";
					end if;
				end if;
               when "001" =>
                   if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "00";
						 S_T<="00";
					else if(TRAFO ='1') then
						 EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "00";
						 S_T<="01";
					end if;
				end if;
					
      
					when "010" =>
                   if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='1';
						 EN78<='0';
						 RESULT <='0';
						 S<= "01";
						 S_T<="01";
					else if(TRAFO ='1') then
						 EN125<='0';
						 EN346<='1';
						 EN78<='0';
						 RESULT <='0';
						 S<= "01";
						 S_T<="00";
					end if;
				end if;
               when "011" =>
                  if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "01";
						 S_T<="01";
					else if(TRAFO ='1') then
						 EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "01";
						 S_T<="00";
					end if;
				end if;
					  when "100" =>
                    if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='0';
						 EN78<='1';
						 RESULT <='0';
						 S<= "10";
						 S_T<="10";
--					else if(TRAFO ='1') then --shouldnt exist
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 S_T<="00";
--					end if;
				end if;
                  when "101" =>
                    if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "10";
						 S_T<="10";
--					else if(TRAFO ='1') then --shouldnt exist
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 S_T<="00";
--					end if;
				end if;
						 when "110" =>
                    if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='1';
						 S<= "11";
						 S_T<="11";
					else if(TRAFO ='1') then
						 EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='1';
						 S<= "11";
						 S_T<="10";
					end if;
				end if;
 
               when "111" =>
                    if (TRAFO = '0') then
                   EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "11";
						 S_T<="11";
					else if(TRAFO ='1') then
						 EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "11";
						 S_T<="10";
					end if;
				end if;
						-- start<='0';
					
					when others =>
						 EN125<='0';
						 EN346<='0';
						 EN78<='0';
						 RESULT <='0';
						 S<= "00";
					--	 start<='0';
           end case;
end process;


			  
counter: process(CLK) begin
	if(rising_edge(CLK)) then
		case TRAFO is 
			when '0' =>
				if(internal_state /= "111") then internal_state<= internal_state+1; 
				elsif(internal_state="111") then 
					if (INIT='1') then internal_state<="000"; else internal_state<="111"; end if;
				end if;
			when '1' =>
				if(internal_state /= "111" and internal_state /= "011" ) then internal_state<= internal_state+1; 
				elsif(internal_state="011") then internal_state<="110";
				elsif(internal_state="111") then 
					if (INIT='1') then internal_state<="000"; else internal_state<="111"; end if;
				end if;
			when others =>
				internal_state<="000";
		end case;
		
		--internal_state<= internal_state+1;
		--if(TRAFO='1' and internal_state ="011")then internal_state<="110"; end if; --jumping states
		
end if;

			  

--end if;

--	EN125<=enable_1;
--	EN346<=enable_2;
--	EN78<=enable_3;
--	RESULT<=result_internal;
--	S<=S_in;
--	S_T<=ST_in;

end process;

	
--S_T<="00"; --to be implemented later

--previous implementation----------------------------- 

--
--entity control_ext is
--    Port ( CLK : in  STD_LOGIC;
--           INIT : in  STD_LOGIC;
--           TRAFO : in STD_LOGIC;
--           EN125 : out  STD_LOGIC;
--           EN346 : out  STD_LOGIC;
--           EN78 : out  STD_LOGIC;
--           RESULT : out  STD_LOGIC;
--           S : out  STD_LOGIC_VECTOR(1 downto 0);
--           S_T: out STD_LOGIC_VECTOR(1 downto 0));	
--end control_ext;
--
--architecture Behavioral of control_ext is
--
--    signal internal_state : std_logic_vector(2 downto 0):="111";
--	 signal enable_1 : std_logic:='0';
--	 signal enable_2 : std_logic:='0';
--	 signal enable_3 : std_logic:='0';
--	 signal result_internal : std_logic:='0';
--	 signal start : std_logic:='0';
--	 signal S_in: std_logic_vector(1 downto 0):="XX";
--	  signal ST_in: std_logic_vector(1 downto 0):="XX";
--   
--begin
--
--counter: process(CLK) begin
--	if(rising_edge(CLK)) then
--		internal_state<= internal_state+1;
--		if(TRAFO='1' and internal_state ="011")then internal_state<="110"; end if; --jumping states
--		
--end if;
--
--end process;
--
--status: process(INIT, internal_state) begin
--
--if(INIT = '1') then start<='1'; end if;
--
--if(start='1') then
--case internal_state is
--               when "000" =>
--					if (TRAFO = '0') then
--                   enable_1<='1';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 ST_in<="00";
--					else if(TRAFO ='1') then
--						 enable_1<='1';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 ST_in<="01";
--					end if;
--				end if;
--               when "001" =>
--                   if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 ST_in<="00";
--					else if(TRAFO ='1') then
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 ST_in<="01";
--					end if;
--				end if;
--					
--      
--					when "010" =>
--                   if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='1';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "01";
--						 ST_in<="01";
--					else if(TRAFO ='1') then
--						 enable_1<='0';
--						 enable_2<='1';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "01";
--						 ST_in<="00";
--					end if;
--				end if;
--               when "011" =>
--                  if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "01";
--						 ST_in<="01";
--					else if(TRAFO ='1') then
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "01";
--						 ST_in<="00";
--					end if;
--				end if;
--					  when "100" =>
--                    if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='1';
--						 result_internal <='0';
--						 S_in<= "10";
--						 ST_in<="10";
----					else if(TRAFO ='1') then --shouldnt exist
----						 enable_1<='0';
----						 enable_2<='0';
----						 enable_3<='0';
----						 result_internal <='0';
----						 S_in<= "00";
----						 S_T<="00";
----					end if;
--				end if;
--                  when "101" =>
--                    if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "10";
--						 ST_in<="10";
----					else if(TRAFO ='1') then --shouldnt exist
----						 enable_1<='0';
----						 enable_2<='0';
----						 enable_3<='0';
----						 result_internal <='0';
----						 S_in<= "00";
----						 S_T<="00";
----					end if;
--				end if;
--						 when "110" =>
--                    if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='1';
--						 S_in<= "11";
--						 ST_in<="11";
--					else if(TRAFO ='1') then
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='1';
--						 S_in<= "11";
--						 ST_in<="10";
--					end if;
--				end if;
-- 
--               when "111" =>
--                    if (TRAFO = '0') then
--                   enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "11";
--						 ST_in<="11";
--					else if(TRAFO ='1') then
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "11";
--						 ST_in<="10";
--					end if;
--				end if;
--						 start<='0';
--					
--					when others =>
--						 enable_1<='0';
--						 enable_2<='0';
--						 enable_3<='0';
--						 result_internal <='0';
--						 S_in<= "00";
--						 start<='0';
--           end case;
--
--end if;
--
--	EN125<=enable_1;
--	EN346<=enable_2;
--	EN78<=enable_3;
--	RESULT<=result_internal;
--	S<=S_in;
--	S_T<=ST_in;
--
--end process;
--
--	
----S_T<="00"; --to be implemented later
--
--
--end Behavioral;
--



-------------------------------


end Behavioral;

