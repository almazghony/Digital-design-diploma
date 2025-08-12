vlib work
vlog 2.v 2_tb.v
vsim -voptargs=+acc work.mod2_tb

add wave -position insertpoint  \
sim:/mod2_tb/clk \
sim:/mod2_tb/rst \
sim:/mod2_tb/y_expected \
sim:/mod2_tb/y
add wave -position insertpoint  \
sim:/mod2_tb/dut/A \
sim:/mod2_tb/dut/B \
sim:/mod2_tb/dut/C \
sim:/mod2_tb/dut/D \
sim:/mod2_tb/dut/clk \
sim:/mod2_tb/dut/rst \
sim:/mod2_tb/dut/y \
sim:/mod2_tb/dut/cs \
sim:/mod2_tb/dut/ns

run -all

#quit -sim

