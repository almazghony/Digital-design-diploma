vlib work
vlog 1.v 1_tb.v
vsim -voptargs=+acc work.mod1_tb

add wave -position insertpoint  \
sim:/mod1_tb/speed_limit \
sim:/mod1_tb/car_speed \
sim:/mod1_tb/leading_distance \
sim:/mod1_tb/clk \
sim:/mod1_tb/rst \
sim:/mod1_tb/accelerate_car \
sim:/mod1_tb/unlock_doors
add wave -position insertpoint  \
sim:/mod1_tb/dut/MIN_DISTANCE \
sim:/mod1_tb/dut/ACCELERATE \
sim:/mod1_tb/dut/STOP \
sim:/mod1_tb/dut/DECELERATE \
sim:/mod1_tb/dut/speed_limit \
sim:/mod1_tb/dut/car_speed \
sim:/mod1_tb/dut/leading_distance \
sim:/mod1_tb/dut/clk \
sim:/mod1_tb/dut/rst \
sim:/mod1_tb/dut/accelerate_car \
sim:/mod1_tb/dut/unlock_doors \
sim:/mod1_tb/dut/cs \
sim:/mod1_tb/dut/ns
run -all

#quit -sim

