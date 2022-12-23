-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/24/2022 00:44:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CLOCKED_CNT IS
    PORT (
	en : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	out_hex : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CLOCKED_CNT;

-- Design Ports Information
-- out_hex[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[2]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[3]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out_hex[7]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- en	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CLOCKED_CNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_out_hex : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \out_hex[0]~output_o\ : std_logic;
SIGNAL \out_hex[1]~output_o\ : std_logic;
SIGNAL \out_hex[2]~output_o\ : std_logic;
SIGNAL \out_hex[3]~output_o\ : std_logic;
SIGNAL \out_hex[4]~output_o\ : std_logic;
SIGNAL \out_hex[5]~output_o\ : std_logic;
SIGNAL \out_hex[6]~output_o\ : std_logic;
SIGNAL \out_hex[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div|Add0~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~1\ : std_logic;
SIGNAL \clk_div|Add0~2_combout\ : std_logic;
SIGNAL \clk_div|Add0~3\ : std_logic;
SIGNAL \clk_div|Add0~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~5\ : std_logic;
SIGNAL \clk_div|Add0~6_combout\ : std_logic;
SIGNAL \clk_div|Add0~7\ : std_logic;
SIGNAL \clk_div|Add0~8_combout\ : std_logic;
SIGNAL \clk_div|Add0~9\ : std_logic;
SIGNAL \clk_div|Add0~10_combout\ : std_logic;
SIGNAL \clk_div|Add0~11\ : std_logic;
SIGNAL \clk_div|Add0~12_combout\ : std_logic;
SIGNAL \clk_div|Add0~13\ : std_logic;
SIGNAL \clk_div|Add0~14_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~5_combout\ : std_logic;
SIGNAL \clk_div|Add0~15\ : std_logic;
SIGNAL \clk_div|Add0~16_combout\ : std_logic;
SIGNAL \clk_div|Add0~17\ : std_logic;
SIGNAL \clk_div|Add0~18_combout\ : std_logic;
SIGNAL \clk_div|Add0~19\ : std_logic;
SIGNAL \clk_div|Add0~20_combout\ : std_logic;
SIGNAL \clk_div|Add0~21\ : std_logic;
SIGNAL \clk_div|Add0~22_combout\ : std_logic;
SIGNAL \clk_div|Add0~23\ : std_logic;
SIGNAL \clk_div|Add0~24_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~25\ : std_logic;
SIGNAL \clk_div|Add0~26_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~3_combout\ : std_logic;
SIGNAL \clk_div|Add0~27\ : std_logic;
SIGNAL \clk_div|Add0~28_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~2_combout\ : std_logic;
SIGNAL \clk_div|Add0~29\ : std_logic;
SIGNAL \clk_div|Add0~30_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~1_combout\ : std_logic;
SIGNAL \clk_div|Add0~31\ : std_logic;
SIGNAL \clk_div|Add0~32_combout\ : std_logic;
SIGNAL \clk_div|Add0~33\ : std_logic;
SIGNAL \clk_div|Add0~34_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~35\ : std_logic;
SIGNAL \clk_div|Add0~36_combout\ : std_logic;
SIGNAL \clk_div|Add0~37\ : std_logic;
SIGNAL \clk_div|Add0~38_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~7_combout\ : std_logic;
SIGNAL \clk_div|Add0~39\ : std_logic;
SIGNAL \clk_div|Add0~40_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~8_combout\ : std_logic;
SIGNAL \clk_div|Add0~41\ : std_logic;
SIGNAL \clk_div|Add0~42_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~9_combout\ : std_logic;
SIGNAL \clk_div|Add0~43\ : std_logic;
SIGNAL \clk_div|Add0~44_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~10_combout\ : std_logic;
SIGNAL \clk_div|Add0~45\ : std_logic;
SIGNAL \clk_div|Add0~46_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~11_combout\ : std_logic;
SIGNAL \clk_div|Add0~47\ : std_logic;
SIGNAL \clk_div|Add0~48_combout\ : std_logic;
SIGNAL \clk_div|Add0~59\ : std_logic;
SIGNAL \clk_div|Add0~60_combout\ : std_logic;
SIGNAL \clk_div|Add0~61\ : std_logic;
SIGNAL \clk_div|Add0~62_combout\ : std_logic;
SIGNAL \clk_div|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div|clk_out~1_combout\ : std_logic;
SIGNAL \clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div|Add0~49\ : std_logic;
SIGNAL \clk_div|Add0~50_combout\ : std_logic;
SIGNAL \clk_div|cnt_int~6_combout\ : std_logic;
SIGNAL \clk_div|Add0~51\ : std_logic;
SIGNAL \clk_div|Add0~52_combout\ : std_logic;
SIGNAL \clk_div|Add0~53\ : std_logic;
SIGNAL \clk_div|Add0~54_combout\ : std_logic;
SIGNAL \clk_div|Add0~55\ : std_logic;
SIGNAL \clk_div|Add0~56_combout\ : std_logic;
SIGNAL \clk_div|Add0~57\ : std_logic;
SIGNAL \clk_div|Add0~58_combout\ : std_logic;
SIGNAL \clk_div|clk_out~9_combout\ : std_logic;
SIGNAL \clk_div|clk_out~10_combout\ : std_logic;
SIGNAL \clk_div|clk_out~11_combout\ : std_logic;
SIGNAL \clk_div|clk_out~0_combout\ : std_logic;
SIGNAL \clk_div|clk_out~2_combout\ : std_logic;
SIGNAL \clk_div|clk_out~3_combout\ : std_logic;
SIGNAL \clk_div|clk_out~4_combout\ : std_logic;
SIGNAL \clk_div|clk_out~5_combout\ : std_logic;
SIGNAL \clk_div|clk_out~6_combout\ : std_logic;
SIGNAL \clk_div|clk_out~7_combout\ : std_logic;
SIGNAL \clk_div|clk_out~8_combout\ : std_logic;
SIGNAL \clk_div|clk_out~12_combout\ : std_logic;
SIGNAL \clk_div|clk_out~q\ : std_logic;
SIGNAL \clk_div|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \cnt_0|cnt_int[0]~32_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[2]~48\ : std_logic;
SIGNAL \cnt_0|cnt_int[3]~49_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~44_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[3]~50\ : std_logic;
SIGNAL \cnt_0|cnt_int[4]~51_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[4]~52\ : std_logic;
SIGNAL \cnt_0|cnt_int[5]~53_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[5]~54\ : std_logic;
SIGNAL \cnt_0|cnt_int[6]~55_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[6]~56\ : std_logic;
SIGNAL \cnt_0|cnt_int[7]~57_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[7]~58\ : std_logic;
SIGNAL \cnt_0|cnt_int[8]~59_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[8]~60\ : std_logic;
SIGNAL \cnt_0|cnt_int[9]~61_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[9]~62\ : std_logic;
SIGNAL \cnt_0|cnt_int[10]~63_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[10]~64\ : std_logic;
SIGNAL \cnt_0|cnt_int[11]~65_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[11]~66\ : std_logic;
SIGNAL \cnt_0|cnt_int[12]~67_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[12]~68\ : std_logic;
SIGNAL \cnt_0|cnt_int[13]~69_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[13]~70\ : std_logic;
SIGNAL \cnt_0|cnt_int[14]~71_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[14]~72\ : std_logic;
SIGNAL \cnt_0|cnt_int[15]~73_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[15]~74\ : std_logic;
SIGNAL \cnt_0|cnt_int[16]~75_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[16]~76\ : std_logic;
SIGNAL \cnt_0|cnt_int[17]~77_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[17]~78\ : std_logic;
SIGNAL \cnt_0|cnt_int[18]~79_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[18]~80\ : std_logic;
SIGNAL \cnt_0|cnt_int[19]~81_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[19]~82\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~83_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~84\ : std_logic;
SIGNAL \cnt_0|cnt_int[21]~85_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[21]~86\ : std_logic;
SIGNAL \cnt_0|cnt_int[22]~87_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[22]~88\ : std_logic;
SIGNAL \cnt_0|cnt_int[23]~89_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[23]~90\ : std_logic;
SIGNAL \cnt_0|cnt_int[24]~91_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[24]~92\ : std_logic;
SIGNAL \cnt_0|cnt_int[25]~93_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[25]~94\ : std_logic;
SIGNAL \cnt_0|cnt_int[26]~95_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[26]~96\ : std_logic;
SIGNAL \cnt_0|cnt_int[27]~97_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[27]~98\ : std_logic;
SIGNAL \cnt_0|cnt_int[28]~99_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[28]~100\ : std_logic;
SIGNAL \cnt_0|cnt_int[29]~101_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[29]~102\ : std_logic;
SIGNAL \cnt_0|cnt_int[30]~103_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[30]~104\ : std_logic;
SIGNAL \cnt_0|cnt_int[31]~105_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~40_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~39_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~34_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~36_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~37_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~35_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~38_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~41_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~42_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[20]~43_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[0]~33\ : std_logic;
SIGNAL \cnt_0|cnt_int[1]~45_combout\ : std_logic;
SIGNAL \cnt_0|cnt_int[1]~46\ : std_logic;
SIGNAL \cnt_0|cnt_int[2]~47_combout\ : std_logic;
SIGNAL \cnt_0|cnt_out[2]~feeder_combout\ : std_logic;
SIGNAL \cnt_0|cnt_out[3]~0_combout\ : std_logic;
SIGNAL \cnt_0|cnt_out[1]~feeder_combout\ : std_logic;
SIGNAL \cnt_0|cnt_out[3]~feeder_combout\ : std_logic;
SIGNAL \cnt_0|cnt_out[0]~feeder_combout\ : std_logic;
SIGNAL \hex|Mux6~0_combout\ : std_logic;
SIGNAL \hex|Mux5~0_combout\ : std_logic;
SIGNAL \hex|Mux4~0_combout\ : std_logic;
SIGNAL \hex|Mux3~0_combout\ : std_logic;
SIGNAL \hex|Mux2~0_combout\ : std_logic;
SIGNAL \hex|Mux1~0_combout\ : std_logic;
SIGNAL \hex|Mux0~0_combout\ : std_logic;
SIGNAL \clk_div|cnt_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cnt_0|cnt_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt_0|cnt_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hex|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_rst <= rst;
ww_clk <= clk;
out_hex <= ww_out_hex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_div|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div|clk_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\hex|ALT_INV_Mux6~0_combout\ <= NOT \hex|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X66_Y54_N16
\out_hex[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \out_hex[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\out_hex[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\out_hex[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\out_hex[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[3]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\out_hex[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\out_hex[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\out_hex[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\out_hex[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \out_hex[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y49_N0
\clk_div|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~0_combout\ = \clk_div|cnt_int\(0) $ (VCC)
-- \clk_div|Add0~1\ = CARRY(\clk_div|cnt_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(0),
	datad => VCC,
	combout => \clk_div|Add0~0_combout\,
	cout => \clk_div|Add0~1\);

-- Location: FF_X55_Y49_N1
\clk_div|cnt_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(0));

-- Location: LCCOMB_X55_Y49_N2
\clk_div|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~2_combout\ = (\clk_div|cnt_int\(1) & (!\clk_div|Add0~1\)) # (!\clk_div|cnt_int\(1) & ((\clk_div|Add0~1\) # (GND)))
-- \clk_div|Add0~3\ = CARRY((!\clk_div|Add0~1\) # (!\clk_div|cnt_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(1),
	datad => VCC,
	cin => \clk_div|Add0~1\,
	combout => \clk_div|Add0~2_combout\,
	cout => \clk_div|Add0~3\);

-- Location: FF_X55_Y49_N3
\clk_div|cnt_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(1));

-- Location: LCCOMB_X55_Y49_N4
\clk_div|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~4_combout\ = (\clk_div|cnt_int\(2) & (\clk_div|Add0~3\ $ (GND))) # (!\clk_div|cnt_int\(2) & (!\clk_div|Add0~3\ & VCC))
-- \clk_div|Add0~5\ = CARRY((\clk_div|cnt_int\(2) & !\clk_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(2),
	datad => VCC,
	cin => \clk_div|Add0~3\,
	combout => \clk_div|Add0~4_combout\,
	cout => \clk_div|Add0~5\);

-- Location: FF_X55_Y49_N5
\clk_div|cnt_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(2));

-- Location: LCCOMB_X55_Y49_N6
\clk_div|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~6_combout\ = (\clk_div|cnt_int\(3) & (!\clk_div|Add0~5\)) # (!\clk_div|cnt_int\(3) & ((\clk_div|Add0~5\) # (GND)))
-- \clk_div|Add0~7\ = CARRY((!\clk_div|Add0~5\) # (!\clk_div|cnt_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(3),
	datad => VCC,
	cin => \clk_div|Add0~5\,
	combout => \clk_div|Add0~6_combout\,
	cout => \clk_div|Add0~7\);

-- Location: FF_X55_Y49_N7
\clk_div|cnt_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(3));

-- Location: LCCOMB_X55_Y49_N8
\clk_div|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~8_combout\ = (\clk_div|cnt_int\(4) & (\clk_div|Add0~7\ $ (GND))) # (!\clk_div|cnt_int\(4) & (!\clk_div|Add0~7\ & VCC))
-- \clk_div|Add0~9\ = CARRY((\clk_div|cnt_int\(4) & !\clk_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(4),
	datad => VCC,
	cin => \clk_div|Add0~7\,
	combout => \clk_div|Add0~8_combout\,
	cout => \clk_div|Add0~9\);

-- Location: FF_X55_Y49_N9
\clk_div|cnt_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(4));

-- Location: LCCOMB_X55_Y49_N10
\clk_div|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~10_combout\ = (\clk_div|cnt_int\(5) & (!\clk_div|Add0~9\)) # (!\clk_div|cnt_int\(5) & ((\clk_div|Add0~9\) # (GND)))
-- \clk_div|Add0~11\ = CARRY((!\clk_div|Add0~9\) # (!\clk_div|cnt_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(5),
	datad => VCC,
	cin => \clk_div|Add0~9\,
	combout => \clk_div|Add0~10_combout\,
	cout => \clk_div|Add0~11\);

-- Location: FF_X55_Y49_N11
\clk_div|cnt_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(5));

-- Location: LCCOMB_X55_Y49_N12
\clk_div|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~12_combout\ = (\clk_div|cnt_int\(6) & (\clk_div|Add0~11\ $ (GND))) # (!\clk_div|cnt_int\(6) & (!\clk_div|Add0~11\ & VCC))
-- \clk_div|Add0~13\ = CARRY((\clk_div|cnt_int\(6) & !\clk_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(6),
	datad => VCC,
	cin => \clk_div|Add0~11\,
	combout => \clk_div|Add0~12_combout\,
	cout => \clk_div|Add0~13\);

-- Location: FF_X55_Y49_N13
\clk_div|cnt_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(6));

-- Location: LCCOMB_X55_Y49_N14
\clk_div|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~14_combout\ = (\clk_div|cnt_int\(7) & (!\clk_div|Add0~13\)) # (!\clk_div|cnt_int\(7) & ((\clk_div|Add0~13\) # (GND)))
-- \clk_div|Add0~15\ = CARRY((!\clk_div|Add0~13\) # (!\clk_div|cnt_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(7),
	datad => VCC,
	cin => \clk_div|Add0~13\,
	combout => \clk_div|Add0~14_combout\,
	cout => \clk_div|Add0~15\);

-- Location: LCCOMB_X56_Y48_N22
\clk_div|cnt_int~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~5_combout\ = (\clk_div|Add0~14_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Add0~14_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|cnt_int~5_combout\);

-- Location: FF_X56_Y48_N23
\clk_div|cnt_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(7));

-- Location: LCCOMB_X55_Y49_N16
\clk_div|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~16_combout\ = (\clk_div|cnt_int\(8) & (\clk_div|Add0~15\ $ (GND))) # (!\clk_div|cnt_int\(8) & (!\clk_div|Add0~15\ & VCC))
-- \clk_div|Add0~17\ = CARRY((\clk_div|cnt_int\(8) & !\clk_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(8),
	datad => VCC,
	cin => \clk_div|Add0~15\,
	combout => \clk_div|Add0~16_combout\,
	cout => \clk_div|Add0~17\);

-- Location: FF_X55_Y49_N17
\clk_div|cnt_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(8));

-- Location: LCCOMB_X55_Y49_N18
\clk_div|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~18_combout\ = (\clk_div|cnt_int\(9) & (!\clk_div|Add0~17\)) # (!\clk_div|cnt_int\(9) & ((\clk_div|Add0~17\) # (GND)))
-- \clk_div|Add0~19\ = CARRY((!\clk_div|Add0~17\) # (!\clk_div|cnt_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(9),
	datad => VCC,
	cin => \clk_div|Add0~17\,
	combout => \clk_div|Add0~18_combout\,
	cout => \clk_div|Add0~19\);

-- Location: FF_X55_Y49_N19
\clk_div|cnt_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(9));

-- Location: LCCOMB_X55_Y49_N20
\clk_div|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~20_combout\ = (\clk_div|cnt_int\(10) & (\clk_div|Add0~19\ $ (GND))) # (!\clk_div|cnt_int\(10) & (!\clk_div|Add0~19\ & VCC))
-- \clk_div|Add0~21\ = CARRY((\clk_div|cnt_int\(10) & !\clk_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(10),
	datad => VCC,
	cin => \clk_div|Add0~19\,
	combout => \clk_div|Add0~20_combout\,
	cout => \clk_div|Add0~21\);

-- Location: FF_X55_Y49_N21
\clk_div|cnt_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(10));

-- Location: LCCOMB_X55_Y49_N22
\clk_div|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~22_combout\ = (\clk_div|cnt_int\(11) & (!\clk_div|Add0~21\)) # (!\clk_div|cnt_int\(11) & ((\clk_div|Add0~21\) # (GND)))
-- \clk_div|Add0~23\ = CARRY((!\clk_div|Add0~21\) # (!\clk_div|cnt_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(11),
	datad => VCC,
	cin => \clk_div|Add0~21\,
	combout => \clk_div|Add0~22_combout\,
	cout => \clk_div|Add0~23\);

-- Location: FF_X55_Y49_N23
\clk_div|cnt_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(11));

-- Location: LCCOMB_X55_Y49_N24
\clk_div|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~24_combout\ = (\clk_div|cnt_int\(12) & (\clk_div|Add0~23\ $ (GND))) # (!\clk_div|cnt_int\(12) & (!\clk_div|Add0~23\ & VCC))
-- \clk_div|Add0~25\ = CARRY((\clk_div|cnt_int\(12) & !\clk_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(12),
	datad => VCC,
	cin => \clk_div|Add0~23\,
	combout => \clk_div|Add0~24_combout\,
	cout => \clk_div|Add0~25\);

-- Location: LCCOMB_X56_Y48_N2
\clk_div|cnt_int~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~4_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~24_combout\,
	combout => \clk_div|cnt_int~4_combout\);

-- Location: FF_X56_Y48_N3
\clk_div|cnt_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(12));

-- Location: LCCOMB_X55_Y49_N26
\clk_div|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~26_combout\ = (\clk_div|cnt_int\(13) & (!\clk_div|Add0~25\)) # (!\clk_div|cnt_int\(13) & ((\clk_div|Add0~25\) # (GND)))
-- \clk_div|Add0~27\ = CARRY((!\clk_div|Add0~25\) # (!\clk_div|cnt_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(13),
	datad => VCC,
	cin => \clk_div|Add0~25\,
	combout => \clk_div|Add0~26_combout\,
	cout => \clk_div|Add0~27\);

-- Location: LCCOMB_X56_Y48_N8
\clk_div|cnt_int~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~3_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~26_combout\,
	combout => \clk_div|cnt_int~3_combout\);

-- Location: FF_X56_Y48_N9
\clk_div|cnt_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(13));

-- Location: LCCOMB_X55_Y49_N28
\clk_div|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~28_combout\ = (\clk_div|cnt_int\(14) & (\clk_div|Add0~27\ $ (GND))) # (!\clk_div|cnt_int\(14) & (!\clk_div|Add0~27\ & VCC))
-- \clk_div|Add0~29\ = CARRY((\clk_div|cnt_int\(14) & !\clk_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(14),
	datad => VCC,
	cin => \clk_div|Add0~27\,
	combout => \clk_div|Add0~28_combout\,
	cout => \clk_div|Add0~29\);

-- Location: LCCOMB_X56_Y48_N26
\clk_div|cnt_int~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~2_combout\ = (\clk_div|Add0~28_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~28_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|cnt_int~2_combout\);

-- Location: FF_X56_Y48_N27
\clk_div|cnt_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(14));

-- Location: LCCOMB_X55_Y49_N30
\clk_div|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~30_combout\ = (\clk_div|cnt_int\(15) & (!\clk_div|Add0~29\)) # (!\clk_div|cnt_int\(15) & ((\clk_div|Add0~29\) # (GND)))
-- \clk_div|Add0~31\ = CARRY((!\clk_div|Add0~29\) # (!\clk_div|cnt_int\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(15),
	datad => VCC,
	cin => \clk_div|Add0~29\,
	combout => \clk_div|Add0~30_combout\,
	cout => \clk_div|Add0~31\);

-- Location: LCCOMB_X56_Y48_N0
\clk_div|cnt_int~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~1_combout\ = (\clk_div|Add0~30_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Add0~30_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|cnt_int~1_combout\);

-- Location: FF_X56_Y48_N1
\clk_div|cnt_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(15));

-- Location: LCCOMB_X55_Y48_N0
\clk_div|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~32_combout\ = (\clk_div|cnt_int\(16) & (\clk_div|Add0~31\ $ (GND))) # (!\clk_div|cnt_int\(16) & (!\clk_div|Add0~31\ & VCC))
-- \clk_div|Add0~33\ = CARRY((\clk_div|cnt_int\(16) & !\clk_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(16),
	datad => VCC,
	cin => \clk_div|Add0~31\,
	combout => \clk_div|Add0~32_combout\,
	cout => \clk_div|Add0~33\);

-- Location: FF_X55_Y48_N1
\clk_div|cnt_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(16));

-- Location: LCCOMB_X55_Y48_N2
\clk_div|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~34_combout\ = (\clk_div|cnt_int\(17) & (!\clk_div|Add0~33\)) # (!\clk_div|cnt_int\(17) & ((\clk_div|Add0~33\) # (GND)))
-- \clk_div|Add0~35\ = CARRY((!\clk_div|Add0~33\) # (!\clk_div|cnt_int\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(17),
	datad => VCC,
	cin => \clk_div|Add0~33\,
	combout => \clk_div|Add0~34_combout\,
	cout => \clk_div|Add0~35\);

-- Location: LCCOMB_X54_Y48_N16
\clk_div|cnt_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~0_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~34_combout\,
	combout => \clk_div|cnt_int~0_combout\);

-- Location: FF_X54_Y48_N17
\clk_div|cnt_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(17));

