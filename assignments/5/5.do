vlib work
vlog 5.v 5_tb.v
vsim -voptargs=+acc work.mod5_tb

add wave *
add wave -position insertpoint  \
sim:/mod5_tb/dut/write_pointer \
sim:/mod5_tb/dut/read_pointer \
sim:/mod5_tb/dut/mem

run -all

#quit -sim

