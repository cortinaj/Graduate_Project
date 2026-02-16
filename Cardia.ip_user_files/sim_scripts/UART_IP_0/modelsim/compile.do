vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/baud_16tick_gen.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/baud_tick_gen.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/uart_rx.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/uart_tx.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/src/UART_IP.v" \
"../../../../Cardia.gen/sources_1/ip/UART_IP_0/sim/UART_IP_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

