curl -L -o C:\Windows\Panther\unattend.xml raw.githubusercontent.com/kalkalico/nro/refs/heads/main/unattend.xml
%WINDIR%\System32\Sysprep\Sysprep.exe /oobe /unattend:C:\Windows\Panther\unattend.xml /reboot
