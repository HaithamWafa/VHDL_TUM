--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:38:28 06/21/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/rcs1/tb_reg16.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg16
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
 
ENTITY tb_reg16 IS
END tb_reg16;
 
ARCHITECTURE behavior OF tb_reg16 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg16
    PORT(
         clk : IN  std_logic;
         enable : IN  std_logic;
         data_in : IN  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(15 downto 0);

 constant period: time:= 10 ns;
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg16 PORT MAP (
          clk => clk,
          enable => enable,
          data_in => data_in,
          data_out => data_out
        );



   -- Stimulus process
	clk<=not clk after period/2;
   stim_proc: process
   begin	
	  enable <= '0';	
     data_in <= x"1111";
	  wait for period;
	 -- assert data_out=data_in;
	--	report "register failure"
	--	severity error;
	  enable <= '1';	
	  wait for period;
     data_in <= x"1010";
	  wait for period;
     data_in <= x"0010";
	  wait for period;
     data_in <= x"1000";
	  wait for period;
	  enable <= '0';
     data_in <= x"1010";
	 
      wait;
   end process;

END;
