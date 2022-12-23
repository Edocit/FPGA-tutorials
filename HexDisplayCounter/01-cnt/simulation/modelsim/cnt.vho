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

-- DATE "12/21/2022 19:38:47"

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

ENTITY 	CNT IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	rst : IN std_logic;
	cnt_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END CNT;

-- Design Ports Information
-- cnt_out[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_cnt_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cnt_out[0]~output_o\ : std_logic;
SIGNAL \cnt_out[1]~output_o\ : std_logic;
SIGNAL \cnt_out[2]~output_o\ : std_logic;
SIGNAL \cnt_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_int[0]~32_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cnt_int[0]~33\ : std_logic;
SIGNAL \cnt_int[1]~45_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \cnt_int[19]~44_combout\ : std_logic;
SIGNAL \cnt_int[1]~46\ : std_logic;
SIGNAL \cnt_int[2]~47_combout\ : std_logic;
SIGNAL \cnt_int[2]~48\ : std_logic;
SIGNAL \cnt_int[3]~49_combout\ : std_logic;
SIGNAL \cnt_int[3]~50\ : std_logic;
SIGNAL \cnt_int[4]~51_combout\ : std_logic;
SIGNAL \cnt_int[4]~52\ : std_logic;
SIGNAL \cnt_int[5]~53_combout\ : std_logic;
SIGNAL \cnt_int[5]~54\ : std_logic;
SIGNAL \cnt_int[6]~55_combout\ : std_logic;
SIGNAL \cnt_int[6]~56\ : std_logic;
SIGNAL \cnt_int[7]~57_combout\ : std_logic;
SIGNAL \cnt_int[7]~58\ : std_logic;
SIGNAL \cnt_int[8]~59_combout\ : std_logic;
SIGNAL \cnt_int[8]~60\ : std_logic;
SIGNAL \cnt_int[9]~61_combout\ : std_logic;
SIGNAL \cnt_int[9]~62\ : std_logic;
SIGNAL \cnt_int[10]~63_combout\ : std_logic;
SIGNAL \cnt_int[10]~64\ : std_logic;
SIGNAL \cnt_int[11]~65_combout\ : std_logic;
SIGNAL \cnt_int[11]~66\ : std_logic;
SIGNAL \cnt_int[12]~67_combout\ : std_logic;
SIGNAL \cnt_int[12]~68\ : std_logic;
SIGNAL \cnt_int[13]~69_combout\ : std_logic;
SIGNAL \cnt_int[13]~70\ : std_logic;
SIGNAL \cnt_int[14]~71_combout\ : std_logic;
SIGNAL \cnt_int[14]~72\ : std_logic;
SIGNAL \cnt_int[15]~73_combout\ : std_logic;
SIGNAL \cnt_int[15]~74\ : std_logic;
SIGNAL \cnt_int[16]~75_combout\ : std_logic;
SIGNAL \cnt_int[16]~76\ : std_logic;
SIGNAL \cnt_int[17]~77_combout\ : std_logic;
SIGNAL \cnt_int[17]~78\ : std_logic;
SIGNAL \cnt_int[18]~79_combout\ : std_logic;
SIGNAL \cnt_int[18]~80\ : std_logic;
SIGNAL \cnt_int[19]~81_combout\ : std_logic;
SIGNAL \cnt_int[19]~82\ : std_logic;
SIGNAL \cnt_int[20]~83_combout\ : std_logic;
SIGNAL \cnt_int[20]~84\ : std_logic;
SIGNAL \cnt_int[21]~85_combout\ : std_logic;
SIGNAL \cnt_int[21]~86\ : std_logic;
SIGNAL \cnt_int[22]~87_combout\ : std_logic;
SIGNAL \cnt_int[22]~88\ : std_logic;
SIGNAL \cnt_int[23]~89_combout\ : std_logic;
SIGNAL \cnt_int[23]~90\ : std_logic;
SIGNAL \cnt_int[24]~91_combout\ : std_logic;
SIGNAL \cnt_int[24]~92\ : std_logic;
SIGNAL \cnt_int[25]~93_combout\ : std_logic;
SIGNAL \cnt_int[25]~94\ : std_logic;
SIGNAL \cnt_int[26]~95_combout\ : std_logic;
SIGNAL \cnt_int[26]~96\ : std_logic;
SIGNAL \cnt_int[27]~97_combout\ : std_logic;
SIGNAL \cnt_int[27]~98\ : std_logic;
SIGNAL \cnt_int[28]~99_combout\ : std_logic;
SIGNAL \cnt_int[28]~100\ : std_logic;
SIGNAL \cnt_int[29]~101_combout\ : std_logic;
SIGNAL \cnt_int[29]~102\ : std_logic;
SIGNAL \cnt_int[30]~103_combout\ : std_logic;
SIGNAL \cnt_int[30]~104\ : std_logic;
SIGNAL \cnt_int[31]~105_combout\ : std_logic;
SIGNAL \cnt_int[19]~39_combout\ : std_logic;
SIGNAL \cnt_int[19]~41_combout\ : std_logic;
SIGNAL \cnt_int[19]~35_combout\ : std_logic;
SIGNAL \cnt_int[19]~34_combout\ : std_logic;
SIGNAL \cnt_int[19]~37_combout\ : std_logic;
SIGNAL \cnt_int[19]~36_combout\ : std_logic;
SIGNAL \cnt_int[19]~38_combout\ : std_logic;
SIGNAL \cnt_int[19]~40_combout\ : std_logic;
SIGNAL \cnt_int[19]~42_combout\ : std_logic;
SIGNAL \cnt_int[19]~43_combout\ : std_logic;
SIGNAL \cnt_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \cnt_out[0]~0_combout\ : std_logic;
SIGNAL \cnt_out[0]~reg0_q\ : std_logic;
SIGNAL \cnt_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \cnt_out[1]~reg0_q\ : std_logic;
SIGNAL \cnt_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \cnt_out[2]~reg0_q\ : std_logic;
SIGNAL \cnt_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \cnt_out[3]~reg0_q\ : std_logic;
SIGNAL cnt_int : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_rst <= rst;
cnt_out <= ww_cnt_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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

-- Location: IOOBUF_X78_Y23_N23
\cnt_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_out[0]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\cnt_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_out[1]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\cnt_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_out[2]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\cnt_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_out[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X76_Y23_N0
\cnt_int[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[0]~32_combout\ = cnt_int(0) $ (VCC)
-- \cnt_int[0]~33\ = CARRY(cnt_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(0),
	datad => VCC,
	combout => \cnt_int[0]~32_combout\,
	cout => \cnt_int[0]~33\);

-- Location: IOIBUF_X78_Y23_N1
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

-- Location: LCCOMB_X76_Y23_N2
\cnt_int[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[1]~45_combout\ = (cnt_int(1) & (!\cnt_int[0]~33\)) # (!cnt_int(1) & ((\cnt_int[0]~33\) # (GND)))
-- \cnt_int[1]~46\ = CARRY((!\cnt_int[0]~33\) # (!cnt_int(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(1),
	datad => VCC,
	cin => \cnt_int[0]~33\,
	combout => \cnt_int[1]~45_combout\,
	cout => \cnt_int[1]~46\);

-- Location: IOIBUF_X78_Y23_N8
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

-- Location: LCCOMB_X77_Y23_N24
\cnt_int[19]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~44_combout\ = (\rst~input_o\) # (\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \en~input_o\,
	combout => \cnt_int[19]~44_combout\);

-- Location: FF_X76_Y23_N3
\cnt_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[1]~45_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(1));

-- Location: LCCOMB_X76_Y23_N4
\cnt_int[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[2]~47_combout\ = (cnt_int(2) & (\cnt_int[1]~46\ $ (GND))) # (!cnt_int(2) & (!\cnt_int[1]~46\ & VCC))
-- \cnt_int[2]~48\ = CARRY((cnt_int(2) & !\cnt_int[1]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(2),
	datad => VCC,
	cin => \cnt_int[1]~46\,
	combout => \cnt_int[2]~47_combout\,
	cout => \cnt_int[2]~48\);

-- Location: FF_X76_Y23_N5
\cnt_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[2]~47_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(2));

-- Location: LCCOMB_X76_Y23_N6
\cnt_int[3]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[3]~49_combout\ = (cnt_int(3) & (!\cnt_int[2]~48\)) # (!cnt_int(3) & ((\cnt_int[2]~48\) # (GND)))
-- \cnt_int[3]~50\ = CARRY((!\cnt_int[2]~48\) # (!cnt_int(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(3),
	datad => VCC,
	cin => \cnt_int[2]~48\,
	combout => \cnt_int[3]~49_combout\,
	cout => \cnt_int[3]~50\);

-- Location: FF_X76_Y23_N7
\cnt_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[3]~49_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(3));

-- Location: LCCOMB_X76_Y23_N8
\cnt_int[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[4]~51_combout\ = (cnt_int(4) & (\cnt_int[3]~50\ $ (GND))) # (!cnt_int(4) & (!\cnt_int[3]~50\ & VCC))
-- \cnt_int[4]~52\ = CARRY((cnt_int(4) & !\cnt_int[3]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(4),
	datad => VCC,
	cin => \cnt_int[3]~50\,
	combout => \cnt_int[4]~51_combout\,
	cout => \cnt_int[4]~52\);

-- Location: FF_X76_Y23_N9
\cnt_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[4]~51_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(4));

-- Location: LCCOMB_X76_Y23_N10
\cnt_int[5]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[5]~53_combout\ = (cnt_int(5) & (!\cnt_int[4]~52\)) # (!cnt_int(5) & ((\cnt_int[4]~52\) # (GND)))
-- \cnt_int[5]~54\ = CARRY((!\cnt_int[4]~52\) # (!cnt_int(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(5),
	datad => VCC,
	cin => \cnt_int[4]~52\,
	combout => \cnt_int[5]~53_combout\,
	cout => \cnt_int[5]~54\);

-- Location: FF_X76_Y23_N11
\cnt_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[5]~53_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(5));

-- Location: LCCOMB_X76_Y23_N12
\cnt_int[6]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[6]~55_combout\ = (cnt_int(6) & (\cnt_int[5]~54\ $ (GND))) # (!cnt_int(6) & (!\cnt_int[5]~54\ & VCC))
-- \cnt_int[6]~56\ = CARRY((cnt_int(6) & !\cnt_int[5]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(6),
	datad => VCC,
	cin => \cnt_int[5]~54\,
	combout => \cnt_int[6]~55_combout\,
	cout => \cnt_int[6]~56\);

-- Location: FF_X76_Y23_N13
\cnt_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[6]~55_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(6));

-- Location: LCCOMB_X76_Y23_N14
\cnt_int[7]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[7]~57_combout\ = (cnt_int(7) & (!\cnt_int[6]~56\)) # (!cnt_int(7) & ((\cnt_int[6]~56\) # (GND)))
-- \cnt_int[7]~58\ = CARRY((!\cnt_int[6]~56\) # (!cnt_int(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(7),
	datad => VCC,
	cin => \cnt_int[6]~56\,
	combout => \cnt_int[7]~57_combout\,
	cout => \cnt_int[7]~58\);

-- Location: FF_X76_Y23_N15
\cnt_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[7]~57_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(7));

-- Location: LCCOMB_X76_Y23_N16
\cnt_int[8]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[8]~59_combout\ = (cnt_int(8) & (\cnt_int[7]~58\ $ (GND))) # (!cnt_int(8) & (!\cnt_int[7]~58\ & VCC))
-- \cnt_int[8]~60\ = CARRY((cnt_int(8) & !\cnt_int[7]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(8),
	datad => VCC,
	cin => \cnt_int[7]~58\,
	combout => \cnt_int[8]~59_combout\,
	cout => \cnt_int[8]~60\);

-- Location: FF_X76_Y23_N17
\cnt_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[8]~59_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(8));

-- Location: LCCOMB_X76_Y23_N18
\cnt_int[9]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[9]~61_combout\ = (cnt_int(9) & (!\cnt_int[8]~60\)) # (!cnt_int(9) & ((\cnt_int[8]~60\) # (GND)))
-- \cnt_int[9]~62\ = CARRY((!\cnt_int[8]~60\) # (!cnt_int(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(9),
	datad => VCC,
	cin => \cnt_int[8]~60\,
	combout => \cnt_int[9]~61_combout\,
	cout => \cnt_int[9]~62\);

-- Location: FF_X76_Y23_N19
\cnt_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[9]~61_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(9));

