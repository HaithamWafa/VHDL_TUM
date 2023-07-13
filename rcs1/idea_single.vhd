----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_single - Structural 
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

entity idea_single is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_single;

architecture Structural of idea_single is
component reg16 
      Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (15 downto 0));

end component;

component mux21 
 Port ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
           D1 : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component round
        Port ( X1 : in  std_logic_vector (15 downto 0);
               X2 : in  std_logic_vector (15 downto 0);
               X3 : in  std_logic_vector (15 downto 0);
               X4 : in  std_logic_vector (15 downto 0);
               Z1 : in  std_logic_vector (15 downto 0);
               Z2 : in  std_logic_vector (15 downto 0);
               Z3 : in  std_logic_vector (15 downto 0);
               Z4 : in  std_logic_vector (15 downto 0);
               Z5 : in  std_logic_vector (15 downto 0);
               Z6 : in  std_logic_vector (15 downto 0);
               Y1 : out std_logic_vector (15 downto 0);
               Y2 : out std_logic_vector (15 downto 0);
               Y3 : out std_logic_vector (15 downto 0);
               Y4 : out std_logic_vector (15 downto 0)
					);
      end component;
		
component trafo
        Port ( X1 : in  std_logic_vector (15 downto 0);
               X2 : in  std_logic_vector (15 downto 0);
               X3 : in  std_logic_vector (15 downto 0);
               X4 : in  std_logic_vector (15 downto 0);
               Z1 : in  std_logic_vector (15 downto 0);
               Z2 : in  std_logic_vector (15 downto 0);
               Z3 : in  std_logic_vector (15 downto 0);
               Z4 : in  std_logic_vector (15 downto 0);
               Y1 : out std_logic_vector (15 downto 0);
               Y2 : out std_logic_vector (15 downto 0);
               Y3 : out std_logic_vector (15 downto 0);
               Y4 : out std_logic_vector (15 downto 0)
					);
		end component;
component key_generator 
	  Port ( key : in  STD_LOGIC_VECTOR (127 downto 0);
           round_counter : in  STD_LOGIC_VECTOR (3 downto 0);
           key1 : out  STD_LOGIC_VECTOR (15 downto 0);
           key2 : out  STD_LOGIC_VECTOR (15 downto 0);
           key3 : out  STD_LOGIC_VECTOR (15 downto 0);
           key4 : out  STD_LOGIC_VECTOR (15 downto 0);
           key5 : out  STD_LOGIC_VECTOR (15 downto 0);
           key6 : out  STD_LOGIC_VECTOR (15 downto 0));
	 end component;
component control
         Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
           READY : out  STD_LOGIC;
           EN : out  STD_LOGIC;
           S : out  STD_LOGIC);
      end component;

signal rnd1_in1: std_logic_vector (15 downto 0);
signal rnd1_in2: std_logic_vector (15 downto 0);
signal rnd1_in3: std_logic_vector (15 downto 0);
signal rnd1_in4: std_logic_vector (15 downto 0);

signal rnd1_out1: std_logic_vector (15 downto 0);
signal rnd1_out2: std_logic_vector (15 downto 0);
signal rnd1_out3: std_logic_vector (15 downto 0);
signal rnd1_out4: std_logic_vector (15 downto 0);

signal output_trans_in1: std_logic_vector (15 downto 0);
signal output_trans_in2: std_logic_vector (15 downto 0);
signal output_trans_in3: std_logic_vector (15 downto 0);
signal output_trans_in4: std_logic_vector (15 downto 0);

signal SEL: std_logic;
signal EN: std_logic;
signal which_round: std_logic_vector(3 downto 0);


signal generated_key1: std_logic_vector(15 downto 0);
signal generated_key2: std_logic_vector(15 downto 0);
signal generated_key3: std_logic_vector(15 downto 0);
signal generated_key4: std_logic_vector(15 downto 0);
signal generated_key5: std_logic_vector(15 downto 0);
signal generated_key6: std_logic_vector(15 downto 0);


begin

mux1: mux21 port map (
		D0 =>X_1,
		D1 =>output_trans_in1,
		S =>SEL,
		O =>rnd1_in1
		);

mux2: mux21 port map (
		D0 =>X_2,
		D1 =>output_trans_in2,
		S =>SEL,
		O =>rnd1_in2
		);
			


mux3: mux21 port map (
		D0 =>X_3,
		D1 =>output_trans_in3,
		S =>SEL,
		O =>rnd1_in3
		);

mux4	: mux21 port map (
		D0 =>X_4,
		D1 =>output_trans_in4,
		S =>SEL,
		O =>rnd1_in4
		);


reg1: reg16 port map(
		clk=>CLOCK,
		enable=>EN,
		data_in=>rnd1_out1,
		data_out=>output_trans_in1
		);
reg2: reg16 port map(
		clk=>CLOCK,
		enable=>EN,
		data_in=>rnd1_out2,
		data_out=>output_trans_in2
		);
reg3: reg16 port map(
		clk=>CLOCK,
		enable=>EN,
		data_in=>rnd1_out3,
		data_out=>output_trans_in3
		);
reg4: reg16 port map(
		clk=>CLOCK,
		enable=>EN,
		data_in=>rnd1_out4,
		data_out=>output_trans_in4
		);	

ctrl: control port map(
			CLK=>CLOCK,
			START=>START,
			ROUND=>which_round,
			READY=>READY,
			EN=>EN,
			S=>SEL
		   );

keygen: key_generator port map(
		key=>KEY,
		round_counter=> which_round,
		key1=>generated_key1,
		key2=>generated_key2,
		key3=>generated_key3,
		key4=>generated_key4,
		key5=>generated_key5,
		key6=>generated_key6
		);
	

round_1: round port map (
          X1 => rnd1_in1,
          X2 => rnd1_in2,
          X3 => rnd1_in3,
			 X4 => rnd1_in4,
			 Z1 => generated_key1,
			 Z2 => generated_key2,
			 Z3 => generated_key3,
			 Z4 => generated_key4,
			 Z5 => generated_key5,
			 Z6 => generated_key6,
			 Y1 => rnd1_out1,
			 Y2 => rnd1_out2,
			 Y3 => rnd1_out3,
			 Y4 => rnd1_out4
        );
		  
output_trans: trafo port map (
          X1 => output_trans_in1,
          X2 => output_trans_in2,
          X3 => output_trans_in3,
			 X4 => output_trans_in4,
			 Z1 => generated_key1,
			 Z2 => generated_key2,
			 Z3 => generated_key3,
			 Z4 => generated_key4,
			 Y1 => Y_1,
			 Y2 => Y_2,
			 Y3 => Y_3,
			 Y4 => Y_4
        );	


end Structural;
