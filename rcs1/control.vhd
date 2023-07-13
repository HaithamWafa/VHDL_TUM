

----------------------------------------------------------------------------------
-- Company: TUM - VHDL LAB
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
           START : in  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
           READY : out  STD_LOGIC;
           EN : out  STD_LOGIC;
           S : out  STD_LOGIC);
end control;

architecture Behavioral of control is

--internal signals declaration 
signal round_s  : std_logic_vector(3 downto 0) := "1000";
signal ready_s  : std_logic := '1';
signal enable_s : std_logic := '0';
signal s_s      : std_logic := '1'; 

begin

		process(CLK, START)  begin
		
	if rising_edge(CLK) then
		if	(START = '1') then
			
			round_s <= "0000";
			ROUND <= round_s;
		
			ready_s <= '0';
			READY <= ready_s;
			
			enable_s  <= '1';
			EN <= enable_s;
			
			s_s <= '0';
			S <= s_s;
			
		end if;
		
		if (START = '0') then 
			
			if round_s = "1000" then
				round_s  <= round_s ;
				ROUND <= round_s ;
			else 	
				round_s <= round_s + 1;
				ROUND <= round_s;
			end if;
			
			S <= s_s;
			s_s <= '1';
			READY <= ready_s;
			EN <= enable_s;
			
			if round_s = "0111" then 
				ready_s <= '1';
				READY <= ready_s ;
				enable_s <= '0';
				EN <= enable_s ;
			end if;	
	
	end if;
	
		end if;
		
	end process;

end Behavioral;



--previous implementation (ready signal is asserted for only 1 CC -- problems in IdeaTester?)

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--
--entity control is
--    Port ( CLK : in  STD_LOGIC;
--           START : in  STD_LOGIC;
--           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
--           READY : out  STD_LOGIC;
--           EN : out  STD_LOGIC;
--           S : out  STD_LOGIC);
--end control;
--
--architecture Behavioral of control is  
--
--type state is ( idle, round1, round2,round3, round4,round5, round6, round7, round8, output_trans);
--signal x : state;
--signal NextState: state;
--
--signal count: std_logic_vector(3 downto 0):="0000";
--signal init: std_logic;
--
--
--begin
----once-process FSM (NOTS: DELAY OF 1CC, will this create a problem)
--process(Clk) is
--begin
--   if rising_edge(Clk) then
--		if(Start ='1') then
--			x<=round1;
--		else 
--			x<=idle;
--		end if;
--    
--           case x is
--               when round1 =>
--                   READY<='0';
--						 S<='0';
--						 EN<='1';
--						 ROUND<="0000";
--						 x <= round2;
--      
--               when round2 =>
--                   READY<='0';
--						 S<='1';
--						 EN<='1';
--						 ROUND<="0001";
--						 x <= round3;
--      
--					when round3 =>
--                   READY<='0';
--						 S<='1';
--						 EN<='1';
--						 ROUND<="0010";
--						 x <= round4;
--               when round4 =>
--                   READY<='0';
--						 S<='1';
--						 EN<='1';
--						 ROUND<="0011";
--						 x <= round5;
--					  when round5 =>
--                   READY<='0';
--						 S<='1';
--						 EN<='1';
--						 ROUND<="0100";
--						 x <= round6;
--                  when round6 =>
--                   READY<='0';
--						 S<='1';
--						 EN<='1';
--						 ROUND<="0101";
--						 x <= round7;
--						 when round7 =>
--                    READY<='0';
--						  S<='1';
--						  EN<='1';
--						  ROUND<="0110";
--						  x <= round8;
-- 
--               when round8 =>
--                   READY<='0';
--						 S<='1';
--						 EN<='1';
--						 ROUND<="0111";
--						 x <= output_trans;
--					when output_trans =>
--                   READY<='1';
--						 S<='1';
--						 EN<='0';
--						 ROUND<="1000";
--						 x <= idle;
--					when others =>
--						 READY<='0';
--						 S<='1';
--						 EN<='0';
--						 ROUND<="0000";
--                   
-- 
--           end case;
--     --  end if;
--   end if;
--end process;
--end Behavioral; 



