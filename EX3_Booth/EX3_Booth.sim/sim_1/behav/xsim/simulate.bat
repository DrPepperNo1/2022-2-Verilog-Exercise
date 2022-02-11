@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.2.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Feb 07 23:15:25 +0800 2022
REM SW Build 3414424 on Sun Dec 19 10:57:22 MST 2021
REM
REM IP Build 3405791 on Sun Dec 19 15:54:35 MST 2021
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim tb_EX3_behav -key {Behavioral:sim_1:Functional:tb_EX3} -tclbatch tb_EX3.tcl -log simulate.log"
call xsim  tb_EX3_behav -key {Behavioral:sim_1:Functional:tb_EX3} -tclbatch tb_EX3.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
