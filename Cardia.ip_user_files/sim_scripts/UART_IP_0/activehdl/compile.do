transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/baud_16tick_gen.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/baud_tick_gen.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/uart_rx.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/uart_tx.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/UART_IP.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/sim/UART_IP_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

