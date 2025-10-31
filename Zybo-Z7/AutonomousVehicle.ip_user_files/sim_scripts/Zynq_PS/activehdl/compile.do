transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_21
vlib activehdl/processing_system7_vip_v1_0_23
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/xlconstant_v1_1_10
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_35

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 activehdl/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 activehdl/processing_system7_vip_v1_0_23
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap xlconstant_v1_1_10 activehdl/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 activehdl/axi_register_slice_v2_1_35

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/ProgramFiles/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_processing_system7_0_0/sim/Zynq_PS_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_gpio_0_0/sim/Zynq_PS_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/sim/bd_d3c9.v" \

vlog -work xlconstant_v1_1_10  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_0/sim/bd_d3c9_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_1/sim/bd_d3c9_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_2/sim/bd_d3c9_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_3/sim/bd_d3c9_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_4/sim/bd_d3c9_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_5/sim/bd_d3c9_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_6/sim/bd_d3c9_sarn_0.sv" \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_7/sim/bd_d3c9_srn_0.sv" \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_8/sim/bd_d3c9_sawn_0.sv" \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_9/sim/bd_d3c9_swn_0.sv" \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_10/sim/bd_d3c9_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_11/sim/bd_d3c9_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/bd_0/ip/ip_12/sim/bd_d3c9_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_35  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/ip/Zynq_PS_axi_smc_0/sim/Zynq_PS_axi_smc_0.sv" \

vcom -work xil_defaultlib -93  \
"../../../bd/Zynq_PS/ip/Zynq_PS_rst_ps7_0_100M_0/sim/Zynq_PS_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/ec67/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/6cfa/hdl" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AutonomousVehicle.gen/sources_1/bd/Zynq_PS/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../ProgramFiles/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/ProgramFiles/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/Zynq_PS/sim/Zynq_PS.v" \

vlog -work xil_defaultlib \
"glbl.v"

