onerror {resume}
radix define states {
    "4'b0000" "R-",
    "4'b0010" "R",
    "4'b0001" "F",
    "4'b0100" "S",
    "4'b1100" "+",
    "4'b1000" "-",
    -default binary
}
quietly virtual function -install /tb_music_fetcher/DUT -env /tb_music_fetcher/DUT { &{/tb_music_fetcher/DUT/state[3], /tb_music_fetcher/DUT/state[2], /tb_music_fetcher/DUT/state[1], /tb_music_fetcher/DUT/state[0] }} states
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk_27 /tb_music_fetcher/clk_27
add wave -noupdate -label clk_50 /tb_music_fetcher/clk_50
add wave -noupdate -label rst /tb_music_fetcher/rst
add wave -noupdate -label forward /tb_music_fetcher/forward
add wave -noupdate -label paused /tb_music_fetcher/paused
add wave -noupdate -label freq_div -radix hexadecimal /tb_music_fetcher/sample_freq_div
add wave -noupdate -label waitrequest /tb_music_fetcher/flash_mem_waitrequest
add wave -noupdate -label readdatavalid /tb_music_fetcher/flash_mem_readdatavalid
add wave -noupdate -label readdata -radix hexadecimal /tb_music_fetcher/flash_mem_readdata
add wave -noupdate -label read /tb_music_fetcher/flash_mem_read
add wave -noupdate -label readaddress -radix hexadecimal /tb_music_fetcher/flash_mem_address
add wave -noupdate -label audio_data -radix hexadecimal /tb_music_fetcher/audio_data
add wave -noupdate -color Gold -radix states -radixshowbase 0 /tb_music_fetcher/DUT/states
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 257
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ns} {980 ns}
