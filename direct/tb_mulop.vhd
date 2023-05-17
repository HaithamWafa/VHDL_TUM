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
        );
    END COMPONENT;
    

   --Inputs
   signal I_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal I_2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_1 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mulop PORT MAP (
          I_1 => I_1,
          I_2 => I_2,
          O_1 => O_1
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
  

        wait;
    end process;



END;
