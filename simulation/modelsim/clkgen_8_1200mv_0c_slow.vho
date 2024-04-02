-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/14/2024 12:18:15"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clkgen IS
    PORT (
	clk : IN std_logic;
	button : IN std_logic;
	\exit\ : OUT std_logic;
	exitbutton : OUT std_logic;
	ledbutton : OUT std_logic
	);
END clkgen;

-- Design Ports Information
-- exit	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exitbutton	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledbutton	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clkgen IS
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
SIGNAL ww_button : std_logic;
SIGNAL \ww_exit\ : std_logic;
SIGNAL ww_exitbutton : std_logic;
SIGNAL ww_ledbutton : std_logic;
SIGNAL \genpll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \genpll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt[9]~32_combout\ : std_logic;
SIGNAL \cnt[11]~36_combout\ : std_logic;
SIGNAL \exit~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~14_combout\ : std_logic;
SIGNAL \cnt[12]~39\ : std_logic;
SIGNAL \cnt[13]~40_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cnt[0]~15\ : std_logic;
SIGNAL \cnt[1]~17\ : std_logic;
SIGNAL \cnt[2]~18_combout\ : std_logic;
SIGNAL \cnt[2]~19\ : std_logic;
SIGNAL \cnt[3]~21\ : std_logic;
SIGNAL \cnt[4]~23\ : std_logic;
SIGNAL \cnt[5]~24_combout\ : std_logic;
SIGNAL \cnt[5]~25\ : std_logic;
SIGNAL \cnt[6]~26_combout\ : std_logic;
SIGNAL \cnt[6]~27\ : std_logic;
SIGNAL \cnt[7]~28_combout\ : std_logic;
SIGNAL \cnt[7]~29\ : std_logic;
SIGNAL \cnt[8]~30_combout\ : std_logic;
SIGNAL \cnt[8]~31\ : std_logic;
SIGNAL \cnt[9]~33\ : std_logic;
SIGNAL \cnt[10]~34_combout\ : std_logic;
SIGNAL \cnt[10]~35\ : std_logic;
SIGNAL \cnt[11]~37\ : std_logic;
SIGNAL \cnt[12]~38_combout\ : std_logic;
SIGNAL \cnt[1]~16_combout\ : std_logic;
SIGNAL \exit~0_combout\ : std_logic;
SIGNAL \cnt[4]~22_combout\ : std_logic;
SIGNAL \cnt[3]~20_combout\ : std_logic;
SIGNAL \exit~1_combout\ : std_logic;
SIGNAL \exit~3_combout\ : std_logic;
SIGNAL \exit~reg0_q\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \exitbutton~0_combout\ : std_logic;
SIGNAL \exitbutton~reg0_q\ : std_logic;
SIGNAL \ledbutton~0_combout\ : std_logic;
SIGNAL \ledbutton~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(13 DOWNTO 0);
SIGNAL \genpll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_button <= button;
\exit\ <= \ww_exit\;
exitbutton <= ww_exitbutton;
ledbutton <= ww_ledbutton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\genpll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\genpll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\genpll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \genpll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \genpll|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X4_Y17_N27
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[11]~36_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: FF_X4_Y17_N23
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[9]~32_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X4_Y17_N22
\cnt[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~32_combout\ = (cnt(9) & (!\cnt[8]~31\)) # (!cnt(9) & ((\cnt[8]~31\) # (GND)))
-- \cnt[9]~33\ = CARRY((!\cnt[8]~31\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \cnt[8]~31\,
	combout => \cnt[9]~32_combout\,
	cout => \cnt[9]~33\);

-- Location: LCCOMB_X4_Y17_N26
\cnt[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[11]~36_combout\ = (cnt(11) & (!\cnt[10]~35\)) # (!cnt(11) & ((\cnt[10]~35\) # (GND)))
-- \cnt[11]~37\ = CARRY((!\cnt[10]~35\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~35\,
	combout => \cnt[11]~36_combout\,
	cout => \cnt[11]~37\);

-- Location: LCCOMB_X4_Y11_N12
\exit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \exit~2_combout\ = (cnt(9)) # ((cnt(7)) # ((cnt(8)) # (cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(7),
	datac => cnt(8),
	datad => cnt(10),
	combout => \exit~2_combout\);

-- Location: IOOBUF_X0_Y5_N16
\exit~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exit~reg0_q\,
	devoe => ww_devoe,
	o => \ww_exit\);

-- Location: IOOBUF_X34_Y9_N16
\exitbutton~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exitbutton~reg0_q\,
	devoe => ww_devoe,
	o => ww_exitbutton);

-- Location: IOOBUF_X34_Y9_N23
\ledbutton~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledbutton~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledbutton);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\genpll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5891,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \genpll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \genpll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \genpll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \genpll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y17_N4
\cnt[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~14_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~15\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~14_combout\,
	cout => \cnt[0]~15\);

