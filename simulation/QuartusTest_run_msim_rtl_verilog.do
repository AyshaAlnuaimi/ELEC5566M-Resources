transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest {C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest/Adder4Bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest {C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest/Adder1Bit.v}

vlog -vlog01compat -work work +incdir+C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest {C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest/Adder4Bit_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Adder4Bit_tb

do C:/Users/User/Workspace/ELEC5566M-Unit1-AyshaAlnuaimi/1-1-QuartusTest/../../ELEC5566M-Resources/simulation/load_sim.tcl