-- Location: LCCOMB_X76_Y23_N20
\cnt_int[10]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[10]~63_combout\ = (cnt_int(10) & (\cnt_int[9]~62\ $ (GND))) # (!cnt_int(10) & (!\cnt_int[9]~62\ & VCC))
-- \cnt_int[10]~64\ = CARRY((cnt_int(10) & !\cnt_int[9]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(10),
	datad => VCC,
	cin => \cnt_int[9]~62\,
	combout => \cnt_int[10]~63_combout\,
	cout => \cnt_int[10]~64\);

-- Location: FF_X76_Y23_N21
\cnt_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[10]~63_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(10));

-- Location: LCCOMB_X76_Y23_N22
\cnt_int[11]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[11]~65_combout\ = (cnt_int(11) & (!\cnt_int[10]~64\)) # (!cnt_int(11) & ((\cnt_int[10]~64\) # (GND)))
-- \cnt_int[11]~66\ = CARRY((!\cnt_int[10]~64\) # (!cnt_int(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(11),
	datad => VCC,
	cin => \cnt_int[10]~64\,
	combout => \cnt_int[11]~65_combout\,
	cout => \cnt_int[11]~66\);

-- Location: FF_X76_Y23_N23
\cnt_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[11]~65_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(11));

-- Location: LCCOMB_X76_Y23_N24
\cnt_int[12]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[12]~67_combout\ = (cnt_int(12) & (\cnt_int[11]~66\ $ (GND))) # (!cnt_int(12) & (!\cnt_int[11]~66\ & VCC))
-- \cnt_int[12]~68\ = CARRY((cnt_int(12) & !\cnt_int[11]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(12),
	datad => VCC,
	cin => \cnt_int[11]~66\,
	combout => \cnt_int[12]~67_combout\,
	cout => \cnt_int[12]~68\);

-- Location: FF_X76_Y23_N25
\cnt_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[12]~67_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(12));

