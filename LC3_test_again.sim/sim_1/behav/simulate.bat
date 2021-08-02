@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim TEST_Bench_behav -key {Behavioral:sim_1:Functional:TEST_Bench} -tclbatch TEST_Bench.tcl -view F:/Vivadoprojects/LC3_test_again/TEST_Bench_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
