@echo off

call settings.bat
C:\Windows\system32\cmd.exe /k ""%VBOX_MSI_INSTALL_PATH%VBoxManage" showvminfo %MachineName%"
exit /B