@echo off

call settings.bat
C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" controlvm %MachineName% acpibutton "
exit /B