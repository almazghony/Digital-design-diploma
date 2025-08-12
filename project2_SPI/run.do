vlib work
vlog SPI.v SPI_tb.v
vsim -voptargs=+acc work.SPI_slave_interface_tb
add wave -position insertpoint  \
sim:/SPI_slave_interface_tb/dut/MOSI \
sim:/SPI_slave_interface_tb/dut/SS_n \
sim:/SPI_slave_interface_tb/dut/clk \
sim:/SPI_slave_interface_tb/dut/rst_n \
sim:/SPI_slave_interface_tb/dut/MISO \
sim:/SPI_slave_interface_tb/dut/din_rx_data \
sim:/SPI_slave_interface_tb/dut/rx_valid \
sim:/SPI_slave_interface_tb/dut/tx_data_dout \
sim:/SPI_slave_interface_tb/dut/tx_valid
add wave -position insertpoint  \
sim:/SPI_slave_interface_tb/dut/ram/MEM_DEPTH \
sim:/SPI_slave_interface_tb/dut/ram/ADDR_SIZE \
sim:/SPI_slave_interface_tb/dut/ram/din \
sim:/SPI_slave_interface_tb/dut/ram/clk \
sim:/SPI_slave_interface_tb/dut/ram/rst_n \
sim:/SPI_slave_interface_tb/dut/ram/rx_valid \
sim:/SPI_slave_interface_tb/dut/ram/dout \
sim:/SPI_slave_interface_tb/dut/ram/tx_valid \
sim:/SPI_slave_interface_tb/dut/ram/mem \
sim:/SPI_slave_interface_tb/dut/ram/write_address \
sim:/SPI_slave_interface_tb/dut/ram/read_address
add wave -position insertpoint  \
sim:/SPI_slave_interface_tb/dut/slave/MOSI \
sim:/SPI_slave_interface_tb/dut/slave/SS_n \
sim:/SPI_slave_interface_tb/dut/slave/clk \
sim:/SPI_slave_interface_tb/dut/slave/rst_n \
sim:/SPI_slave_interface_tb/dut/slave/tx_valid \
sim:/SPI_slave_interface_tb/dut/slave/tx_data \
sim:/SPI_slave_interface_tb/dut/slave/MISO \
sim:/SPI_slave_interface_tb/dut/slave/rx_valid \
sim:/SPI_slave_interface_tb/dut/slave/rx_data \
sim:/SPI_slave_interface_tb/dut/slave/cs \
sim:/SPI_slave_interface_tb/dut/slave/ns \
sim:/SPI_slave_interface_tb/dut/slave/count \
sim:/SPI_slave_interface_tb/dut/slave/parallel_data \
sim:/SPI_slave_interface_tb/dut/slave/add_data \
sim:/SPI_slave_interface_tb/dut/slave/received_data \
sim:/SPI_slave_interface_tb/dut/slave/send_MISO

run -all
#quit -sim