-- Location: LCCOMB_X55_Y48_N4
\clk_div|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~36_combout\ = (\clk_div|cnt_int\(18) & (\clk_div|Add0~35\ $ (GND))) # (!\clk_div|cnt_int\(18) & (!\clk_div|Add0~35\ & VCC))
-- \clk_div|Add0~37\ = CARRY((\clk_div|cnt_int\(18) & !\clk_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(18),
	datad => VCC,
	cin => \clk_div|Add0~35\,
	combout => \clk_div|Add0~36_combout\,
	cout => \clk_div|Add0~37\);

-- Location: FF_X55_Y48_N5
\clk_div|cnt_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(18));

-- Location: LCCOMB_X55_Y48_N6
\clk_div|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~38_combout\ = (\clk_div|cnt_int\(19) & (!\clk_div|Add0~37\)) # (!\clk_div|cnt_int\(19) & ((\clk_div|Add0~37\) # (GND)))
-- \clk_div|Add0~39\ = CARRY((!\clk_div|Add0~37\) # (!\clk_div|cnt_int\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(19),
	datad => VCC,
	cin => \clk_div|Add0~37\,
	combout => \clk_div|Add0~38_combout\,
	cout => \clk_div|Add0~39\);

-- Location: LCCOMB_X56_Y48_N4
\clk_div|cnt_int~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~7_combout\ = (\clk_div|Add0~38_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~38_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|cnt_int~7_combout\);

