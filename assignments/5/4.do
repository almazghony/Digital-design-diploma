vlib work
vlog 4.v 4_tb.v
vsim -voptargs=+acc work.mod4_tb

add wave -position insertpoint  \
sim:/mod4_tb/din \
sim:/mod4_tb/addr \
sim:/mod4_tb/wr_en \
sim:/mod4_tb/rd_en \
sim:/mod4_tb/blk_select \
sim:/mod4_tb/addr_en \
sim:/mod4_tb/dout_en \
sim:/mod4_tb/clk \
sim:/mod4_tb/rst \
sim:/mod4_tb/dout \
sim:/mod4_tb/parity_out \
sim:/mod4_tb/i

add wave -position insertpoint  \
sim:/mod4_tb/dut/addr_reg \
sim:/mod4_tb/dut/addr_src \
sim:/mod4_tb/dut/addr_valid \
sim:/mod4_tb/dut/dout_reg \
sim:/mod4_tb/dut/dout_mem \
sim:/mod4_tb/dut/mem
run -all

#quit -sim

