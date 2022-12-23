


LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;



ENTITY CLOCKED_CNT IS 
PORT( en: 	   IN std_logic;
	   rst:   	IN std_logic;
		clk:   	IN std_logic;
		out_hex: OUT std_logic_vector(7 DOWNTO 0)
		);
END CLOCKED_CNT;


ARCHITECTURE BHV OF CLOCKED_CNT IS 
	SIGNAL   clk_int  : STD_LOGIC;
	SIGNAL   addr_int : STD_LOGIC_VECTOR(3 DOWNTO 0);

	COMPONENT CLOCK_DIVIDER IS
		PORT( clk_in: 	IN  std_logic;
				clk_out: OUT std_logic
			  );			
	END COMPONENT;

	COMPONENT CNT IS
		PORT( clk: 	IN  std_logic;
				en: 	IN  std_logic;
				rst:	IN  std_logic;
				cnt_out: OUT std_logic_vector(3 DOWNTO 0)
			  );			
	END COMPONENT;


	COMPONENT HEX_DRIVER IS
		PORT( addr: 		IN  std_logic_vector(3 DOWNTO 0);
				display_v: 	OUT std_logic_vector(7 DOWNTO 0)
			  );			
	END COMPONENT;



BEGIN
	clk_div : CLOCK_DIVIDER PORT MAP(clk_in => clk, clk_out => clk_int);
	cnt_0 : CNT PORT MAP(clk => clk_int, en => en, rst => rst, cnt_out => addr_int);
	hex : HEX_DRIVER PORT MAP(addr => addr_int, display_v => out_hex);


END BHV;



