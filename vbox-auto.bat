@echo off

call settings.bat

"%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" startvm "%MachineName%" --type headless > nul

if %ERRORLEVEL% equ 1 ( 
   goto acpi
) else (
   echo "I started %MachineName%."
   exit /B
)

:acpi
"%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" controlvm "%MachineName%" acpibutton > nul
echo "I have quit %MachineName%."
exit /B