-- Location: LCCOMB_X4_Y17_N28
\cnt[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[12]~38_combout\ = (cnt(12) & (\cnt[11]~37\ $ (GND))) # (!cnt(12) & (!\cnt[11]~37\ & VCC))
-- \cnt[12]~39\ = CARRY((cnt(12) & !\cnt[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~37\,
	combout => \cnt[12]~38_combout\,
	cout => \cnt[12]~39\);

-- Location: LCCOMB_X4_Y17_N30
\cnt[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[13]~40_combout\ = cnt(13) $ (\cnt[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	cin => \cnt[12]~39\,
	combout => \cnt[13]~40_combout\);

-- Location: FF_X4_Y17_N31
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[13]~40_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X4_Y17_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cnt(13) & ((cnt(11)) # (cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datac => cnt(13),
	datad => cnt(12),
	combout => \LessThan0~0_combout\);

-- Location: FF_X4_Y17_N5
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[0]~14_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X4_Y17_N6
\cnt[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~16_combout\ = (cnt(1) & (!\cnt[0]~15\)) # (!cnt(1) & ((\cnt[0]~15\) # (GND)))
-- \cnt[1]~17\ = CARRY((!\cnt[0]~15\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \cnt[0]~15\,
	combout => \cnt[1]~16_combout\,
	cout => \cnt[1]~17\);

-- Location: LCCOMB_X4_Y17_N8
\cnt[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~18_combout\ = (cnt(2) & (\cnt[1]~17\ $ (GND))) # (!cnt(2) & (!\cnt[1]~17\ & VCC))
-- \cnt[2]~19\ = CARRY((cnt(2) & !\cnt[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~17\,
	combout => \cnt[2]~18_combout\,
	cout => \cnt[2]~19\);

-- Location: FF_X4_Y17_N9
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[2]~18_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X4_Y17_N10
\cnt[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~20_combout\ = (cnt(3) & (!\cnt[2]~19\)) # (!cnt(3) & ((\cnt[2]~19\) # (GND)))
-- \cnt[3]~21\ = CARRY((!\cnt[2]~19\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~19\,
	combout => \cnt[3]~20_combout\,
	cout => \cnt[3]~21\);

-- Location: LCCOMB_X4_Y17_N12
\cnt[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~22_combout\ = (cnt(4) & (\cnt[3]~21\ $ (GND))) # (!cnt(4) & (!\cnt[3]~21\ & VCC))
-- \cnt[4]~23\ = CARRY((cnt(4) & !\cnt[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~21\,
	combout => \cnt[4]~22_combout\,
	cout => \cnt[4]~23\);

-- Location: LCCOMB_X4_Y17_N14
\cnt[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~24_combout\ = (cnt(5) & (!\cnt[4]~23\)) # (!cnt(5) & ((\cnt[4]~23\) # (GND)))
-- \cnt[5]~25\ = CARRY((!\cnt[4]~23\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~23\,
	combout => \cnt[5]~24_combout\,
	cout => \cnt[5]~25\);

-- Location: FF_X4_Y17_N15
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[5]~24_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X4_Y17_N16
\cnt[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~26_combout\ = (cnt(6) & (\cnt[5]~25\ $ (GND))) # (!cnt(6) & (!\cnt[5]~25\ & VCC))
-- \cnt[6]~27\ = CARRY((cnt(6) & !\cnt[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~25\,
	combout => \cnt[6]~26_combout\,
	cout => \cnt[6]~27\);

-- Location: FF_X4_Y17_N17
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[6]~26_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X4_Y17_N18
\cnt[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~28_combout\ = (cnt(7) & (!\cnt[6]~27\)) # (!cnt(7) & ((\cnt[6]~27\) # (GND)))
-- \cnt[7]~29\ = CARRY((!\cnt[6]~27\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~27\,
	combout => \cnt[7]~28_combout\,
	cout => \cnt[7]~29\);

-- Location: FF_X4_Y17_N19
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[7]~28_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X4_Y17_N20
\cnt[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~30_combout\ = (cnt(8) & (\cnt[7]~29\ $ (GND))) # (!cnt(8) & (!\cnt[7]~29\ & VCC))
-- \cnt[8]~31\ = CARRY((cnt(8) & !\cnt[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~29\,
	combout => \cnt[8]~30_combout\,
	cout => \cnt[8]~31\);

-- Location: FF_X4_Y17_N21
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[8]~30_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X4_Y17_N24
\cnt[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[10]~34_combout\ = (cnt(10) & (\cnt[9]~33\ $ (GND))) # (!cnt(10) & (!\cnt[9]~33\ & VCC))
-- \cnt[10]~35\ = CARRY((cnt(10) & !\cnt[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~33\,
	combout => \cnt[10]~34_combout\,
	cout => \cnt[10]~35\);

-- Location: FF_X4_Y17_N25
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[10]~34_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: FF_X4_Y17_N29
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[12]~38_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: FF_X4_Y17_N7
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[1]~16_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X4_Y17_N0
\exit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \exit~0_combout\ = (cnt(11)) # ((cnt(12)) # ((cnt(2)) # (cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datab => cnt(12),
	datac => cnt(2),
	datad => cnt(1),
	combout => \exit~0_combout\);

-- Location: FF_X4_Y17_N13
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[4]~22_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: FF_X4_Y17_N11
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cnt[3]~20_combout\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X4_Y11_N26
\exit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \exit~1_combout\ = (cnt(6)) # ((cnt(4)) # ((cnt(3)) # (cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(4),
	datac => cnt(3),
	datad => cnt(5),
	combout => \exit~1_combout\);

-- Location: LCCOMB_X4_Y11_N16
\exit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \exit~3_combout\ = (!\exit~2_combout\ & (!\exit~0_combout\ & (!\exit~1_combout\ & !cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exit~2_combout\,
	datab => \exit~0_combout\,
	datac => \exit~1_combout\,
	datad => cnt(13),
	combout => \exit~3_combout\);

-- Location: FF_X4_Y11_N17
\exit~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \genpll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \exit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exit~reg0_q\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X34_Y12_N22
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X33_Y10_N8
\exitbutton~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \exitbutton~0_combout\ = !\button~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button~input_o\,
	combout => \exitbutton~0_combout\);

-- Location: FF_X33_Y10_N9
\exitbutton~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exitbutton~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exitbutton~reg0_q\);

-- Location: LCCOMB_X33_Y10_N18
\ledbutton~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledbutton~0_combout\ = !\button~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button~input_o\,
	combout => \ledbutton~0_combout\);

-- Location: FF_X33_Y10_N19
\ledbutton~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ledbutton~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledbutton~reg0_q\);
END structure;


