# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS
################# tools install#################
#install choco
#cmd with admin
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
#powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#test choco
choco -v
choco upgrade chocolatey

############# install usefull tool ############################
choco install wget curl fzf lazygit microsoft-windows-terminal FiraCode 
choco install wsl-ubuntu-2004

############## link lazygit###########################
ln -s ~/dev/dotfiles/lazygit ~/.config/lazygit
source ~/.config/lazygit

#################### alaritty - fastest terminal####################
choco install alacritty
# link the config
rm %Home%
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty


