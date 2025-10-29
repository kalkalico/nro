@echo off

curl -L -o "C:\Windows\Panther\unattend.xml" "https://raw.githubusercontent.com/kalkalico/nro/refs/heads/main/unattend.xml"
IF ERRORLEVEL 1 (
    echo Failed to download unattend.xml
    exit /b 1
)

"%WINDIR%\System32\Sysprep\Sysprep.exe" /oobe /unattend:"C:\Windows\Panther\unattend.xml" /reboot
IF ERRORLEVEL 1 (
    echo Sysprep encountered an error
    exit /b 1
)
