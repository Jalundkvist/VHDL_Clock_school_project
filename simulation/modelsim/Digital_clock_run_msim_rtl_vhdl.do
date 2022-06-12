transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/definitions_pkg.vhd}
vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/segment.vhd}
vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/Digital_clock.vhd}
vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/SlowClock.vhd}
vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/ClockTop.vhd}
vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/doublesegment.vhd}

vcom -93 -work work {C:/Users/Dizj/Documents/GIT/VHDL/Projekt 2/VHDL_clock/ClockTop_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  ClockTop_tb

add wave *
view structure
view signals
run -all
