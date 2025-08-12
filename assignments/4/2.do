vlib work
vlog 2.v 2_tb.v
vsim -voptargs=+acc work.mod2_dsp_tb
add wave *

run -all

#quit -sim