-- Location: LCCOMB_X76_Y23_N26
\cnt_int[13]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[13]~69_combout\ = (cnt_int(13) & (!\cnt_int[12]~68\)) # (!cnt_int(13) & ((\cnt_int[12]~68\) # (GND)))
-- \cnt_int[13]~70\ = CARRY((!\cnt_int[12]~68\) # (!cnt_int(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(13),
	datad => VCC,
	cin => \cnt_int[12]~68\,
	combout => \cnt_int[13]~69_combout\,
	cout => \cnt_int[13]~70\);

-- Location: FF_X76_Y23_N27
\cnt_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[13]~69_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(13));

-- Location: LCCOMB_X76_Y23_N28
\cnt_int[14]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[14]~71_combout\ = (cnt_int(14) & (\cnt_int[13]~70\ $ (GND))) # (!cnt_int(14) & (!\cnt_int[13]~70\ & VCC))
-- \cnt_int[14]~72\ = CARRY((cnt_int(14) & !\cnt_int[13]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(14),
	datad => VCC,
	cin => \cnt_int[13]~70\,
	combout => \cnt_int[14]~71_combout\,
	cout => \cnt_int[14]~72\);

-- Location: FF_X76_Y23_N29
\cnt_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[14]~71_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(14));

-- Location: LCCOMB_X76_Y23_N30
\cnt_int[15]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[15]~73_combout\ = (cnt_int(15) & (!\cnt_int[14]~72\)) # (!cnt_int(15) & ((\cnt_int[14]~72\) # (GND)))
-- \cnt_int[15]~74\ = CARRY((!\cnt_int[14]~72\) # (!cnt_int(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(15),
	datad => VCC,
	cin => \cnt_int[14]~72\,
	combout => \cnt_int[15]~73_combout\,
	cout => \cnt_int[15]~74\);

