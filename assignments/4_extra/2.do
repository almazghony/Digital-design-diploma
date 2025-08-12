vlib work
vlog 2.v 2_tb.v
vsim -voptargs=+acc work.param_adder_tb
add wave *

run -all

#quit -sim