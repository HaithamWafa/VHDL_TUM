----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    roundcounter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity roundcounter is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           RESULT : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           S_i : out  STD_LOGIC;
           INIT : out  STD_LOGIC;
           TRAFO : out  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0));
end roundcounter;

architecture Behavioral of roundcounter is
 type state is (SLEEP, SETUP, CALC);
 --type state_counter is ("0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000");
 signal CurrentState, NextState : state := SLEEP;  -- Initialize to SLEEP state
 signal CurrentState_counter, NextState_counter : std_logic_vector (3 downto 0) := "1000";  


begin

process (CLK)
    begin
        if rising_edge(CLK) then
            CurrentState <= NextState;
				CurrentState_counter <= NextState_counter;
        end if;
    end process;

state_trans: process (CurrentState, START, RESULT, CurrentState_counter)
    begin
        case CurrentState is
            when SLEEP =>
               
                if START = '1' then
                    NextState <= SETUP;
                else
                    NextState <= SLEEP;
                end if;
                
            when SETUP =>
               
                NextState <= CALC;
                
            when CALC =>
                
                if RESULT = '1' then
                    if CurrentState_counter = "1000" then
                        NextState <= SLEEP;
                    else
                        NextState <= SETUP;
                    end if;
                else
                    NextState <= CALC;
                end if;
                
            when others =>
                NextState <= SLEEP;  -- Default state in case of unknown state
        end case;
    end process;
	 
	 
	 
	 
	output: process (CurrentState)
    begin
        case CurrentState is
            when SLEEP =>
                INIT <= '0';
                READY <= '1';
            when SETUP =>
                INIT <= '1';
                READY <= '0';
      
            when CALC =>
                INIT <= '0';
					READY <= '0';
            when others =>
                READY<='0';  -- Default state in case of unknown state
        end case;
    end process;
	 
	 
	 process(CurrentState_counter, START, RESULT) begin
	 
		case CurrentState_counter is
            when "1000" =>
                
                if START = '1' then
                    NextState_counter <= "0000";
                else
                    NextState_counter <= "1000";
                end if;
                
            when "0000" =>
                 if RESULT = '1' then
                    NextState_counter <= "0001";
                else
                    NextState_counter <= "0000";
                end if;
                
            when "0001" =>
                 if RESULT = '1' then
                    NextState_counter <= "0010";
                else
                    NextState_counter <= "0001";
                end if;	
				when "0010" =>
                 if RESULT = '1' then
                    NextState_counter <= "0011";
                else
                    NextState_counter <= "0010";
                end if;	
				when "0011" =>
                 if RESULT = '1' then
                    NextState_counter <= "0100";
                else
                    NextState_counter <= "0011";
                end if;
				when "0100" =>
                 if RESULT = '1' then
                    NextState_counter <= "0101";
                else
                    NextState_counter <= "0100";
                end if;	
				when "0101" =>
                 if RESULT = '1' then
                    NextState_counter <= "0110";
                else
                    NextState_counter <= "0101";
                end if;	
				when "0110" =>
                 if RESULT = '1' then
                    NextState_counter <= "0111";
                else
                    NextState_counter <= "0110";
                end if;	
				when "0111" =>
                 if RESULT = '1' then
                    NextState_counter <= "1000";
                else
                    NextState_counter <= "0111";
                end if;	

            when others =>
                NextState_counter <= "1000";  -- Default state in case of unknown state
        end case;
	 
	 
	 
	 end process;
	 
	 ROUND<=CurrentState_counter;
	 TRAFO <= CurrentState_counter(3);
	 S_i <= not(CurrentState_counter(3) or CurrentState_counter(2) or CurrentState_counter(1) or CurrentState_counter(0));


end Behavioral;

