if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
cls
$host.UI.RawUI.ForegroundColor = "DarkGreen"
$host.UI.RawUI.BackgroundColor = "Black"
$pshost = get-host
$pswindow = $pshost.ui.rawui
$newsize = $pswindow.buffersize
$newsize.height = 3000
$newsize.width = 120
$pswindow.buffersize = $newsize
$newsize = $pswindow.windowsize
$newsize.height = 38
$newsize.width = 100
$pswindow.windowsize = $newsize
$host.UI.RawUI.WindowTitle = "Atualizar-Apps-Chocolatey"
cls
Write "    ______ _                      _                       "
Write "   / _____) |                    | |      _               "
Write "  | /     | | _   ___   ____ ___ | | ____| |_  ____ _   _ "
Write "  | |     | || \ / _ \ / ___) _ \| |/ _  |  _)/ _  ) | | |"
Write "  | \_____| | | | |_| ( (__| |_| | ( ( | | |_( (/ /| |_| |"
Write "   \______)_| |_|\___/ \____)___/|_|\_||_|\___)____)\__  |"
Write "                                                   (____/ "

Write-Output "Instalando chocolatey..."

iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

Write-Host "Instalado com sucesso!, fechando em 3 segundos..." -F Cyan
Start-Sleep -S 3