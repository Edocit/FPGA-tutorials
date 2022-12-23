

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
  

  
ENTITY CNT IS
	PORT( clk: 	IN  std_logic;
	      en: 	IN  std_logic;
			rst:	IN  std_logic;
			cnt_out: OUT std_logic_vector(3 DOWNTO 0)
		  );			
END CNT;


ARCHITECTURE BHV OF CNT IS 
	SIGNAL   cnt_int : INTEGER := 0;


	BEGIN
		clk_process : process(clk, en, rst)
				BEGIN	
					IF(RISING_EDGE(clk)) THEN 
						IF(rst = '1') THEN 
							cnt_int <= 0;
						ELSIF(rst = '0' AND en = '1') THEN
							cnt_out <= std_logic_vector(to_unsigned(cnt_int,4));
							cnt_int <= cnt_int + 1;
						END IF;
					END IF;
					
				END PROCESS;

END BHV;
						

	