-- Location: FF_X76_Y23_N31
\cnt_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[15]~73_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(15));

-- Location: LCCOMB_X76_Y22_N0
\cnt_int[16]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[16]~75_combout\ = (cnt_int(16) & (\cnt_int[15]~74\ $ (GND))) # (!cnt_int(16) & (!\cnt_int[15]~74\ & VCC))
-- \cnt_int[16]~76\ = CARRY((cnt_int(16) & !\cnt_int[15]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(16),
	datad => VCC,
	cin => \cnt_int[15]~74\,
	combout => \cnt_int[16]~75_combout\,
	cout => \cnt_int[16]~76\);

-- Location: FF_X77_Y23_N25
\cnt_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt_int[16]~75_combout\,
	sclr => \cnt_int[19]~43_combout\,
	sload => VCC,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(16));

-- Location: LCCOMB_X76_Y22_N2
\cnt_int[17]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[17]~77_combout\ = (cnt_int(17) & (!\cnt_int[16]~76\)) # (!cnt_int(17) & ((\cnt_int[16]~76\) # (GND)))
-- \cnt_int[17]~78\ = CARRY((!\cnt_int[16]~76\) # (!cnt_int(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(17),
	datad => VCC,
	cin => \cnt_int[16]~76\,
	combout => \cnt_int[17]~77_combout\,
	cout => \cnt_int[17]~78\);

