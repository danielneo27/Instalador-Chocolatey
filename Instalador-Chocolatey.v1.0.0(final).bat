@echo off
color 02
mode 100, 31
title Instalar o Chocolatey
@cls
echo.
@echo "    ______ _                      _                       
@echo "   / _____) |                    | |      _               
@echo "  | /     | | _   ___   ____ ___ | | ____| |_  ____ _   _ 
@echo "  | |     | || \ / _ \ / ___) _ \| |/ _  |  _)/ _  ) | | |
@echo "  | \_____| | | | |_| ( (__| |_| | ( ( | | |_( (/ /| |_| |
@echo "   \______)_| |_|\___/ \____)___/|_|\_||_|\___)____)\__  |
@echo "                                                   (____/ 
@echo.

echo Instalando chocolatey...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation

:END

echo Instalado com sucesso!
echo.
echo Pressione qualquer tecla para sair...
pause