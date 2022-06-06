onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix binary /test/reset
add wave -noupdate -format Logic -radix binary /test/clk
add wave -noupdate -format Literal -radix decimal /test/clock_counter
add wave -noupdate -format Literal -radix hexadecimal /test/im_addr
add wave -noupdate -format Literal -radix hexadecimal /test/im_data
add wave -noupdate -divider {Register write}
add wave -noupdate -format Logic -radix binary /test/dut/uf_gpr/w_enb0
add wave -noupdate -format Literal -radix unsigned /test/dut/uf_gpr/w_sel0
add wave -noupdate -format Literal -radix unsigned /test/dut/uf_gpr/data_in0
add wave -noupdate -divider {Register read0}
add wave -noupdate -format Literal -radix unsigned /test/dut/uf_gpr/r_sel0
add wave -noupdate -format Literal -radix unsigned /test/dut/uf_gpr/data_out0
add wave -noupdate -divider {Register read1}
add wave -noupdate -format Literal -radix unsigned /test/dut/uf_gpr/r_sel1
add wave -noupdate -format Literal -radix unsigned /test/dut/uf_gpr/data_out1
add wave -noupdate -divider {Data Bus}
add wave -noupdate -format Literal -radix unsigned /test/dut/dataab
add wave -noupdate -format Literal -radix unsigned /test/dut/datadb
add wave -noupdate -format Logic -radix binary /test/dut/datareq
add wave -noupdate -format Logic -radix binary /test/dut/dataack
add wave -noupdate -format Literal -radix unsigned /test/dut/datawin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ns} 0}
configure wave -namecolwidth 188
configure wave -valuecolwidth 103
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
update
WaveRestoreZoom {339 ns} {751 ns}
