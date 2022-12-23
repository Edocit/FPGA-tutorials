

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
  

  
ENTITY CLOCK_DIVIDER IS
	PORT( clk_in: 	IN  std_logic;
			clk_out: OUT std_logic
		  );			
END CLOCK_DIVIDER;


ARCHITECTURE BHV OF CLOCK_DIVIDER IS 
	SIGNAL   div     : INTEGER := 25000000;
	SIGNAL   cnt_int : INTEGER := 0;

	BEGIN
		clk_process : process(clk_in, cnt_int)
				BEGIN	
					IF(rising_edge(clk_in)) THEN
						
						IF(cnt_int < div) THEN
							clk_out <= '1';
						END IF;
						
						IF(cnt_int >= div AND cnt_int < div*2) THEN 
							clk_out <= '0';
						END IF;						
						
						IF(cnt_int = ((div*2)-1)) THEN
							cnt_int <= 0;
						ELSE
							cnt_int <= cnt_int + 1;	
						END IF;								
					END IF;

				END PROCESS;
END BHV;