-- Location: FF_X77_Y23_N27
\cnt_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt_int[17]~77_combout\,
	sclr => \cnt_int[19]~43_combout\,
	sload => VCC,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(17));

-- Location: LCCOMB_X76_Y22_N4
\cnt_int[18]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[18]~79_combout\ = (cnt_int(18) & (\cnt_int[17]~78\ $ (GND))) # (!cnt_int(18) & (!\cnt_int[17]~78\ & VCC))
-- \cnt_int[18]~80\ = CARRY((cnt_int(18) & !\cnt_int[17]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(18),
	datad => VCC,
	cin => \cnt_int[17]~78\,
	combout => \cnt_int[18]~79_combout\,
	cout => \cnt_int[18]~80\);

-- Location: FF_X77_Y23_N9
\cnt_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt_int[18]~79_combout\,
	sclr => \cnt_int[19]~43_combout\,
	sload => VCC,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(18));

-- Location: LCCOMB_X76_Y22_N6
\cnt_int[19]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~81_combout\ = (cnt_int(19) & (!\cnt_int[18]~80\)) # (!cnt_int(19) & ((\cnt_int[18]~80\) # (GND)))
-- \cnt_int[19]~82\ = CARRY((!\cnt_int[18]~80\) # (!cnt_int(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(19),
	datad => VCC,
	cin => \cnt_int[18]~80\,
	combout => \cnt_int[19]~81_combout\,
	cout => \cnt_int[19]~82\);

-- Location: FF_X76_Y22_N7
\cnt_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[19]~81_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(19));

-- Location: LCCOMB_X76_Y22_N8
\cnt_int[20]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[20]~83_combout\ = (cnt_int(20) & (\cnt_int[19]~82\ $ (GND))) # (!cnt_int(20) & (!\cnt_int[19]~82\ & VCC))
-- \cnt_int[20]~84\ = CARRY((cnt_int(20) & !\cnt_int[19]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(20),
	datad => VCC,
	cin => \cnt_int[19]~82\,
	combout => \cnt_int[20]~83_combout\,
	cout => \cnt_int[20]~84\);

-- Location: FF_X76_Y22_N9
\cnt_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[20]~83_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(20));

-- Location: LCCOMB_X76_Y22_N10
\cnt_int[21]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[21]~85_combout\ = (cnt_int(21) & (!\cnt_int[20]~84\)) # (!cnt_int(21) & ((\cnt_int[20]~84\) # (GND)))
-- \cnt_int[21]~86\ = CARRY((!\cnt_int[20]~84\) # (!cnt_int(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(21),
	datad => VCC,
	cin => \cnt_int[20]~84\,
	combout => \cnt_int[21]~85_combout\,
	cout => \cnt_int[21]~86\);

