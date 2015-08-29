@echo off
SET BD=C:\MIPS\bin
%BD%\cs-make clean
%BD%\cs-make
pause
python usbloader.py build/stage1.elf 
pause
python usbloader.py build/kernel.elf
pause
@echo on