--------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
--
-- Create Date:   16:25:43 07/08/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/rcs2/tb_mux4x1.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4x1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_mux4x1 IS
END tb_mux4x1;
 
ARCHITECTURE behavior OF tb_mux4x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         D2 : IN  std_logic_vector(15 downto 0);
         D3 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(15 downto 0) := (others => '0');
   signal D1 : std_logic_vector(15 downto 0) := (others => '0');
   signal D2 : std_logic_vector(15 downto 0) := (others => '0');
   signal D3 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4x1 PORT MAP (
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          S => S,
          O => O
        );

   -- Stimulus process
   stim_proc: process
	 constant period: time := 10 ns;
   begin		
      D0 <= x"0000";
		D1 <= x"0101";
		D2 <= x"0000";
		D3 <= x"1010";
		S<="00";
		wait for period;
		S<="01";
		wait for period;
		S<="10";
		wait for period;
		S<="11";
		wait for period;
		D0 <= x"1010";
		D1 <= x"0101";
		D2 <= x"1111";
		D3 <= x"0000";
		S<="01";
		wait for period;
		S<="00";
		wait for period;
		S<="11";
		wait for period;
		S<="10";
		wait for period;
		S<="XX";
      wait;
   end process;

END;