-- Location: FF_X76_Y22_N11
\cnt_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[21]~85_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(21));

-- Location: LCCOMB_X76_Y22_N12
\cnt_int[22]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[22]~87_combout\ = (cnt_int(22) & (\cnt_int[21]~86\ $ (GND))) # (!cnt_int(22) & (!\cnt_int[21]~86\ & VCC))
-- \cnt_int[22]~88\ = CARRY((cnt_int(22) & !\cnt_int[21]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(22),
	datad => VCC,
	cin => \cnt_int[21]~86\,
	combout => \cnt_int[22]~87_combout\,
	cout => \cnt_int[22]~88\);

-- Location: FF_X76_Y22_N13
\cnt_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[22]~87_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(22));

-- Location: LCCOMB_X76_Y22_N14
\cnt_int[23]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[23]~89_combout\ = (cnt_int(23) & (!\cnt_int[22]~88\)) # (!cnt_int(23) & ((\cnt_int[22]~88\) # (GND)))
-- \cnt_int[23]~90\ = CARRY((!\cnt_int[22]~88\) # (!cnt_int(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(23),
	datad => VCC,
	cin => \cnt_int[22]~88\,
	combout => \cnt_int[23]~89_combout\,
	cout => \cnt_int[23]~90\);

-- Location: FF_X76_Y22_N15
\cnt_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[23]~89_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(23));

-- Location: LCCOMB_X76_Y22_N16
\cnt_int[24]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[24]~91_combout\ = (cnt_int(24) & (\cnt_int[23]~90\ $ (GND))) # (!cnt_int(24) & (!\cnt_int[23]~90\ & VCC))
-- \cnt_int[24]~92\ = CARRY((cnt_int(24) & !\cnt_int[23]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(24),
	datad => VCC,
	cin => \cnt_int[23]~90\,
	combout => \cnt_int[24]~91_combout\,
	cout => \cnt_int[24]~92\);

-- Location: FF_X76_Y22_N17
\cnt_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[24]~91_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(24));

-- Location: LCCOMB_X76_Y22_N18
\cnt_int[25]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[25]~93_combout\ = (cnt_int(25) & (!\cnt_int[24]~92\)) # (!cnt_int(25) & ((\cnt_int[24]~92\) # (GND)))
-- \cnt_int[25]~94\ = CARRY((!\cnt_int[24]~92\) # (!cnt_int(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(25),
	datad => VCC,
	cin => \cnt_int[24]~92\,
	combout => \cnt_int[25]~93_combout\,
	cout => \cnt_int[25]~94\);

-- Location: FF_X76_Y22_N19
\cnt_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[25]~93_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(25));

-- Location: LCCOMB_X76_Y22_N20
\cnt_int[26]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[26]~95_combout\ = (cnt_int(26) & (\cnt_int[25]~94\ $ (GND))) # (!cnt_int(26) & (!\cnt_int[25]~94\ & VCC))
-- \cnt_int[26]~96\ = CARRY((cnt_int(26) & !\cnt_int[25]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(26),
	datad => VCC,
	cin => \cnt_int[25]~94\,
	combout => \cnt_int[26]~95_combout\,
	cout => \cnt_int[26]~96\);

-- Location: FF_X76_Y22_N21
\cnt_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[26]~95_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(26));

-- Location: LCCOMB_X76_Y22_N22
\cnt_int[27]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[27]~97_combout\ = (cnt_int(27) & (!\cnt_int[26]~96\)) # (!cnt_int(27) & ((\cnt_int[26]~96\) # (GND)))
-- \cnt_int[27]~98\ = CARRY((!\cnt_int[26]~96\) # (!cnt_int(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(27),
	datad => VCC,
	cin => \cnt_int[26]~96\,
	combout => \cnt_int[27]~97_combout\,
	cout => \cnt_int[27]~98\);

-- Location: FF_X76_Y22_N23
\cnt_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[27]~97_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(27));

