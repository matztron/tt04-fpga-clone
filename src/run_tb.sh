#!/usr/bin/env bash

# do 'chmod +x latch_sim.sh' on this script to execute it :)

# delete old compilation products if they are present
#rm ../output/out_fdce_1
#rm ../output/fdce_1_comparison.vcd

iverilog -o sim_out/out tb.v tt_um_top.v inverter.v
vvp sim_out/out
gtkwave sim_out/tb.vcd &
