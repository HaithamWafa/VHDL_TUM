----------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea - Structural 
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
use IEEE.NUMERIC_STD.ALL;


entity idea is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end idea;

architecture Structural of idea is
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
		
		signal rnd1_out1: std_logic_vector (15 downto 0);
		signal rnd1_out2: std_logic_vector (15 downto 0);
		signal rnd1_out3: std_logic_vector (15 downto 0);
		signal rnd1_out4: std_logic_vector (15 downto 0);
		
		signal rnd2_out1: std_logic_vector (15 downto 0);
		signal rnd2_out2: std_logic_vector (15 downto 0);
		signal rnd2_out3: std_logic_vector (15 downto 0);
		signal rnd2_out4: std_logic_vector (15 downto 0);
		
		signal rnd3_out1: std_logic_vector (15 downto 0);
		signal rnd3_out2: std_logic_vector (15 downto 0);
		signal rnd3_out3: std_logic_vector (15 downto 0);
		signal rnd3_out4: std_logic_vector (15 downto 0);
		
		signal rnd4_out1: std_logic_vector (15 downto 0);
		signal rnd4_out2: std_logic_vector (15 downto 0);
		signal rnd4_out3: std_logic_vector (15 downto 0);
		signal rnd4_out4: std_logic_vector (15 downto 0);
		
		signal rnd5_out1: std_logic_vector (15 downto 0);
		signal rnd5_out2: std_logic_vector (15 downto 0);
		signal rnd5_out3: std_logic_vector (15 downto 0);
		signal rnd5_out4: std_logic_vector (15 downto 0);
		
		signal rnd6_out1: std_logic_vector (15 downto 0);
		signal rnd6_out2: std_logic_vector (15 downto 0);
		signal rnd6_out3: std_logic_vector (15 downto 0);
		signal rnd6_out4: std_logic_vector (15 downto 0);
		
		signal rnd7_out1: std_logic_vector (15 downto 0);
		signal rnd7_out2: std_logic_vector (15 downto 0);
		signal rnd7_out3: std_logic_vector (15 downto 0);
		signal rnd7_out4: std_logic_vector (15 downto 0);
		
		signal rnd8_out1: std_logic_vector (15 downto 0);
		signal rnd8_out2: std_logic_vector (15 downto 0);
		signal rnd8_out3: std_logic_vector (15 downto 0);
		signal rnd8_out4: std_logic_vector (15 downto 0);
		
		signal Z33: std_logic_vector (15 downto 0);
		signal Z34: std_logic_vector (15 downto 0);
		signal Z45: std_logic_vector (15 downto 0);
		signal Z46: std_logic_vector (15 downto 0);
		signal Z57: std_logic_vector (15 downto 0);




begin
Z33 <= (KEY(6 downto 0) & KEY(127 downto 119));
Z34 <= (KEY(13 downto 0) & KEY(127 downto 126));
Z45 <= (KEY(4 downto 0) & KEY(127 downto 117));
Z46 <= (KEY(11 downto 0) & KEY(127 downto 124));
Z57 <= (KEY(2 downto 0) & KEY(127 downto 115));

round_1: round port map (
          X1 => X_1,
          X2 => X_2,
          X3 => X_3,
			 X4 => X_4,
			 Z1 => KEY(127 downto 112),
			 Z2 => KEY(111 downto 96),
			 Z3 => KEY(95 downto 80),
			 Z4 => KEY(79 downto 64),
			 Z5 => KEY(63 downto 48),
			 Z6 => KEY(47 downto 32),
			 Y1 => rnd1_out1,
			 Y2 => rnd1_out2,
			 Y3 => rnd1_out3,
			 Y4 => rnd1_out4
        );
round_2: round port map (
          X1 => rnd1_out1,
          X2 => rnd1_out2,
          X3 => rnd1_out3,
			 X4 => rnd1_out4,
			 Z1 => KEY(31 downto 16),
			 Z2 => KEY(15 downto 0),
			 Z3 => KEY(102 downto 87),
			 Z4 => KEY(86 downto 71),
			 Z5 => KEY(70 downto 55),
			 Z6 => KEY(54 downto 39),
			 Y1 => rnd2_out1,
			 Y2 => rnd2_out2,
			 Y3 => rnd2_out3,
			 Y4 => rnd2_out4
        );
