vlib work
vlog alu_seq.v alu_seq_tb.v
vsim -voptargs=+acc work.alu_tb
add wave *
run -all
#quit -sim