-- Location: LCCOMB_X76_Y22_N24
\cnt_int[28]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[28]~99_combout\ = (cnt_int(28) & (\cnt_int[27]~98\ $ (GND))) # (!cnt_int(28) & (!\cnt_int[27]~98\ & VCC))
-- \cnt_int[28]~100\ = CARRY((cnt_int(28) & !\cnt_int[27]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(28),
	datad => VCC,
	cin => \cnt_int[27]~98\,
	combout => \cnt_int[28]~99_combout\,
	cout => \cnt_int[28]~100\);

-- Location: FF_X76_Y22_N25
\cnt_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[28]~99_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(28));

-- Location: LCCOMB_X76_Y22_N26
\cnt_int[29]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[29]~101_combout\ = (cnt_int(29) & (!\cnt_int[28]~100\)) # (!cnt_int(29) & ((\cnt_int[28]~100\) # (GND)))
-- \cnt_int[29]~102\ = CARRY((!\cnt_int[28]~100\) # (!cnt_int(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(29),
	datad => VCC,
	cin => \cnt_int[28]~100\,
	combout => \cnt_int[29]~101_combout\,
	cout => \cnt_int[29]~102\);

-- Location: FF_X76_Y22_N27
\cnt_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[29]~101_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(29));

-- Location: LCCOMB_X76_Y22_N28
\cnt_int[30]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[30]~103_combout\ = (cnt_int(30) & (\cnt_int[29]~102\ $ (GND))) # (!cnt_int(30) & (!\cnt_int[29]~102\ & VCC))
-- \cnt_int[30]~104\ = CARRY((cnt_int(30) & !\cnt_int[29]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(30),
	datad => VCC,
	cin => \cnt_int[29]~102\,
	combout => \cnt_int[30]~103_combout\,
	cout => \cnt_int[30]~104\);

-- Location: FF_X76_Y22_N29
\cnt_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[30]~103_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(30));

-- Location: LCCOMB_X76_Y22_N30
\cnt_int[31]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[31]~105_combout\ = cnt_int(31) $ (\cnt_int[30]~104\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(31),
	cin => \cnt_int[30]~104\,
	combout => \cnt_int[31]~105_combout\);

-- Location: FF_X76_Y22_N31
\cnt_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[31]~105_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(31));