round_3: round port map (
          X1 => rnd2_out1,
          X2 => rnd2_out2,
          X3 => rnd2_out3,
			 X4 => rnd2_out4,
			 Z1 => KEY(38 downto 23),
			 Z2 => KEY(22 downto 7),
			 Z3 => Z33,
			 Z4 => KEY(118 downto 103),
			 Z5 => KEY(77 downto 62),
			 Z6 => KEY(61 downto 46),
			 Y1 => rnd3_out1,
			 Y2 => rnd3_out2,
			 Y3 => rnd3_out3,
			 Y4 => rnd3_out4
        );		  
round_4: round port map (
          X1 => rnd3_out1,
          X2 => rnd3_out2,
          X3 => rnd3_out3,
			 X4 => rnd3_out4,
			 Z1 => KEY(45 downto 30),
			 Z2 => KEY(29 downto 14),
			 Z3 => Z34,
			 Z4 => KEY(125 downto 110),
			 Z5 => KEY(109 downto 94),
			 Z6 => KEY(93 downto 78),
			 Y1 => rnd4_out1,
			 Y2 => rnd4_out2,
			 Y3 => rnd4_out3,
			 Y4 => rnd4_out4
        );
round_5: round port map (
          X1 => rnd4_out1,
          X2 => rnd4_out2,
          X3 => rnd4_out3,
			 X4 => rnd4_out4,
			 Z1 => KEY(52 downto 37),
			 Z2 => KEY(36 downto 21),
			 Z3 => KEY(20 downto 5),
			 Z4 => Z45,
			 Z5 => KEY(116 downto 101),
			 Z6 => KEY(100 downto 85),
			 Y1 => rnd5_out1,
			 Y2 => rnd5_out2,
			 Y3 => rnd5_out3,
			 Y4 => rnd5_out4
        );
round_6: round port map (
          X1 => rnd5_out1,
          X2 => rnd5_out2,
          X3 => rnd5_out3,
			 X4 => rnd5_out4,
			 Z1 => KEY(84 downto 69),
			 Z2 => KEY(68 downto 53), 
			 Z3 => KEY(27 downto 12),
			 Z4 => Z46,
			 Z5 => KEY(123 downto 108),
			 Z6 => KEY(107 downto 92),
			 Y1 => rnd6_out1,
			 Y2 => rnd6_out2,
			 Y3 => rnd6_out3,
			 Y4 => rnd6_out4
        );
round_7: round port map (
          X1 => rnd6_out1,
          X2 => rnd6_out2,
          X3 => rnd6_out3,
			 X4 => rnd6_out4,
			 Z1 => KEY(91 downto 76),
			 Z2 => KEY(75 downto 60),
			 Z3 => KEY(59 downto 44),
			 Z4 => KEY(43 downto 28), 
			 Z5 => Z57,
			 Z6 => KEY(114 downto 99),
			 Y1 => rnd7_out1,
			 Y2 => rnd7_out2,
			 Y3 => rnd7_out3,
			 Y4 => rnd7_out4
        );
round_8: round port map (
          X1 => rnd7_out1,
          X2 => rnd7_out2,
          X3 => rnd7_out3,
			 X4 => rnd7_out4,
			 Z1 => KEY(98 downto 83),
			 Z2 => KEY(82 downto 67),
			 Z3 => KEY(66 downto 51),
			 Z4 => KEY(50 downto 35),
			 Z5 => KEY(34 downto 19),
			 Z6 => KEY(18 downto 3),
			 Y1 => rnd8_out1,
			 Y2 => rnd8_out2,
			 Y3 => rnd8_out3,
			 Y4 => rnd8_out4
        );	
output_trans: trafo port map (
          X1 => rnd8_out1,
          X2 => rnd8_out2,
          X3 => rnd8_out3,
			 X4 => rnd8_out4,
			 Z1 => KEY(105 downto 90),
			 Z2 => KEY(89 downto 74),
			 Z3 => KEY(73 downto 58),
			 Z4 => KEY(57 downto 42),
			 Y1 => Y_1,
			 Y2 => Y_2,
			 Y3 => Y_3,
			 Y4 => Y_4
        );	


end Structural;

