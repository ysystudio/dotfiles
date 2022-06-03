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

#choco only source is slow in china, scoop is better
#powershell to install
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

############# install usefull tool ############################
choco install wget curl fzf lazygit microsoft-windows-terminal FiraCode 
choco install wsl-ubuntu-2004

############# fix wsl  network issue without vpn####################
#######edit /etc/wsl.conf to look like this:
[network]
generateResolvConf = false
########edit /etc/resolv.conf to use Public DNS
nameserver 129.29.29.29.29

######### set vpn jump point priority lower, to be validated
Set-NetIPInterface -InterfaceAlias 'vEthernet (WSL)' -InterfaceMetric 6000    # set jump point priority
Set-NetIPInterface -InterfaceAlias 'vEthernet (WSL)' -AutomaticMetric enabled # reset
############## link lazygit###########################
ln -s ~/dev/dotfiles/lazygit ~/.config/lazygit
source ~/.config/lazygit

#################### alaritty - fastest terminal####################
choco install alacritty
# link the config
rm %Home%
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty


