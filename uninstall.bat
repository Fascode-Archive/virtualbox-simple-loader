@echo off

call settings.bat
C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" controlvm %MachineName% poweroff "
C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" unregistervm %MachineName% --delete"

if %ERRORLEVEL% equ 0 ( goto seccess )

echo "An error has occurred and the process ends."
exit /B

:seccess

echo "Done."
exit /B