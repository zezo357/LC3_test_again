# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/Testlc3/LC3_test_again/LC3_test_again.cache/wt [current_project]
set_property parent.project_path F:/Testlc3/LC3_test_again/LC3_test_again.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
read_verilog -library xil_defaultlib {
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/execute.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/fetch.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/memaccess.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/decode.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/writeback.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/Regfile.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/Controller.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/Memory.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/tb.v
  F:/Testlc3/LC3_test_again/LC3_test_again.srcs/sources_1/new/TEST_Bench.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top TEST_Bench -part xc7z010clg400-1


write_checkpoint -force -noxdef TEST_Bench.dcp

catch { report_utilization -file TEST_Bench_utilization_synth.rpt -pb TEST_Bench_utilization_synth.pb }
