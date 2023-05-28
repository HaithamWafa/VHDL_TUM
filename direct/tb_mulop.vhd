--------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_mulop IS 
END tb_mulop;
 
ARCHITECTURE behavior OF tb_mulop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mulop
    PORT(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
			--debug : OUT  std_logic_vector(16 downto 0)
			
        );
    END COMPONENT;
    

   --Inputs
   signal I_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal I_2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_1 : std_logic_vector(15 downto 0);
	--signal debug : std_logic_vector(16 downto 0);
   
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mulop PORT MAP (
          I_1 => I_1,
          I_2 => I_2,
          O_1 => O_1
			-- debug=>debug
        );

     stim_proc: process
	 constant period: time := 10 ns;
   begin
        -- multiply two positive numbers
        I_1 <= x"0005";
        I_2 <= x"0005";
		  wait for period;
        assert O_1 = x"0019"
            report "Test failed: multiplying two positive numbers failed"
            severity error;
		  
	    -- multiplying two numbers and checking modulo operation
        I_1 <= x"FFFF"; -- Input 1
        I_2 <= x"000C"; -- Input 2

		  	wait for period;

    
        assert O_1 = x"FFE9"
            report "Test failed: modulo behavior is incorrect"
            severity error;
       
         -- checking if an input of zero is replaced 
        I_1 <= x"0000"; -- Input 1
        I_2 <= x"0000"; -- Input 2
      wait for 10 ns;
        assert O_1 = x"0001"
            report "Test failed: check operands"
            severity error;
			
		 --reference model tests as provided in the lab
		 
		  I_1 <= x"0000";
        I_2 <= x"0000";
		  wait for period;
        assert O_1 = x"0001"
            report "Test 1: failed"
            severity error;
				
        I_1 <= x"0001";
        I_2 <= x"0000";
		  wait for period;
        assert O_1 = x"0000"
            report "Test 2: failed"
            severity error;
				
		  I_1 <= x"0001";
        I_2 <= x"0001";
		  wait for period;
        assert O_1 = x"0001"
            report "Test 3: failed"
            severity error;
				
        I_1 <= x"0003";
        I_2 <= x"0001";
		  wait for period;
        assert O_1 = x"0003"
            report "Test 4: failed"
            severity error;	
				 	
		  I_1 <= x"0003";
        I_2 <= x"0003";
		  wait for period;
        assert O_1 = x"0009"
            report "Test 5: failed"
            severity error;
				
        I_1 <= x"7fff";
        I_2 <= x"0003";
		  wait for period;
        assert O_1 = x"7ffc"
            report "Test 6: failed"
            severity error;
		  I_1 <= x"7fff";
        I_2 <= x"7fff";
		  wait for period;
        assert O_1 = x"c003"
            report "Test 7: failed"
            severity error;
				
        I_1 <= x"ffff";
        I_2 <= x"7fff";
		  wait for period;
        assert O_1 = x"0003"
            report "Test 8: failed"
            severity error;	
				
		  I_1 <= x"ffff";
        I_2 <= x"ffff";
		  wait for period;
        assert O_1 = x"0004"
            report "Test 9: failed"
            severity error;	
				
		  I_1 <= x"8000";
        I_2 <= x"ffff";
		  wait for period;
        assert O_1 = x"0001"
            report "Test 10: failed"
            severity error;	
				
		  I_1 <= x"8000";
        I_2 <= x"8000";
		  wait for period;
        assert O_1 = x"c001"
            report "Test 11: failed"
            severity error;	


        wait;
    end process;



END;