-- Location: FF_X56_Y48_N5
\clk_div|cnt_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(19));

-- Location: LCCOMB_X55_Y48_N8
\clk_div|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~40_combout\ = (\clk_div|cnt_int\(20) & (\clk_div|Add0~39\ $ (GND))) # (!\clk_div|cnt_int\(20) & (!\clk_div|Add0~39\ & VCC))
-- \clk_div|Add0~41\ = CARRY((\clk_div|cnt_int\(20) & !\clk_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(20),
	datad => VCC,
	cin => \clk_div|Add0~39\,
	combout => \clk_div|Add0~40_combout\,
	cout => \clk_div|Add0~41\);

-- Location: LCCOMB_X56_Y48_N30
\clk_div|cnt_int~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~8_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~40_combout\,
	combout => \clk_div|cnt_int~8_combout\);

-- Location: FF_X56_Y48_N31
\clk_div|cnt_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(20));

-- Location: LCCOMB_X55_Y48_N10
\clk_div|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~42_combout\ = (\clk_div|cnt_int\(21) & (!\clk_div|Add0~41\)) # (!\clk_div|cnt_int\(21) & ((\clk_div|Add0~41\) # (GND)))
-- \clk_div|Add0~43\ = CARRY((!\clk_div|Add0~41\) # (!\clk_div|cnt_int\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(21),
	datad => VCC,
	cin => \clk_div|Add0~41\,
	combout => \clk_div|Add0~42_combout\,
	cout => \clk_div|Add0~43\);

-- Location: LCCOMB_X56_Y48_N20
\clk_div|cnt_int~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~9_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~42_combout\,
	combout => \clk_div|cnt_int~9_combout\);

-- Location: FF_X56_Y48_N21
\clk_div|cnt_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(21));

-- Location: LCCOMB_X55_Y48_N12
\clk_div|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~44_combout\ = (\clk_div|cnt_int\(22) & (\clk_div|Add0~43\ $ (GND))) # (!\clk_div|cnt_int\(22) & (!\clk_div|Add0~43\ & VCC))
-- \clk_div|Add0~45\ = CARRY((\clk_div|cnt_int\(22) & !\clk_div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(22),
	datad => VCC,
	cin => \clk_div|Add0~43\,
	combout => \clk_div|Add0~44_combout\,
	cout => \clk_div|Add0~45\);

-- Location: LCCOMB_X56_Y48_N6
\clk_div|cnt_int~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~10_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~44_combout\,
	combout => \clk_div|cnt_int~10_combout\);

-- Location: FF_X56_Y48_N7
\clk_div|cnt_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(22));

-- Location: LCCOMB_X55_Y48_N14
\clk_div|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~46_combout\ = (\clk_div|cnt_int\(23) & (!\clk_div|Add0~45\)) # (!\clk_div|cnt_int\(23) & ((\clk_div|Add0~45\) # (GND)))
-- \clk_div|Add0~47\ = CARRY((!\clk_div|Add0~45\) # (!\clk_div|cnt_int\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(23),
	datad => VCC,
	cin => \clk_div|Add0~45\,
	combout => \clk_div|Add0~46_combout\,
	cout => \clk_div|Add0~47\);

-- Location: LCCOMB_X56_Y48_N10
\clk_div|cnt_int~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~11_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~46_combout\,
	combout => \clk_div|cnt_int~11_combout\);

-- Location: FF_X56_Y48_N11
\clk_div|cnt_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(23));

-- Location: LCCOMB_X55_Y48_N16
\clk_div|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~48_combout\ = (\clk_div|cnt_int\(24) & (\clk_div|Add0~47\ $ (GND))) # (!\clk_div|cnt_int\(24) & (!\clk_div|Add0~47\ & VCC))
-- \clk_div|Add0~49\ = CARRY((\clk_div|cnt_int\(24) & !\clk_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(24),
	datad => VCC,
	cin => \clk_div|Add0~47\,
	combout => \clk_div|Add0~48_combout\,
	cout => \clk_div|Add0~49\);

-- Location: FF_X55_Y48_N17
\clk_div|cnt_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(24));

-- Location: LCCOMB_X55_Y48_N26
\clk_div|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~58_combout\ = (\clk_div|cnt_int\(29) & (!\clk_div|Add0~57\)) # (!\clk_div|cnt_int\(29) & ((\clk_div|Add0~57\) # (GND)))
-- \clk_div|Add0~59\ = CARRY((!\clk_div|Add0~57\) # (!\clk_div|cnt_int\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(29),
	datad => VCC,
	cin => \clk_div|Add0~57\,
	combout => \clk_div|Add0~58_combout\,
	cout => \clk_div|Add0~59\);

-- Location: LCCOMB_X55_Y48_N28
\clk_div|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~60_combout\ = (\clk_div|cnt_int\(30) & (\clk_div|Add0~59\ $ (GND))) # (!\clk_div|cnt_int\(30) & (!\clk_div|Add0~59\ & VCC))
-- \clk_div|Add0~61\ = CARRY((\clk_div|cnt_int\(30) & !\clk_div|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(30),
	datad => VCC,
	cin => \clk_div|Add0~59\,
	combout => \clk_div|Add0~60_combout\,
	cout => \clk_div|Add0~61\);

-- Location: FF_X55_Y48_N29
\clk_div|cnt_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(30));

-- Location: LCCOMB_X55_Y48_N30
\clk_div|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~62_combout\ = \clk_div|cnt_int\(31) $ (\clk_div|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(31),
	cin => \clk_div|Add0~61\,
	combout => \clk_div|Add0~62_combout\);

-- Location: FF_X55_Y48_N31
\clk_div|cnt_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(31));

