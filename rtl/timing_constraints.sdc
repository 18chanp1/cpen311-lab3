## Generated SDC file "timing_constraints.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

## DATE    "Mon Jun 05 16:24:36 2023"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 33.333 -waveform { 0.000 16.666 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]
create_clock -name {TD_CLK27} -period 37.000 -waveform { 0.000 18.500 } [get_ports {TD_CLK27}]
create_clock -name {doublesync:ps2c_doublsync|reg2} -period 40.000 -waveform { 0.000 20.000 } [get_registers {doublesync:ps2c_doublsync|reg2}]
create_clock -name {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]
create_clock -name {Kbd_ctrl:Kbd_Controller|data_ready} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Kbd_ctrl:Kbd_Controller|data_ready}]
create_clock -name {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk} -period 40.000 -waveform { 0.000 20.000 } [get_registers {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]
create_clock -name {speed_up_event_trigger} -period 40.000 -waveform { 0.000 20.000 } [get_registers {speed_up_event_trigger}]
create_clock -name {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]
create_clock -name {speed_down_event_trigger} -period 40.000 -waveform { 0.000 20.000 } [get_registers {speed_down_event_trigger}]
create_clock -name {doublesync:key2_doublsync|reg2} -period 40.000 -waveform { 0.000 20.000 } [get_registers {doublesync:key2_doublsync|reg2}]
create_clock -name {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk} -period 40.000 -waveform { 0.000 20.000 } [get_registers {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]
create_clock -name {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]
create_clock -name {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]
create_clock -name {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]
create_clock -name {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]
create_clock -name {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg} -period 40.000 -waveform { 0.000 20.000 } [get_registers {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]
create_clock -name {audio_controller:audio_control|audio_clock:u4|LRCK_1X} -period 40.000 -waveform { 0.000 20.000 } [get_registers {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]
create_clock -name {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]} -period 40.000 -waveform { 0.000 20.000 } [get_registers {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]
create_clock -name {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]} -period 40.000 -waveform { 0.000 20.000 } [get_registers {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]
create_clock -name {audio_controller:audio_control|audio_clock:u4|oAUD_BCK} -period 40.000 -waveform { 0.000 20.000 } [get_registers {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]
create_clock -name {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK} -period 40.000 -waveform { 0.000 20.000 } [get_registers {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -rise_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -fall_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -rise_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -fall_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {doublesync:key2_doublsync|reg2}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {doublesync:key2_doublsync|reg2}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {doublesync:key2_doublsync|reg2}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {doublesync:key2_doublsync|reg2}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {speed_down_event_trigger}] -rise_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_down_event_trigger}] -fall_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_down_event_trigger}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_down_event_trigger}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_down_event_trigger}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {speed_down_event_trigger}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {speed_down_event_trigger}] -rise_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_down_event_trigger}] -fall_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_down_event_trigger}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_down_event_trigger}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_down_event_trigger}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {speed_down_event_trigger}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {speed_down_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_up_event_trigger}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_up_event_trigger}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_up_event_trigger}] -rise_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_up_event_trigger}] -fall_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {speed_up_event_trigger}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {speed_up_event_trigger}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {speed_up_event_trigger}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_up_event_trigger}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_up_event_trigger}] -rise_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_up_event_trigger}] -fall_to [get_clocks {speed_up_event_trigger}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {speed_up_event_trigger}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {speed_up_event_trigger}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -rise_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -fall_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -rise_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -fall_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {doublesync:ps2c_doublsync|reg2}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {doublesync:key2_doublsync|reg2}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {doublesync:key2_doublsync|reg2}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {speed_down_event_trigger}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {speed_down_event_trigger}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {speed_up_event_trigger}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {speed_up_event_trigger}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {TD_CLK27}]  0.310  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {TD_CLK27}]  0.310  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {led_flasher:flasher_inst|freq_divider:led_flash_divider|outclk}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {doublesync:key2_doublsync|reg2}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {doublesync:key2_doublsync|reg2}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {speed_down_event_trigger}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {speed_down_event_trigger}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_1KHz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {speed_up_event_trigger}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {speed_up_event_trigger}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Kbd_ctrl:Kbd_Controller|data_ready}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {doublesync:ps2c_doublsync|reg2}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {CLOCK_50}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {CLOCK_50}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {TD_CLK27}]  0.310  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {TD_CLK27}]  0.310  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {TD_CLK27}] -rise_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {TD_CLK27}] -fall_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {TD_CLK27}] -rise_to [get_clocks {TD_CLK27}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {TD_CLK27}] -rise_to [get_clocks {TD_CLK27}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {TD_CLK27}] -fall_to [get_clocks {TD_CLK27}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {TD_CLK27}] -fall_to [get_clocks {TD_CLK27}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {TD_CLK27}] -rise_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {TD_CLK27}] -fall_to [get_clocks {music_fetcher:m_fetch_inst|freq_divider:m_fetch_divider|outclk}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {TD_CLK27}] -rise_to [get_clocks {TD_CLK27}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {TD_CLK27}] -rise_to [get_clocks {TD_CLK27}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {TD_CLK27}] -fall_to [get_clocks {TD_CLK27}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {TD_CLK27}] -fall_to [get_clocks {TD_CLK27}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -rise_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -fall_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -rise_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}] -fall_to [get_clocks {audio_controller:audio_control|I2C_AV_Config:u3|mI2C_CTRL_CLK}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|oAUD_BCK}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_reg_top|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -rise_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -fall_to [get_clocks {audio_controller:audio_control|TFF_power_of_2_division_counter_with_auto_phase_inversion:generate_aud_ctrl_clk|widereg:div_regs_gen[1].div_reg|outdata[0]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -rise_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}] -fall_to [get_clocks {audio_controller:audio_control|audio_clock:u4|LRCK_1X}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Generate_LCD_scope_Clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -rise_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}] -fall_to [get_clocks {Generate_Arbitrary_Divided_Clk32:Gen_2Hz_clk|var_clk_div32:Div_Clk|tc_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[4]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[5]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {CLOCK_50}]  0.350  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[6]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -rise_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}] -fall_to [get_clocks {Write_Kbd_To_Scope_LCD:Write_Kbd_To_LCD1|state[9]}]  0.380  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from [get_registers {fetcher_controller:controller_inst|sample_freq_div[31] fetcher_controller:controller_inst|sample_freq_div[0] fetcher_controller:controller_inst|sample_freq_div[1] fetcher_controller:controller_inst|sample_freq_div[2] fetcher_controller:controller_inst|sample_freq_div[3] fetcher_controller:controller_inst|sample_freq_div[4] fetcher_controller:controller_inst|sample_freq_div[5] fetcher_controller:controller_inst|sample_freq_div[6] fetcher_controller:controller_inst|sample_freq_div[7] fetcher_controller:controller_inst|sample_freq_div[8] fetcher_controller:controller_inst|sample_freq_div[9] fetcher_controller:controller_inst|sample_freq_div[10] fetcher_controller:controller_inst|sample_freq_div[11] fetcher_controller:controller_inst|sample_freq_div[12] fetcher_controller:controller_inst|sample_freq_div[13] fetcher_controller:controller_inst|sample_freq_div[14] fetcher_controller:controller_inst|sample_freq_div[15] fetcher_controller:controller_inst|sample_freq_div[16] fetcher_controller:controller_inst|sample_freq_div[17] fetcher_controller:controller_inst|sample_freq_div[18] fetcher_controller:controller_inst|sample_freq_div[19] fetcher_controller:controller_inst|sample_freq_div[20] fetcher_controller:controller_inst|sample_freq_div[21] fetcher_controller:controller_inst|sample_freq_div[22] fetcher_controller:controller_inst|sample_freq_div[23] fetcher_controller:controller_inst|sample_freq_div[24] fetcher_controller:controller_inst|sample_freq_div[25] fetcher_controller:controller_inst|sample_freq_div[26] fetcher_controller:controller_inst|sample_freq_div[27] fetcher_controller:controller_inst|sample_freq_div[28] fetcher_controller:controller_inst|sample_freq_div[29] fetcher_controller:controller_inst|sample_freq_div[30]}] -to [get_registers {music_fetcher:m_fetch_inst|s27_div[31] music_fetcher:m_fetch_inst|s27_div[0] music_fetcher:m_fetch_inst|s27_div[1] music_fetcher:m_fetch_inst|s27_div[2] music_fetcher:m_fetch_inst|s27_div[3] music_fetcher:m_fetch_inst|s27_div[4] music_fetcher:m_fetch_inst|s27_div[5] music_fetcher:m_fetch_inst|s27_div[6] music_fetcher:m_fetch_inst|s27_div[7] music_fetcher:m_fetch_inst|s27_div[8] music_fetcher:m_fetch_inst|s27_div[9] music_fetcher:m_fetch_inst|s27_div[10] music_fetcher:m_fetch_inst|s27_div[11] music_fetcher:m_fetch_inst|s27_div[12] music_fetcher:m_fetch_inst|s27_div[13] music_fetcher:m_fetch_inst|s27_div[14] music_fetcher:m_fetch_inst|s27_div[15] music_fetcher:m_fetch_inst|s27_div[16] music_fetcher:m_fetch_inst|s27_div[17] music_fetcher:m_fetch_inst|s27_div[18] music_fetcher:m_fetch_inst|s27_div[19] music_fetcher:m_fetch_inst|s27_div[20] music_fetcher:m_fetch_inst|s27_div[21] music_fetcher:m_fetch_inst|s27_div[22] music_fetcher:m_fetch_inst|s27_div[23] music_fetcher:m_fetch_inst|s27_div[24] music_fetcher:m_fetch_inst|s27_div[25] music_fetcher:m_fetch_inst|s27_div[26] music_fetcher:m_fetch_inst|s27_div[27] music_fetcher:m_fetch_inst|s27_div[28] music_fetcher:m_fetch_inst|s27_div[29] music_fetcher:m_fetch_inst|s27_div[30]}] 2
set_multicycle_path -setup -end -from [get_registers {fetcher_controller:controller_inst|sample_freq_div[0] fetcher_controller:controller_inst|sample_freq_div[1] fetcher_controller:controller_inst|sample_freq_div[2] fetcher_controller:controller_inst|sample_freq_div[3] fetcher_controller:controller_inst|sample_freq_div[4] fetcher_controller:controller_inst|sample_freq_div[5] fetcher_controller:controller_inst|sample_freq_div[6] fetcher_controller:controller_inst|sample_freq_div[7] fetcher_controller:controller_inst|sample_freq_div[8] fetcher_controller:controller_inst|sample_freq_div[9] fetcher_controller:controller_inst|sample_freq_div[10] fetcher_controller:controller_inst|sample_freq_div[11] fetcher_controller:controller_inst|sample_freq_div[12] fetcher_controller:controller_inst|sample_freq_div[13] fetcher_controller:controller_inst|sample_freq_div[14] fetcher_controller:controller_inst|sample_freq_div[15] fetcher_controller:controller_inst|sample_freq_div[16] fetcher_controller:controller_inst|sample_freq_div[17] fetcher_controller:controller_inst|sample_freq_div[18] fetcher_controller:controller_inst|sample_freq_div[19] fetcher_controller:controller_inst|sample_freq_div[20] fetcher_controller:controller_inst|sample_freq_div[21] fetcher_controller:controller_inst|sample_freq_div[22] fetcher_controller:controller_inst|sample_freq_div[23] fetcher_controller:controller_inst|sample_freq_div[24] fetcher_controller:controller_inst|sample_freq_div[25] fetcher_controller:controller_inst|sample_freq_div[26] fetcher_controller:controller_inst|sample_freq_div[27] fetcher_controller:controller_inst|sample_freq_div[28] fetcher_controller:controller_inst|sample_freq_div[29] fetcher_controller:controller_inst|sample_freq_div[30] fetcher_controller:controller_inst|sample_freq_div[31]}] -to [get_registers {music_fetcher:m_fetch_inst|s27_div1[0] music_fetcher:m_fetch_inst|s27_div1[1] music_fetcher:m_fetch_inst|s27_div1[2] music_fetcher:m_fetch_inst|s27_div1[3] music_fetcher:m_fetch_inst|s27_div1[4] music_fetcher:m_fetch_inst|s27_div1[5] music_fetcher:m_fetch_inst|s27_div1[6] music_fetcher:m_fetch_inst|s27_div1[7] music_fetcher:m_fetch_inst|s27_div1[8] music_fetcher:m_fetch_inst|s27_div1[9] music_fetcher:m_fetch_inst|s27_div1[10] music_fetcher:m_fetch_inst|s27_div1[11] music_fetcher:m_fetch_inst|s27_div1[12] music_fetcher:m_fetch_inst|s27_div1[13] music_fetcher:m_fetch_inst|s27_div1[14] music_fetcher:m_fetch_inst|s27_div1[15] music_fetcher:m_fetch_inst|s27_div1[16] music_fetcher:m_fetch_inst|s27_div1[17] music_fetcher:m_fetch_inst|s27_div1[18] music_fetcher:m_fetch_inst|s27_div1[19] music_fetcher:m_fetch_inst|s27_div1[20] music_fetcher:m_fetch_inst|s27_div1[21] music_fetcher:m_fetch_inst|s27_div1[22] music_fetcher:m_fetch_inst|s27_div1[23] music_fetcher:m_fetch_inst|s27_div1[24] music_fetcher:m_fetch_inst|s27_div1[25] music_fetcher:m_fetch_inst|s27_div1[26] music_fetcher:m_fetch_inst|s27_div1[27] music_fetcher:m_fetch_inst|s27_div1[28] music_fetcher:m_fetch_inst|s27_div1[29] music_fetcher:m_fetch_inst|s27_div1[30] music_fetcher:m_fetch_inst|s27_div1[31]}] 2
set_multicycle_path -hold -end -from [get_registers {fetcher_controller:controller_inst|sample_freq_div[31] fetcher_controller:controller_inst|sample_freq_div[0] fetcher_controller:controller_inst|sample_freq_div[1] fetcher_controller:controller_inst|sample_freq_div[2] fetcher_controller:controller_inst|sample_freq_div[3] fetcher_controller:controller_inst|sample_freq_div[4] fetcher_controller:controller_inst|sample_freq_div[5] fetcher_controller:controller_inst|sample_freq_div[6] fetcher_controller:controller_inst|sample_freq_div[7] fetcher_controller:controller_inst|sample_freq_div[8] fetcher_controller:controller_inst|sample_freq_div[9] fetcher_controller:controller_inst|sample_freq_div[10] fetcher_controller:controller_inst|sample_freq_div[11] fetcher_controller:controller_inst|sample_freq_div[12] fetcher_controller:controller_inst|sample_freq_div[13] fetcher_controller:controller_inst|sample_freq_div[14] fetcher_controller:controller_inst|sample_freq_div[15] fetcher_controller:controller_inst|sample_freq_div[16] fetcher_controller:controller_inst|sample_freq_div[17] fetcher_controller:controller_inst|sample_freq_div[18] fetcher_controller:controller_inst|sample_freq_div[19] fetcher_controller:controller_inst|sample_freq_div[20] fetcher_controller:controller_inst|sample_freq_div[21] fetcher_controller:controller_inst|sample_freq_div[22] fetcher_controller:controller_inst|sample_freq_div[23] fetcher_controller:controller_inst|sample_freq_div[24] fetcher_controller:controller_inst|sample_freq_div[25] fetcher_controller:controller_inst|sample_freq_div[26] fetcher_controller:controller_inst|sample_freq_div[27] fetcher_controller:controller_inst|sample_freq_div[28] fetcher_controller:controller_inst|sample_freq_div[29] fetcher_controller:controller_inst|sample_freq_div[30]}] -to [get_registers {music_fetcher:m_fetch_inst|s27_div1[31] music_fetcher:m_fetch_inst|s27_div1[0] music_fetcher:m_fetch_inst|s27_div1[1] music_fetcher:m_fetch_inst|s27_div1[2] music_fetcher:m_fetch_inst|s27_div1[3] music_fetcher:m_fetch_inst|s27_div1[4] music_fetcher:m_fetch_inst|s27_div1[5] music_fetcher:m_fetch_inst|s27_div1[6] music_fetcher:m_fetch_inst|s27_div1[7] music_fetcher:m_fetch_inst|s27_div1[8] music_fetcher:m_fetch_inst|s27_div1[9] music_fetcher:m_fetch_inst|s27_div1[10] music_fetcher:m_fetch_inst|s27_div1[11] music_fetcher:m_fetch_inst|s27_div1[12] music_fetcher:m_fetch_inst|s27_div1[13] music_fetcher:m_fetch_inst|s27_div1[14] music_fetcher:m_fetch_inst|s27_div1[15] music_fetcher:m_fetch_inst|s27_div1[16] music_fetcher:m_fetch_inst|s27_div1[17] music_fetcher:m_fetch_inst|s27_div1[18] music_fetcher:m_fetch_inst|s27_div1[19] music_fetcher:m_fetch_inst|s27_div1[20] music_fetcher:m_fetch_inst|s27_div1[21] music_fetcher:m_fetch_inst|s27_div1[22] music_fetcher:m_fetch_inst|s27_div1[23] music_fetcher:m_fetch_inst|s27_div1[24] music_fetcher:m_fetch_inst|s27_div1[25] music_fetcher:m_fetch_inst|s27_div1[26] music_fetcher:m_fetch_inst|s27_div1[27] music_fetcher:m_fetch_inst|s27_div1[28] music_fetcher:m_fetch_inst|s27_div1[29] music_fetcher:m_fetch_inst|s27_div1[30]}] 2


#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

