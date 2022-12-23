



LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
  

  
ENTITY HEX_DRIVER IS
	PORT( addr: 		IN  std_logic_vector(3 DOWNTO 0);
			display_v: 	OUT std_logic_vector(7 DOWNTO 0)
		  );			
END HEX_DRIVER;


ARCHITECTURE BHV OF HEX_DRIVER IS 
	TYPE display_lut IS ARRAY(0 to 15) OF std_logic_vector(7 DOWNTO 0);
	SIGNAL hex_val : display_lut;
	
	BEGIN
		hex_val(0)  <= "00000011";  --0
		hex_val(1)  <= "10011111";  --1 
		hex_val(2)  <= "00100101";  --2 
		hex_val(3)  <= "00001101";  --3 
		hex_val(4)  <= "10011001";  --4 
		hex_val(5)  <= "01001001";  --5 
		hex_val(6)  <= "01000001";  --6 
		hex_val(7)  <= "00011111";  --7 
		hex_val(8)  <= "00000001";  --8 
		hex_val(9)  <= "00001001";  --9 
		hex_val(10) <= "00010001";  --A 
		hex_val(11) <= "11000001";  --b 
		hex_val(12) <= "01100011";  --C 
		hex_val(13) <= "10000101";  --d 
		hex_val(14) <= "01100001";  --E 
		hex_val(15) <= "01110001";  --F 
	

		display_v <= hex_val(TO_INTEGER(UNSIGNED(addr)));
		
	
	
	
END BHV;