-- Location: LCCOMB_X56_Y49_N28
\clk_div|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~7_combout\ = (\clk_div|cnt_int\(1) & (\clk_div|cnt_int\(3) & (\clk_div|cnt_int\(2) & \clk_div|cnt_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(1),
	datab => \clk_div|cnt_int\(3),
	datac => \clk_div|cnt_int\(2),
	datad => \clk_div|cnt_int\(4),
	combout => \clk_div|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y49_N30
\clk_div|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~8_combout\ = (!\clk_div|cnt_int\(24) & (!\clk_div|cnt_int\(31) & (\clk_div|cnt_int\(0) & \clk_div|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(24),
	datab => \clk_div|cnt_int\(31),
	datac => \clk_div|cnt_int\(0),
	datad => \clk_div|Equal0~7_combout\,
	combout => \clk_div|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y48_N28
\clk_div|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~6_combout\ = (\clk_div|cnt_int\(5) & (!\clk_div|cnt_int\(16) & (!\clk_div|cnt_int\(18) & \clk_div|cnt_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(5),
	datab => \clk_div|cnt_int\(16),
	datac => \clk_div|cnt_int\(18),
	datad => \clk_div|cnt_int\(6),
	combout => \clk_div|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y48_N8
\clk_div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~1_combout\ = (!\clk_div|cnt_int\(7) & (!\clk_div|cnt_int\(9) & (!\clk_div|cnt_int\(10) & !\clk_div|cnt_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(7),
	datab => \clk_div|cnt_int\(9),
	datac => \clk_div|cnt_int\(10),
	datad => \clk_div|cnt_int\(8),
	combout => \clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y48_N12
\clk_div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~3_combout\ = (!\clk_div|cnt_int\(29) & (!\clk_div|cnt_int\(28) & (!\clk_div|cnt_int\(26) & !\clk_div|cnt_int\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(29),
	datab => \clk_div|cnt_int\(28),
	datac => \clk_div|cnt_int\(26),
	datad => \clk_div|cnt_int\(27),
	combout => \clk_div|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y48_N6
\clk_div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~4_combout\ = (\clk_div|Equal0~1_combout\ & (!\clk_div|cnt_int\(30) & (!\clk_div|cnt_int\(11) & \clk_div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~1_combout\,
	datab => \clk_div|cnt_int\(30),
	datac => \clk_div|cnt_int\(11),
	datad => \clk_div|Equal0~3_combout\,
	combout => \clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y48_N24
\clk_div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~2_combout\ = (\clk_div|cnt_int\(22) & (\clk_div|cnt_int\(19) & (\clk_div|cnt_int\(20) & \clk_div|cnt_int\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(22),
	datab => \clk_div|cnt_int\(19),
	datac => \clk_div|cnt_int\(20),
	datad => \clk_div|cnt_int\(21),
	combout => \clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y48_N16
\clk_div|clk_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~1_combout\ = (\clk_div|cnt_int\(14) & (\clk_div|cnt_int\(13) & \clk_div|cnt_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(14),
	datac => \clk_div|cnt_int\(13),
	datad => \clk_div|cnt_int\(12),
	combout => \clk_div|clk_out~1_combout\);

-- Location: LCCOMB_X54_Y48_N0
\clk_div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~0_combout\ = (\clk_div|cnt_int\(17) & (\clk_div|cnt_int\(15) & \clk_div|clk_out~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(17),
	datac => \clk_div|cnt_int\(15),
	datad => \clk_div|clk_out~1_combout\,
	combout => \clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y48_N12
\clk_div|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~5_combout\ = (\clk_div|cnt_int\(25) & (\clk_div|Equal0~2_combout\ & (\clk_div|cnt_int\(23) & \clk_div|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(25),
	datab => \clk_div|Equal0~2_combout\,
	datac => \clk_div|cnt_int\(23),
	datad => \clk_div|Equal0~0_combout\,
	combout => \clk_div|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y48_N18
\clk_div|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~9_combout\ = (\clk_div|Equal0~8_combout\ & (\clk_div|Equal0~6_combout\ & (\clk_div|Equal0~4_combout\ & \clk_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~8_combout\,
	datab => \clk_div|Equal0~6_combout\,
	datac => \clk_div|Equal0~4_combout\,
	datad => \clk_div|Equal0~5_combout\,
	combout => \clk_div|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y48_N18
\clk_div|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~50_combout\ = (\clk_div|cnt_int\(25) & (!\clk_div|Add0~49\)) # (!\clk_div|cnt_int\(25) & ((\clk_div|Add0~49\) # (GND)))
-- \clk_div|Add0~51\ = CARRY((!\clk_div|Add0~49\) # (!\clk_div|cnt_int\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(25),
	datad => VCC,
	cin => \clk_div|Add0~49\,
	combout => \clk_div|Add0~50_combout\,
	cout => \clk_div|Add0~51\);

-- Location: LCCOMB_X54_Y48_N10
\clk_div|cnt_int~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|cnt_int~6_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~50_combout\,
	combout => \clk_div|cnt_int~6_combout\);

-- Location: FF_X54_Y48_N11
\clk_div|cnt_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|cnt_int~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(25));

-- Location: LCCOMB_X55_Y48_N20
\clk_div|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~52_combout\ = (\clk_div|cnt_int\(26) & (\clk_div|Add0~51\ $ (GND))) # (!\clk_div|cnt_int\(26) & (!\clk_div|Add0~51\ & VCC))
-- \clk_div|Add0~53\ = CARRY((\clk_div|cnt_int\(26) & !\clk_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(26),
	datad => VCC,
	cin => \clk_div|Add0~51\,
	combout => \clk_div|Add0~52_combout\,
	cout => \clk_div|Add0~53\);

-- Location: FF_X55_Y48_N21
\clk_div|cnt_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(26));

-- Location: LCCOMB_X55_Y48_N22
\clk_div|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~54_combout\ = (\clk_div|cnt_int\(27) & (!\clk_div|Add0~53\)) # (!\clk_div|cnt_int\(27) & ((\clk_div|Add0~53\) # (GND)))
-- \clk_div|Add0~55\ = CARRY((!\clk_div|Add0~53\) # (!\clk_div|cnt_int\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(27),
	datad => VCC,
	cin => \clk_div|Add0~53\,
	combout => \clk_div|Add0~54_combout\,
	cout => \clk_div|Add0~55\);

-- Location: FF_X55_Y48_N23
\clk_div|cnt_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(27));

-- Location: LCCOMB_X55_Y48_N24
\clk_div|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|Add0~56_combout\ = (\clk_div|cnt_int\(28) & (\clk_div|Add0~55\ $ (GND))) # (!\clk_div|cnt_int\(28) & (!\clk_div|Add0~55\ & VCC))
-- \clk_div|Add0~57\ = CARRY((\clk_div|cnt_int\(28) & !\clk_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|cnt_int\(28),
	datad => VCC,
	cin => \clk_div|Add0~55\,
	combout => \clk_div|Add0~56_combout\,
	cout => \clk_div|Add0~57\);

-- Location: FF_X55_Y48_N25
\clk_div|cnt_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(28));

-- Location: FF_X55_Y48_N27
\clk_div|cnt_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|cnt_int\(29));

-- Location: LCCOMB_X52_Y48_N8
\clk_div|clk_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~9_combout\ = (\clk_div|cnt_int\(29)) # ((\clk_div|cnt_int\(26)) # ((\clk_div|cnt_int\(25) & \clk_div|cnt_int\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(29),
	datab => \clk_div|cnt_int\(25),
	datac => \clk_div|cnt_int\(26),
	datad => \clk_div|cnt_int\(24),
	combout => \clk_div|clk_out~9_combout\);

-- Location: LCCOMB_X56_Y48_N14
\clk_div|clk_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~10_combout\ = (\clk_div|cnt_int\(27)) # ((\clk_div|cnt_int\(28)) # ((\clk_div|cnt_int\(30)) # (\clk_div|cnt_int\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(27),
	datab => \clk_div|cnt_int\(28),
	datac => \clk_div|cnt_int\(30),
	datad => \clk_div|cnt_int\(31),
	combout => \clk_div|clk_out~10_combout\);

-- Location: LCCOMB_X54_Y48_N22
\clk_div|clk_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~11_combout\ = (\clk_div|clk_out~9_combout\) # (\clk_div|clk_out~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~9_combout\,
	datad => \clk_div|clk_out~10_combout\,
	combout => \clk_div|clk_out~11_combout\);

-- Location: LCCOMB_X54_Y48_N30
\clk_div|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~0_combout\ = (\clk_div|cnt_int\(18)) # ((\clk_div|cnt_int\(16) & \clk_div|cnt_int\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(18),
	datab => \clk_div|cnt_int\(16),
	datad => \clk_div|cnt_int\(17),
	combout => \clk_div|clk_out~0_combout\);

-- Location: LCCOMB_X54_Y48_N26
\clk_div|clk_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~2_combout\ = (\clk_div|clk_out~0_combout\) # ((\clk_div|Equal0~0_combout\ & ((\clk_div|cnt_int\(11)) # (!\clk_div|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~1_combout\,
	datab => \clk_div|cnt_int\(11),
	datac => \clk_div|clk_out~0_combout\,
	datad => \clk_div|Equal0~0_combout\,
	combout => \clk_div|clk_out~2_combout\);

-- Location: LCCOMB_X54_Y48_N14
\clk_div|clk_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~3_combout\ = (\clk_div|cnt_int\(25) & (\clk_div|cnt_int\(23) & (\clk_div|clk_out~2_combout\ & \clk_div|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(25),
	datab => \clk_div|cnt_int\(23),
	datac => \clk_div|clk_out~2_combout\,
	datad => \clk_div|Equal0~2_combout\,
	combout => \clk_div|clk_out~3_combout\);

-- Location: LCCOMB_X54_Y48_N4
\clk_div|clk_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~4_combout\ = (((!\clk_div|cnt_int\(17) & !\clk_div|cnt_int\(16))) # (!\clk_div|Equal0~2_combout\)) # (!\clk_div|cnt_int\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(18),
	datab => \clk_div|cnt_int\(17),
	datac => \clk_div|cnt_int\(16),
	datad => \clk_div|Equal0~2_combout\,
	combout => \clk_div|clk_out~4_combout\);

-- Location: LCCOMB_X54_Y48_N2
\clk_div|clk_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~5_combout\ = (((!\clk_div|cnt_int\(6) & \clk_div|Equal0~1_combout\)) # (!\clk_div|clk_out~1_combout\)) # (!\clk_div|cnt_int\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(6),
	datab => \clk_div|cnt_int\(11),
	datac => \clk_div|Equal0~1_combout\,
	datad => \clk_div|clk_out~1_combout\,
	combout => \clk_div|clk_out~5_combout\);

-- Location: LCCOMB_X54_Y48_N18
\clk_div|clk_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~6_combout\ = (\clk_div|clk_out~4_combout\) # ((!\clk_div|cnt_int\(15) & (!\clk_div|cnt_int\(17) & \clk_div|clk_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(15),
	datab => \clk_div|cnt_int\(17),
	datac => \clk_div|clk_out~4_combout\,
	datad => \clk_div|clk_out~5_combout\,
	combout => \clk_div|clk_out~6_combout\);

-- Location: LCCOMB_X54_Y48_N28
\clk_div|clk_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~7_combout\ = (\clk_div|cnt_int\(25)) # ((\clk_div|cnt_int\(24) & ((\clk_div|cnt_int\(23)) # (!\clk_div|clk_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(25),
	datab => \clk_div|cnt_int\(23),
	datac => \clk_div|cnt_int\(24),
	datad => \clk_div|clk_out~6_combout\,
	combout => \clk_div|clk_out~7_combout\);

-- Location: LCCOMB_X54_Y48_N20
\clk_div|clk_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~8_combout\ = (\clk_div|cnt_int\(31)) # ((!\clk_div|cnt_int\(30) & (\clk_div|Equal0~3_combout\ & !\clk_div|clk_out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|cnt_int\(31),
	datab => \clk_div|cnt_int\(30),
	datac => \clk_div|Equal0~3_combout\,
	datad => \clk_div|clk_out~7_combout\,
	combout => \clk_div|clk_out~8_combout\);

-- Location: LCCOMB_X54_Y48_N24
\clk_div|clk_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~12_combout\ = (\clk_div|clk_out~8_combout\) # ((\clk_div|clk_out~q\ & ((\clk_div|clk_out~11_combout\) # (\clk_div|clk_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~11_combout\,
	datab => \clk_div|clk_out~q\,
	datac => \clk_div|clk_out~3_combout\,
	datad => \clk_div|clk_out~8_combout\,
	combout => \clk_div|clk_out~12_combout\);

-- Location: FF_X54_Y48_N31
\clk_div|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div|clk_out~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|clk_out~q\);

-- Location: CLKCTRL_G10
\clk_div|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y47_N0
\cnt_0|cnt_int[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[0]~32_combout\ = \cnt_0|cnt_int\(0) $ (VCC)
-- \cnt_0|cnt_int[0]~33\ = CARRY(\cnt_0|cnt_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(0),
	datad => VCC,
	combout => \cnt_0|cnt_int[0]~32_combout\,
	cout => \cnt_0|cnt_int[0]~33\);

-- Location: LCCOMB_X66_Y47_N4
\cnt_0|cnt_int[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[2]~47_combout\ = (\cnt_0|cnt_int\(2) & (\cnt_0|cnt_int[1]~46\ $ (GND))) # (!\cnt_0|cnt_int\(2) & (!\cnt_0|cnt_int[1]~46\ & VCC))
-- \cnt_0|cnt_int[2]~48\ = CARRY((\cnt_0|cnt_int\(2) & !\cnt_0|cnt_int[1]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(2),
	datad => VCC,
	cin => \cnt_0|cnt_int[1]~46\,
	combout => \cnt_0|cnt_int[2]~47_combout\,
	cout => \cnt_0|cnt_int[2]~48\);

-- Location: LCCOMB_X66_Y47_N6
\cnt_0|cnt_int[3]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[3]~49_combout\ = (\cnt_0|cnt_int\(3) & (!\cnt_0|cnt_int[2]~48\)) # (!\cnt_0|cnt_int\(3) & ((\cnt_0|cnt_int[2]~48\) # (GND)))
-- \cnt_0|cnt_int[3]~50\ = CARRY((!\cnt_0|cnt_int[2]~48\) # (!\cnt_0|cnt_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(3),
	datad => VCC,
	cin => \cnt_0|cnt_int[2]~48\,
	combout => \cnt_0|cnt_int[3]~49_combout\,
	cout => \cnt_0|cnt_int[3]~50\);

-- Location: IOIBUF_X51_Y54_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X66_Y50_N20
\cnt_0|cnt_int[20]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~44_combout\ = (\rst~input_o\) # (\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \en~input_o\,
	combout => \cnt_0|cnt_int[20]~44_combout\);

-- Location: FF_X66_Y47_N7
\cnt_0|cnt_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[3]~49_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(3));

-- Location: LCCOMB_X66_Y47_N8
\cnt_0|cnt_int[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[4]~51_combout\ = (\cnt_0|cnt_int\(4) & (\cnt_0|cnt_int[3]~50\ $ (GND))) # (!\cnt_0|cnt_int\(4) & (!\cnt_0|cnt_int[3]~50\ & VCC))
-- \cnt_0|cnt_int[4]~52\ = CARRY((\cnt_0|cnt_int\(4) & !\cnt_0|cnt_int[3]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(4),
	datad => VCC,
	cin => \cnt_0|cnt_int[3]~50\,
	combout => \cnt_0|cnt_int[4]~51_combout\,
	cout => \cnt_0|cnt_int[4]~52\);

-- Location: FF_X66_Y47_N9
\cnt_0|cnt_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[4]~51_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(4));

-- Location: LCCOMB_X66_Y47_N10
\cnt_0|cnt_int[5]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[5]~53_combout\ = (\cnt_0|cnt_int\(5) & (!\cnt_0|cnt_int[4]~52\)) # (!\cnt_0|cnt_int\(5) & ((\cnt_0|cnt_int[4]~52\) # (GND)))
-- \cnt_0|cnt_int[5]~54\ = CARRY((!\cnt_0|cnt_int[4]~52\) # (!\cnt_0|cnt_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(5),
	datad => VCC,
	cin => \cnt_0|cnt_int[4]~52\,
	combout => \cnt_0|cnt_int[5]~53_combout\,
	cout => \cnt_0|cnt_int[5]~54\);

-- Location: FF_X66_Y47_N11
\cnt_0|cnt_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[5]~53_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(5));

-- Location: LCCOMB_X66_Y47_N12
\cnt_0|cnt_int[6]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[6]~55_combout\ = (\cnt_0|cnt_int\(6) & (\cnt_0|cnt_int[5]~54\ $ (GND))) # (!\cnt_0|cnt_int\(6) & (!\cnt_0|cnt_int[5]~54\ & VCC))
-- \cnt_0|cnt_int[6]~56\ = CARRY((\cnt_0|cnt_int\(6) & !\cnt_0|cnt_int[5]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(6),
	datad => VCC,
	cin => \cnt_0|cnt_int[5]~54\,
	combout => \cnt_0|cnt_int[6]~55_combout\,
	cout => \cnt_0|cnt_int[6]~56\);

-- Location: FF_X66_Y47_N13
\cnt_0|cnt_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[6]~55_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(6));

-- Location: LCCOMB_X66_Y47_N14
\cnt_0|cnt_int[7]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[7]~57_combout\ = (\cnt_0|cnt_int\(7) & (!\cnt_0|cnt_int[6]~56\)) # (!\cnt_0|cnt_int\(7) & ((\cnt_0|cnt_int[6]~56\) # (GND)))
-- \cnt_0|cnt_int[7]~58\ = CARRY((!\cnt_0|cnt_int[6]~56\) # (!\cnt_0|cnt_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(7),
	datad => VCC,
	cin => \cnt_0|cnt_int[6]~56\,
	combout => \cnt_0|cnt_int[7]~57_combout\,
	cout => \cnt_0|cnt_int[7]~58\);

-- Location: FF_X66_Y47_N15
\cnt_0|cnt_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[7]~57_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(7));

-- Location: LCCOMB_X66_Y47_N16
\cnt_0|cnt_int[8]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[8]~59_combout\ = (\cnt_0|cnt_int\(8) & (\cnt_0|cnt_int[7]~58\ $ (GND))) # (!\cnt_0|cnt_int\(8) & (!\cnt_0|cnt_int[7]~58\ & VCC))
-- \cnt_0|cnt_int[8]~60\ = CARRY((\cnt_0|cnt_int\(8) & !\cnt_0|cnt_int[7]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(8),
	datad => VCC,
	cin => \cnt_0|cnt_int[7]~58\,
	combout => \cnt_0|cnt_int[8]~59_combout\,
	cout => \cnt_0|cnt_int[8]~60\);

-- Location: FF_X66_Y47_N17
\cnt_0|cnt_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[8]~59_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(8));

-- Location: LCCOMB_X66_Y47_N18
\cnt_0|cnt_int[9]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[9]~61_combout\ = (\cnt_0|cnt_int\(9) & (!\cnt_0|cnt_int[8]~60\)) # (!\cnt_0|cnt_int\(9) & ((\cnt_0|cnt_int[8]~60\) # (GND)))
-- \cnt_0|cnt_int[9]~62\ = CARRY((!\cnt_0|cnt_int[8]~60\) # (!\cnt_0|cnt_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(9),
	datad => VCC,
	cin => \cnt_0|cnt_int[8]~60\,
	combout => \cnt_0|cnt_int[9]~61_combout\,
	cout => \cnt_0|cnt_int[9]~62\);

-- Location: FF_X66_Y47_N19
\cnt_0|cnt_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[9]~61_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(9));

-- Location: LCCOMB_X66_Y47_N20
\cnt_0|cnt_int[10]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[10]~63_combout\ = (\cnt_0|cnt_int\(10) & (\cnt_0|cnt_int[9]~62\ $ (GND))) # (!\cnt_0|cnt_int\(10) & (!\cnt_0|cnt_int[9]~62\ & VCC))
-- \cnt_0|cnt_int[10]~64\ = CARRY((\cnt_0|cnt_int\(10) & !\cnt_0|cnt_int[9]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(10),
	datad => VCC,
	cin => \cnt_0|cnt_int[9]~62\,
	combout => \cnt_0|cnt_int[10]~63_combout\,
	cout => \cnt_0|cnt_int[10]~64\);

-- Location: FF_X66_Y47_N21
\cnt_0|cnt_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[10]~63_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(10));

-- Location: LCCOMB_X66_Y47_N22
\cnt_0|cnt_int[11]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[11]~65_combout\ = (\cnt_0|cnt_int\(11) & (!\cnt_0|cnt_int[10]~64\)) # (!\cnt_0|cnt_int\(11) & ((\cnt_0|cnt_int[10]~64\) # (GND)))
-- \cnt_0|cnt_int[11]~66\ = CARRY((!\cnt_0|cnt_int[10]~64\) # (!\cnt_0|cnt_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(11),
	datad => VCC,
	cin => \cnt_0|cnt_int[10]~64\,
	combout => \cnt_0|cnt_int[11]~65_combout\,
	cout => \cnt_0|cnt_int[11]~66\);

-- Location: FF_X66_Y47_N23
\cnt_0|cnt_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[11]~65_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(11));

-- Location: LCCOMB_X66_Y47_N24
\cnt_0|cnt_int[12]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[12]~67_combout\ = (\cnt_0|cnt_int\(12) & (\cnt_0|cnt_int[11]~66\ $ (GND))) # (!\cnt_0|cnt_int\(12) & (!\cnt_0|cnt_int[11]~66\ & VCC))
-- \cnt_0|cnt_int[12]~68\ = CARRY((\cnt_0|cnt_int\(12) & !\cnt_0|cnt_int[11]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(12),
	datad => VCC,
	cin => \cnt_0|cnt_int[11]~66\,
	combout => \cnt_0|cnt_int[12]~67_combout\,
	cout => \cnt_0|cnt_int[12]~68\);

-- Location: FF_X66_Y47_N25
\cnt_0|cnt_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[12]~67_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(12));

-- Location: LCCOMB_X66_Y47_N26
\cnt_0|cnt_int[13]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[13]~69_combout\ = (\cnt_0|cnt_int\(13) & (!\cnt_0|cnt_int[12]~68\)) # (!\cnt_0|cnt_int\(13) & ((\cnt_0|cnt_int[12]~68\) # (GND)))
-- \cnt_0|cnt_int[13]~70\ = CARRY((!\cnt_0|cnt_int[12]~68\) # (!\cnt_0|cnt_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(13),
	datad => VCC,
	cin => \cnt_0|cnt_int[12]~68\,
	combout => \cnt_0|cnt_int[13]~69_combout\,
	cout => \cnt_0|cnt_int[13]~70\);

-- Location: FF_X66_Y47_N27
\cnt_0|cnt_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[13]~69_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(13));

-- Location: LCCOMB_X66_Y47_N28
\cnt_0|cnt_int[14]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[14]~71_combout\ = (\cnt_0|cnt_int\(14) & (\cnt_0|cnt_int[13]~70\ $ (GND))) # (!\cnt_0|cnt_int\(14) & (!\cnt_0|cnt_int[13]~70\ & VCC))
-- \cnt_0|cnt_int[14]~72\ = CARRY((\cnt_0|cnt_int\(14) & !\cnt_0|cnt_int[13]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(14),
	datad => VCC,
	cin => \cnt_0|cnt_int[13]~70\,
	combout => \cnt_0|cnt_int[14]~71_combout\,
	cout => \cnt_0|cnt_int[14]~72\);

-- Location: FF_X66_Y47_N29
\cnt_0|cnt_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[14]~71_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(14));

-- Location: LCCOMB_X66_Y47_N30
\cnt_0|cnt_int[15]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[15]~73_combout\ = (\cnt_0|cnt_int\(15) & (!\cnt_0|cnt_int[14]~72\)) # (!\cnt_0|cnt_int\(15) & ((\cnt_0|cnt_int[14]~72\) # (GND)))
-- \cnt_0|cnt_int[15]~74\ = CARRY((!\cnt_0|cnt_int[14]~72\) # (!\cnt_0|cnt_int\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(15),
	datad => VCC,
	cin => \cnt_0|cnt_int[14]~72\,
	combout => \cnt_0|cnt_int[15]~73_combout\,
	cout => \cnt_0|cnt_int[15]~74\);

-- Location: FF_X66_Y47_N31
\cnt_0|cnt_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[15]~73_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(15));

-- Location: LCCOMB_X66_Y46_N0
\cnt_0|cnt_int[16]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[16]~75_combout\ = (\cnt_0|cnt_int\(16) & (\cnt_0|cnt_int[15]~74\ $ (GND))) # (!\cnt_0|cnt_int\(16) & (!\cnt_0|cnt_int[15]~74\ & VCC))
-- \cnt_0|cnt_int[16]~76\ = CARRY((\cnt_0|cnt_int\(16) & !\cnt_0|cnt_int[15]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(16),
	datad => VCC,
	cin => \cnt_0|cnt_int[15]~74\,
	combout => \cnt_0|cnt_int[16]~75_combout\,
	cout => \cnt_0|cnt_int[16]~76\);

-- Location: FF_X65_Y47_N13
\cnt_0|cnt_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	asdata => \cnt_0|cnt_int[16]~75_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	sload => VCC,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(16));

-- Location: LCCOMB_X66_Y46_N2
\cnt_0|cnt_int[17]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[17]~77_combout\ = (\cnt_0|cnt_int\(17) & (!\cnt_0|cnt_int[16]~76\)) # (!\cnt_0|cnt_int\(17) & ((\cnt_0|cnt_int[16]~76\) # (GND)))
-- \cnt_0|cnt_int[17]~78\ = CARRY((!\cnt_0|cnt_int[16]~76\) # (!\cnt_0|cnt_int\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(17),
	datad => VCC,
	cin => \cnt_0|cnt_int[16]~76\,
	combout => \cnt_0|cnt_int[17]~77_combout\,
	cout => \cnt_0|cnt_int[17]~78\);

-- Location: FF_X65_Y47_N31
\cnt_0|cnt_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	asdata => \cnt_0|cnt_int[17]~77_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	sload => VCC,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(17));

-- Location: LCCOMB_X66_Y46_N4
\cnt_0|cnt_int[18]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[18]~79_combout\ = (\cnt_0|cnt_int\(18) & (\cnt_0|cnt_int[17]~78\ $ (GND))) # (!\cnt_0|cnt_int\(18) & (!\cnt_0|cnt_int[17]~78\ & VCC))
-- \cnt_0|cnt_int[18]~80\ = CARRY((\cnt_0|cnt_int\(18) & !\cnt_0|cnt_int[17]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(18),
	datad => VCC,
	cin => \cnt_0|cnt_int[17]~78\,
	combout => \cnt_0|cnt_int[18]~79_combout\,
	cout => \cnt_0|cnt_int[18]~80\);

-- Location: FF_X65_Y47_N21
\cnt_0|cnt_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	asdata => \cnt_0|cnt_int[18]~79_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	sload => VCC,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(18));

-- Location: LCCOMB_X66_Y46_N6
\cnt_0|cnt_int[19]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[19]~81_combout\ = (\cnt_0|cnt_int\(19) & (!\cnt_0|cnt_int[18]~80\)) # (!\cnt_0|cnt_int\(19) & ((\cnt_0|cnt_int[18]~80\) # (GND)))
-- \cnt_0|cnt_int[19]~82\ = CARRY((!\cnt_0|cnt_int[18]~80\) # (!\cnt_0|cnt_int\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(19),
	datad => VCC,
	cin => \cnt_0|cnt_int[18]~80\,
	combout => \cnt_0|cnt_int[19]~81_combout\,
	cout => \cnt_0|cnt_int[19]~82\);

-- Location: FF_X66_Y46_N7
\cnt_0|cnt_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[19]~81_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(19));

-- Location: LCCOMB_X66_Y46_N8
\cnt_0|cnt_int[20]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~83_combout\ = (\cnt_0|cnt_int\(20) & (\cnt_0|cnt_int[19]~82\ $ (GND))) # (!\cnt_0|cnt_int\(20) & (!\cnt_0|cnt_int[19]~82\ & VCC))
-- \cnt_0|cnt_int[20]~84\ = CARRY((\cnt_0|cnt_int\(20) & !\cnt_0|cnt_int[19]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(20),
	datad => VCC,
	cin => \cnt_0|cnt_int[19]~82\,
	combout => \cnt_0|cnt_int[20]~83_combout\,
	cout => \cnt_0|cnt_int[20]~84\);

-- Location: FF_X66_Y46_N9
\cnt_0|cnt_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[20]~83_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(20));

-- Location: LCCOMB_X66_Y46_N10
\cnt_0|cnt_int[21]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[21]~85_combout\ = (\cnt_0|cnt_int\(21) & (!\cnt_0|cnt_int[20]~84\)) # (!\cnt_0|cnt_int\(21) & ((\cnt_0|cnt_int[20]~84\) # (GND)))
-- \cnt_0|cnt_int[21]~86\ = CARRY((!\cnt_0|cnt_int[20]~84\) # (!\cnt_0|cnt_int\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(21),
	datad => VCC,
	cin => \cnt_0|cnt_int[20]~84\,
	combout => \cnt_0|cnt_int[21]~85_combout\,
	cout => \cnt_0|cnt_int[21]~86\);

-- Location: FF_X66_Y46_N11
\cnt_0|cnt_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[21]~85_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(21));

-- Location: LCCOMB_X66_Y46_N12
\cnt_0|cnt_int[22]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[22]~87_combout\ = (\cnt_0|cnt_int\(22) & (\cnt_0|cnt_int[21]~86\ $ (GND))) # (!\cnt_0|cnt_int\(22) & (!\cnt_0|cnt_int[21]~86\ & VCC))
-- \cnt_0|cnt_int[22]~88\ = CARRY((\cnt_0|cnt_int\(22) & !\cnt_0|cnt_int[21]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(22),
	datad => VCC,
	cin => \cnt_0|cnt_int[21]~86\,
	combout => \cnt_0|cnt_int[22]~87_combout\,
	cout => \cnt_0|cnt_int[22]~88\);

-- Location: FF_X66_Y46_N13
\cnt_0|cnt_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[22]~87_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(22));

-- Location: LCCOMB_X66_Y46_N14
\cnt_0|cnt_int[23]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[23]~89_combout\ = (\cnt_0|cnt_int\(23) & (!\cnt_0|cnt_int[22]~88\)) # (!\cnt_0|cnt_int\(23) & ((\cnt_0|cnt_int[22]~88\) # (GND)))
-- \cnt_0|cnt_int[23]~90\ = CARRY((!\cnt_0|cnt_int[22]~88\) # (!\cnt_0|cnt_int\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(23),
	datad => VCC,
	cin => \cnt_0|cnt_int[22]~88\,
	combout => \cnt_0|cnt_int[23]~89_combout\,
	cout => \cnt_0|cnt_int[23]~90\);

-- Location: FF_X66_Y46_N15
\cnt_0|cnt_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[23]~89_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(23));

-- Location: LCCOMB_X66_Y46_N16
\cnt_0|cnt_int[24]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[24]~91_combout\ = (\cnt_0|cnt_int\(24) & (\cnt_0|cnt_int[23]~90\ $ (GND))) # (!\cnt_0|cnt_int\(24) & (!\cnt_0|cnt_int[23]~90\ & VCC))
-- \cnt_0|cnt_int[24]~92\ = CARRY((\cnt_0|cnt_int\(24) & !\cnt_0|cnt_int[23]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(24),
	datad => VCC,
	cin => \cnt_0|cnt_int[23]~90\,
	combout => \cnt_0|cnt_int[24]~91_combout\,
	cout => \cnt_0|cnt_int[24]~92\);

-- Location: FF_X66_Y46_N17
\cnt_0|cnt_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[24]~91_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(24));

-- Location: LCCOMB_X66_Y46_N18
\cnt_0|cnt_int[25]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[25]~93_combout\ = (\cnt_0|cnt_int\(25) & (!\cnt_0|cnt_int[24]~92\)) # (!\cnt_0|cnt_int\(25) & ((\cnt_0|cnt_int[24]~92\) # (GND)))
-- \cnt_0|cnt_int[25]~94\ = CARRY((!\cnt_0|cnt_int[24]~92\) # (!\cnt_0|cnt_int\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(25),
	datad => VCC,
	cin => \cnt_0|cnt_int[24]~92\,
	combout => \cnt_0|cnt_int[25]~93_combout\,
	cout => \cnt_0|cnt_int[25]~94\);

-- Location: FF_X66_Y46_N19
\cnt_0|cnt_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[25]~93_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(25));

-- Location: LCCOMB_X66_Y46_N20
\cnt_0|cnt_int[26]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[26]~95_combout\ = (\cnt_0|cnt_int\(26) & (\cnt_0|cnt_int[25]~94\ $ (GND))) # (!\cnt_0|cnt_int\(26) & (!\cnt_0|cnt_int[25]~94\ & VCC))
-- \cnt_0|cnt_int[26]~96\ = CARRY((\cnt_0|cnt_int\(26) & !\cnt_0|cnt_int[25]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(26),
	datad => VCC,
	cin => \cnt_0|cnt_int[25]~94\,
	combout => \cnt_0|cnt_int[26]~95_combout\,
	cout => \cnt_0|cnt_int[26]~96\);

-- Location: FF_X66_Y46_N21
\cnt_0|cnt_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[26]~95_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(26));

-- Location: LCCOMB_X66_Y46_N22
\cnt_0|cnt_int[27]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[27]~97_combout\ = (\cnt_0|cnt_int\(27) & (!\cnt_0|cnt_int[26]~96\)) # (!\cnt_0|cnt_int\(27) & ((\cnt_0|cnt_int[26]~96\) # (GND)))
-- \cnt_0|cnt_int[27]~98\ = CARRY((!\cnt_0|cnt_int[26]~96\) # (!\cnt_0|cnt_int\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(27),
	datad => VCC,
	cin => \cnt_0|cnt_int[26]~96\,
	combout => \cnt_0|cnt_int[27]~97_combout\,
	cout => \cnt_0|cnt_int[27]~98\);

-- Location: FF_X66_Y46_N23
\cnt_0|cnt_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[27]~97_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(27));

-- Location: LCCOMB_X66_Y46_N24
\cnt_0|cnt_int[28]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[28]~99_combout\ = (\cnt_0|cnt_int\(28) & (\cnt_0|cnt_int[27]~98\ $ (GND))) # (!\cnt_0|cnt_int\(28) & (!\cnt_0|cnt_int[27]~98\ & VCC))
-- \cnt_0|cnt_int[28]~100\ = CARRY((\cnt_0|cnt_int\(28) & !\cnt_0|cnt_int[27]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(28),
	datad => VCC,
	cin => \cnt_0|cnt_int[27]~98\,
	combout => \cnt_0|cnt_int[28]~99_combout\,
	cout => \cnt_0|cnt_int[28]~100\);

-- Location: FF_X66_Y46_N25
\cnt_0|cnt_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[28]~99_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(28));

-- Location: LCCOMB_X66_Y46_N26
\cnt_0|cnt_int[29]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[29]~101_combout\ = (\cnt_0|cnt_int\(29) & (!\cnt_0|cnt_int[28]~100\)) # (!\cnt_0|cnt_int\(29) & ((\cnt_0|cnt_int[28]~100\) # (GND)))
-- \cnt_0|cnt_int[29]~102\ = CARRY((!\cnt_0|cnt_int[28]~100\) # (!\cnt_0|cnt_int\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(29),
	datad => VCC,
	cin => \cnt_0|cnt_int[28]~100\,
	combout => \cnt_0|cnt_int[29]~101_combout\,
	cout => \cnt_0|cnt_int[29]~102\);

-- Location: FF_X66_Y46_N27
\cnt_0|cnt_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[29]~101_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(29));

-- Location: LCCOMB_X66_Y46_N28
\cnt_0|cnt_int[30]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[30]~103_combout\ = (\cnt_0|cnt_int\(30) & (\cnt_0|cnt_int[29]~102\ $ (GND))) # (!\cnt_0|cnt_int\(30) & (!\cnt_0|cnt_int[29]~102\ & VCC))
-- \cnt_0|cnt_int[30]~104\ = CARRY((\cnt_0|cnt_int\(30) & !\cnt_0|cnt_int[29]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(30),
	datad => VCC,
	cin => \cnt_0|cnt_int[29]~102\,
	combout => \cnt_0|cnt_int[30]~103_combout\,
	cout => \cnt_0|cnt_int[30]~104\);

-- Location: FF_X66_Y46_N29
\cnt_0|cnt_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[30]~103_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(30));

-- Location: LCCOMB_X66_Y46_N30
\cnt_0|cnt_int[31]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[31]~105_combout\ = \cnt_0|cnt_int\(31) $ (\cnt_0|cnt_int[30]~104\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(31),
	cin => \cnt_0|cnt_int[30]~104\,
	combout => \cnt_0|cnt_int[31]~105_combout\);

-- Location: FF_X66_Y46_N31
\cnt_0|cnt_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[31]~105_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(31));

-- Location: LCCOMB_X65_Y47_N26
\cnt_0|cnt_int[20]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~40_combout\ = (!\cnt_0|cnt_int\(25) & (!\cnt_0|cnt_int\(24) & (!\cnt_0|cnt_int\(23) & !\cnt_0|cnt_int\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(25),
	datab => \cnt_0|cnt_int\(24),
	datac => \cnt_0|cnt_int\(23),
	datad => \cnt_0|cnt_int\(26),
	combout => \cnt_0|cnt_int[20]~40_combout\);

-- Location: LCCOMB_X65_Y47_N4
\cnt_0|cnt_int[20]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~39_combout\ = (!\cnt_0|cnt_int\(19) & (!\cnt_0|cnt_int\(20) & (!\cnt_0|cnt_int\(22) & !\cnt_0|cnt_int\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(19),
	datab => \cnt_0|cnt_int\(20),
	datac => \cnt_0|cnt_int\(22),
	datad => \cnt_0|cnt_int\(21),
	combout => \cnt_0|cnt_int[20]~39_combout\);

-- Location: LCCOMB_X65_Y47_N22
\cnt_0|cnt_int[20]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~34_combout\ = (!\cnt_0|cnt_int\(5) & (!\rst~input_o\ & (!\cnt_0|cnt_int\(4) & !\cnt_0|cnt_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(5),
	datab => \rst~input_o\,
	datac => \cnt_0|cnt_int\(4),
	datad => \cnt_0|cnt_int\(6),
	combout => \cnt_0|cnt_int[20]~34_combout\);

-- Location: LCCOMB_X65_Y47_N18
\cnt_0|cnt_int[20]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~36_combout\ = (!\cnt_0|cnt_int\(13) & (!\cnt_0|cnt_int\(14) & (!\cnt_0|cnt_int\(12) & !\cnt_0|cnt_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(13),
	datab => \cnt_0|cnt_int\(14),
	datac => \cnt_0|cnt_int\(12),
	datad => \cnt_0|cnt_int\(11),
	combout => \cnt_0|cnt_int[20]~36_combout\);

-- Location: LCCOMB_X65_Y47_N8
\cnt_0|cnt_int[20]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~37_combout\ = (!\cnt_0|cnt_int\(17) & (!\cnt_0|cnt_int\(18) & (!\cnt_0|cnt_int\(15) & !\cnt_0|cnt_int\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(17),
	datab => \cnt_0|cnt_int\(18),
	datac => \cnt_0|cnt_int\(15),
	datad => \cnt_0|cnt_int\(16),
	combout => \cnt_0|cnt_int[20]~37_combout\);

-- Location: LCCOMB_X65_Y47_N28
\cnt_0|cnt_int[20]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~35_combout\ = (!\cnt_0|cnt_int\(10) & (!\cnt_0|cnt_int\(9) & (!\cnt_0|cnt_int\(7) & !\cnt_0|cnt_int\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(10),
	datab => \cnt_0|cnt_int\(9),
	datac => \cnt_0|cnt_int\(7),
	datad => \cnt_0|cnt_int\(8),
	combout => \cnt_0|cnt_int[20]~35_combout\);

-- Location: LCCOMB_X65_Y47_N14
\cnt_0|cnt_int[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~38_combout\ = (\cnt_0|cnt_int[20]~34_combout\ & (\cnt_0|cnt_int[20]~36_combout\ & (\cnt_0|cnt_int[20]~37_combout\ & \cnt_0|cnt_int[20]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int[20]~34_combout\,
	datab => \cnt_0|cnt_int[20]~36_combout\,
	datac => \cnt_0|cnt_int[20]~37_combout\,
	datad => \cnt_0|cnt_int[20]~35_combout\,
	combout => \cnt_0|cnt_int[20]~38_combout\);

-- Location: LCCOMB_X65_Y47_N24
\cnt_0|cnt_int[20]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~41_combout\ = (!\cnt_0|cnt_int\(28) & (!\cnt_0|cnt_int\(27) & (!\cnt_0|cnt_int\(30) & !\cnt_0|cnt_int\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(28),
	datab => \cnt_0|cnt_int\(27),
	datac => \cnt_0|cnt_int\(30),
	datad => \cnt_0|cnt_int\(29),
	combout => \cnt_0|cnt_int[20]~41_combout\);

-- Location: LCCOMB_X65_Y47_N10
\cnt_0|cnt_int[20]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~42_combout\ = (\cnt_0|cnt_int[20]~40_combout\ & (\cnt_0|cnt_int[20]~39_combout\ & (\cnt_0|cnt_int[20]~38_combout\ & \cnt_0|cnt_int[20]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int[20]~40_combout\,
	datab => \cnt_0|cnt_int[20]~39_combout\,
	datac => \cnt_0|cnt_int[20]~38_combout\,
	datad => \cnt_0|cnt_int[20]~41_combout\,
	combout => \cnt_0|cnt_int[20]~42_combout\);

-- Location: LCCOMB_X65_Y47_N16
\cnt_0|cnt_int[20]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[20]~43_combout\ = (!\cnt_0|cnt_int[20]~42_combout\ & ((\rst~input_o\) # (!\cnt_0|cnt_int\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_int\(31),
	datab => \rst~input_o\,
	datad => \cnt_0|cnt_int[20]~42_combout\,
	combout => \cnt_0|cnt_int[20]~43_combout\);

-- Location: FF_X66_Y47_N1
\cnt_0|cnt_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[0]~32_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(0));

-- Location: LCCOMB_X66_Y47_N2
\cnt_0|cnt_int[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_int[1]~45_combout\ = (\cnt_0|cnt_int\(1) & (!\cnt_0|cnt_int[0]~33\)) # (!\cnt_0|cnt_int\(1) & ((\cnt_0|cnt_int[0]~33\) # (GND)))
-- \cnt_0|cnt_int[1]~46\ = CARRY((!\cnt_0|cnt_int[0]~33\) # (!\cnt_0|cnt_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_0|cnt_int\(1),
	datad => VCC,
	cin => \cnt_0|cnt_int[0]~33\,
	combout => \cnt_0|cnt_int[1]~45_combout\,
	cout => \cnt_0|cnt_int[1]~46\);

-- Location: FF_X66_Y47_N3
\cnt_0|cnt_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[1]~45_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(1));

-- Location: FF_X66_Y47_N5
\cnt_0|cnt_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_int[2]~47_combout\,
	sclr => \cnt_0|cnt_int[20]~43_combout\,
	ena => \cnt_0|cnt_int[20]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_int\(2));

-- Location: LCCOMB_X66_Y50_N12
\cnt_0|cnt_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_out[2]~feeder_combout\ = \cnt_0|cnt_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cnt_0|cnt_int\(2),
	combout => \cnt_0|cnt_out[2]~feeder_combout\);

-- Location: LCCOMB_X66_Y50_N10
\cnt_0|cnt_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_out[3]~0_combout\ = (!\rst~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \en~input_o\,
	combout => \cnt_0|cnt_out[3]~0_combout\);

-- Location: FF_X66_Y50_N13
\cnt_0|cnt_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_out[2]~feeder_combout\,
	ena => \cnt_0|cnt_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_out\(2));

-- Location: LCCOMB_X66_Y50_N18
\cnt_0|cnt_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_out[1]~feeder_combout\ = \cnt_0|cnt_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt_0|cnt_int\(1),
	combout => \cnt_0|cnt_out[1]~feeder_combout\);

-- Location: FF_X66_Y50_N19
\cnt_0|cnt_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_out[1]~feeder_combout\,
	ena => \cnt_0|cnt_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_out\(1));

-- Location: LCCOMB_X66_Y50_N26
\cnt_0|cnt_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_out[3]~feeder_combout\ = \cnt_0|cnt_int\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cnt_0|cnt_int\(3),
	combout => \cnt_0|cnt_out[3]~feeder_combout\);

-- Location: FF_X66_Y50_N27
\cnt_0|cnt_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_out[3]~feeder_combout\,
	ena => \cnt_0|cnt_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_out\(3));

-- Location: LCCOMB_X66_Y50_N16
\cnt_0|cnt_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_0|cnt_out[0]~feeder_combout\ = \cnt_0|cnt_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cnt_0|cnt_int\(0),
	combout => \cnt_0|cnt_out[0]~feeder_combout\);

-- Location: FF_X66_Y50_N17
\cnt_0|cnt_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div|clk_out~clkctrl_outclk\,
	d => \cnt_0|cnt_out[0]~feeder_combout\,
	ena => \cnt_0|cnt_out[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_0|cnt_out\(0));

-- Location: LCCOMB_X66_Y50_N4
\hex|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux6~0_combout\ = (\cnt_0|cnt_out\(0) & ((\cnt_0|cnt_out\(3)) # (\cnt_0|cnt_out\(2) $ (\cnt_0|cnt_out\(1))))) # (!\cnt_0|cnt_out\(0) & ((\cnt_0|cnt_out\(1)) # (\cnt_0|cnt_out\(2) $ (\cnt_0|cnt_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y50_N6
\hex|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux5~0_combout\ = (\cnt_0|cnt_out\(2) & (\cnt_0|cnt_out\(0) & (\cnt_0|cnt_out\(1) $ (\cnt_0|cnt_out\(3))))) # (!\cnt_0|cnt_out\(2) & (!\cnt_0|cnt_out\(3) & ((\cnt_0|cnt_out\(1)) # (\cnt_0|cnt_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y50_N8
\hex|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux4~0_combout\ = (\cnt_0|cnt_out\(1) & (((!\cnt_0|cnt_out\(3) & \cnt_0|cnt_out\(0))))) # (!\cnt_0|cnt_out\(1) & ((\cnt_0|cnt_out\(2) & (!\cnt_0|cnt_out\(3))) # (!\cnt_0|cnt_out\(2) & ((\cnt_0|cnt_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y50_N14
\hex|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux3~0_combout\ = (\cnt_0|cnt_out\(1) & ((\cnt_0|cnt_out\(2) & ((\cnt_0|cnt_out\(0)))) # (!\cnt_0|cnt_out\(2) & (\cnt_0|cnt_out\(3) & !\cnt_0|cnt_out\(0))))) # (!\cnt_0|cnt_out\(1) & (!\cnt_0|cnt_out\(3) & (\cnt_0|cnt_out\(2) $ 
-- (\cnt_0|cnt_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y50_N24
\hex|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux2~0_combout\ = (\cnt_0|cnt_out\(2) & (\cnt_0|cnt_out\(3) & ((\cnt_0|cnt_out\(1)) # (!\cnt_0|cnt_out\(0))))) # (!\cnt_0|cnt_out\(2) & (\cnt_0|cnt_out\(1) & (!\cnt_0|cnt_out\(3) & !\cnt_0|cnt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y50_N2
\hex|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux1~0_combout\ = (\cnt_0|cnt_out\(1) & ((\cnt_0|cnt_out\(0) & ((\cnt_0|cnt_out\(3)))) # (!\cnt_0|cnt_out\(0) & (\cnt_0|cnt_out\(2))))) # (!\cnt_0|cnt_out\(1) & (\cnt_0|cnt_out\(2) & (\cnt_0|cnt_out\(3) $ (\cnt_0|cnt_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\hex|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex|Mux0~0_combout\ = (\cnt_0|cnt_out\(2) & (!\cnt_0|cnt_out\(1) & (\cnt_0|cnt_out\(3) $ (!\cnt_0|cnt_out\(0))))) # (!\cnt_0|cnt_out\(2) & (\cnt_0|cnt_out\(0) & (\cnt_0|cnt_out\(1) $ (!\cnt_0|cnt_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_0|cnt_out\(2),
	datab => \cnt_0|cnt_out\(1),
	datac => \cnt_0|cnt_out\(3),
	datad => \cnt_0|cnt_out\(0),
	combout => \hex|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_out_hex(0) <= \out_hex[0]~output_o\;

ww_out_hex(1) <= \out_hex[1]~output_o\;

ww_out_hex(2) <= \out_hex[2]~output_o\;

ww_out_hex(3) <= \out_hex[3]~output_o\;

ww_out_hex(4) <= \out_hex[4]~output_o\;

ww_out_hex(5) <= \out_hex[5]~output_o\;

ww_out_hex(6) <= \out_hex[6]~output_o\;

ww_out_hex(7) <= \out_hex[7]~output_o\;
END structure;


