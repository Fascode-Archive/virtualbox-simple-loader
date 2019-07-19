@echo off

call settings.bat
C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" import %OvaPath% "

if %ERRORLEVEL% equ 0 ( goto askstartup)

echo "An error has occurred and the process ends."
exit /B

:askstartup
set /P yn="Do you want to register as a startup?(Y/N)" 

if /i {%yn%}=={y} (goto :startup)
if /i {%yn%}=={yes} (goto :startup)

goto askpoweron

:startup

cp ArchOnWin-Startup.bat "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
goto askpoweron

:askpoweron

set /P yn="Start a virtual machine. Is it OK? (Y/N)"

if /i {%yn%}=={y} (goto :poweron)
if /i {%yn%}=={yes} (goto :poweron)

exit /B

:poweron

C:\Windows\System32\cmd.exe /c ""%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" startvm %MachineName% --type headless"
timeout /t %wait% /nobreak >nul
exit /B