onerror {resume}
radix define keys {
    "8'h23" "D",
    "8'h24" "E",
    "8'h2b" "F",
    "8'h2d" "R",
    "8'h32" "B",
    -default default
}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fetcher_controller/clk
add wave -noupdate /tb_fetcher_controller/kbd_data_ready
add wave -noupdate -radix keys -childformat {{{/tb_fetcher_controller/scan_code[7]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[6]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[5]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[4]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[3]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[2]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[1]} -radix hexadecimal} {{/tb_fetcher_controller/scan_code[0]} -radix hexadecimal}} -subitemconfig {{/tb_fetcher_controller/scan_code[7]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[6]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[5]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[4]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[3]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[2]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[1]} {-radix hexadecimal} {/tb_fetcher_controller/scan_code[0]} {-radix hexadecimal}} /tb_fetcher_controller/scan_code
add wave -noupdate /tb_fetcher_controller/rst
add wave -noupdate /tb_fetcher_controller/speed_up_event
add wave -noupdate /tb_fetcher_controller/speed_down_event
add wave -noupdate /tb_fetcher_controller/speed_reset_event
add wave -noupdate -radix decimal /tb_fetcher_controller/sample_freq_div
add wave -noupdate /tb_fetcher_controller/pause
add wave -noupdate /tb_fetcher_controller/forward
add wave -noupdate /tb_fetcher_controller/fetcher_reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {30 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 257
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {440 ns}
