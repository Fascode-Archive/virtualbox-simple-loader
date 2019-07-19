@echo off

rem Enter the name of the target virtual machine for startup, termination, etc.
set MachineName=EspateOS

rem This is the waiting time after starting the virtual machine.
rem Please enter the time until the guest OS is completely booted and you can use remote desktop and SSH.
set wait=8

rem Enter the path of the virtual appliance you want to install.
set OvaPath=%HOMEPATH%\Desktop\VirtualMachine.ova

rem Enter the delay time for starting the virtual machine automatically.
set StartupDelay=5