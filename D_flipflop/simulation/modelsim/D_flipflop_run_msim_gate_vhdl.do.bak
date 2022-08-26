transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {D_flipflop.vho}

vcom -93 -work work {C:/Users/HP/Documents/PROJECT_PROCESSOR/D_flipflop/Test_bench.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  Test_Bench

add wave *
view structure
view signals
run -all
