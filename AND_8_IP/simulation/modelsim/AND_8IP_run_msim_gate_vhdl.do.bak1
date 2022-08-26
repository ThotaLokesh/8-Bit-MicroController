transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {AND_8IP.vho}

vcom -93 -work work {C:/Users/HP/Documents/PROJECT_PROCESSOR/AND_8_IP/TEST_BENCH.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  TEST_BENCH

add wave *
view structure
view signals
run -all