-- Location: LCCOMB_X77_Y23_N22
\cnt_int[19]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~39_combout\ = (!cnt_int(22) & (!cnt_int(19) & (!cnt_int(20) & !cnt_int(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(22),
	datab => cnt_int(19),
	datac => cnt_int(20),
	datad => cnt_int(21),
	combout => \cnt_int[19]~39_combout\);

-- Location: LCCOMB_X77_Y23_N18
\cnt_int[19]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~41_combout\ = (!cnt_int(28) & (!cnt_int(27) & (!cnt_int(30) & !cnt_int(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(28),
	datab => cnt_int(27),
	datac => cnt_int(30),
	datad => cnt_int(29),
	combout => \cnt_int[19]~41_combout\);

-- Location: LCCOMB_X77_Y23_N12
\cnt_int[19]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~35_combout\ = (!cnt_int(7) & (!cnt_int(10) & (!cnt_int(8) & !cnt_int(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(7),
	datab => cnt_int(10),
	datac => cnt_int(8),
	datad => cnt_int(9),
	combout => \cnt_int[19]~35_combout\);

-- Location: LCCOMB_X77_Y23_N2
\cnt_int[19]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~34_combout\ = (!cnt_int(4) & (!\rst~input_o\ & (!cnt_int(6) & !cnt_int(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(4),
	datab => \rst~input_o\,
	datac => cnt_int(6),
	datad => cnt_int(5),
	combout => \cnt_int[19]~34_combout\);

-- Location: LCCOMB_X77_Y23_N8
\cnt_int[19]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~37_combout\ = (!cnt_int(17) & (!cnt_int(16) & (!cnt_int(18) & !cnt_int(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(17),
	datab => cnt_int(16),
	datac => cnt_int(18),
	datad => cnt_int(15),
	combout => \cnt_int[19]~37_combout\);

-- Location: LCCOMB_X77_Y23_N10
\cnt_int[19]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~36_combout\ = (!cnt_int(13) & (!cnt_int(11) & (!cnt_int(12) & !cnt_int(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(13),
	datab => cnt_int(11),
	datac => cnt_int(12),
	datad => cnt_int(14),
	combout => \cnt_int[19]~36_combout\);

-- Location: LCCOMB_X77_Y23_N4
\cnt_int[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~38_combout\ = (\cnt_int[19]~35_combout\ & (\cnt_int[19]~34_combout\ & (\cnt_int[19]~37_combout\ & \cnt_int[19]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_int[19]~35_combout\,
	datab => \cnt_int[19]~34_combout\,
	datac => \cnt_int[19]~37_combout\,
	datad => \cnt_int[19]~36_combout\,
	combout => \cnt_int[19]~38_combout\);

-- Location: LCCOMB_X77_Y23_N20
\cnt_int[19]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~40_combout\ = (!cnt_int(23) & (!cnt_int(25) & (!cnt_int(26) & !cnt_int(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(23),
	datab => cnt_int(25),
	datac => cnt_int(26),
	datad => cnt_int(24),
	combout => \cnt_int[19]~40_combout\);

-- Location: LCCOMB_X77_Y23_N28
\cnt_int[19]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~42_combout\ = (\cnt_int[19]~39_combout\ & (\cnt_int[19]~41_combout\ & (\cnt_int[19]~38_combout\ & \cnt_int[19]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_int[19]~39_combout\,
	datab => \cnt_int[19]~41_combout\,
	datac => \cnt_int[19]~38_combout\,
	datad => \cnt_int[19]~40_combout\,
	combout => \cnt_int[19]~42_combout\);

-- Location: LCCOMB_X77_Y23_N30
\cnt_int[19]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_int[19]~43_combout\ = (!\cnt_int[19]~42_combout\ & ((\rst~input_o\) # (!cnt_int(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => cnt_int(31),
	datad => \cnt_int[19]~42_combout\,
	combout => \cnt_int[19]~43_combout\);

-- Location: FF_X76_Y23_N1
\cnt_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_int[0]~32_combout\,
	sclr => \cnt_int[19]~43_combout\,
	ena => \cnt_int[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(0));

-- Location: LCCOMB_X77_Y23_N14
\cnt_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_out[0]~reg0feeder_combout\ = cnt_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_int(0),
	combout => \cnt_out[0]~reg0feeder_combout\);

-- Location: LCCOMB_X77_Y22_N0
\cnt_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_out[0]~0_combout\ = (!\rst~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \en~input_o\,
	combout => \cnt_out[0]~0_combout\);

-- Location: FF_X77_Y23_N15
\cnt_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_out[0]~reg0feeder_combout\,
	ena => \cnt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_out[0]~reg0_q\);

-- Location: LCCOMB_X77_Y23_N0
\cnt_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_out[1]~reg0feeder_combout\ = cnt_int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_int(1),
	combout => \cnt_out[1]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N1
\cnt_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_out[1]~reg0feeder_combout\,
	ena => \cnt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_out[1]~reg0_q\);

-- Location: LCCOMB_X77_Y23_N6
\cnt_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_out[2]~reg0feeder_combout\ = cnt_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_int(2),
	combout => \cnt_out[2]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N7
\cnt_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_out[2]~reg0feeder_combout\,
	ena => \cnt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_out[2]~reg0_q\);

-- Location: LCCOMB_X77_Y23_N16
\cnt_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_out[3]~reg0feeder_combout\ = cnt_int(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_int(3),
	combout => \cnt_out[3]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N17
\cnt_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_out[3]~reg0feeder_combout\,
	ena => \cnt_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_out[3]~reg0_q\);

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

ww_cnt_out(0) <= \cnt_out[0]~output_o\;

ww_cnt_out(1) <= \cnt_out[1]~output_o\;

ww_cnt_out(2) <= \cnt_out[2]~output_o\;

ww_cnt_out(3) <= \cnt_out[3]~output_o\;
END structure;


