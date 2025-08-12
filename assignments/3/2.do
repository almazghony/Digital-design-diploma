vlib work
vlog 2.v 2_tb.v
vsim -voptargs=+acc work.circuit5_tb1
add wave *

run -all

#quit -sim