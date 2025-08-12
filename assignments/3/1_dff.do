vlib work
vlog 1_dff.v 1_dff_tb.v
vsim -voptargs=+acc work.circuit1_tb
add wave *

run -all

#quit -sim