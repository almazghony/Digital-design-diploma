vlib work
vlog 1.v 1_tb.v
vsim -voptargs=+acc work.mod1_LFSR_tb
add wave *

run -all

#quit -sim