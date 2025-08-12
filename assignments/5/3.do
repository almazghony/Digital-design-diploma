vlib work
vlog 3.v 3_tb.v
vsim -voptargs=+acc work.mod3_tb

add wave *
run -all

#quit -sim

