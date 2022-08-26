transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Freq_div_4096.vho}

vcom -93 -work work {C:/Users/HP/Documents/PROJECT_PROCESSOR/frequncy_divider_4096/Test_Bench.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  Test_Bench

add wave *
view structure
view signals
run -all
