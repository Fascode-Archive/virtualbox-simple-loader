@echo off
call settings.bat

rem vbox-acpi
DOSKEY vbox-acpi=C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" controlvm %MachineName% acpibutton "

rem vbox-inf
DOSKEY vbox-inf=C:\Windows\system32\cmd.exe /k ""%VBOX_MSI_INSTALL_PATH%VBoxManage" showvminfo %MachineName%"

rem vbox-off
DOSKEY vbox-off=C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" controlvm %MachineName% poweroff "

rem vbox-on
DOSKEY vbox-on=C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" startvm %MachineName% --type headless & timeout /t %wait% /nobreak >nul"

rem vbox-sus
DOSKEY vbox-sus=C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" controlvm %MachineName% savestate "
