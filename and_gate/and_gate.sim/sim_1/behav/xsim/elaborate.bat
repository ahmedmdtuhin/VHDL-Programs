@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun Oct 22 13:15:38 +0200 2023
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto a9050a3d392b4744b998347608813966 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot and_tb_behav xil_defaultlib.and_tb -log elaborate.log"
call xelab  -wto a9050a3d392b4744b998347608813966 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot and_tb_behav xil_defaultlib.and_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
