# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS

################# package management tools install#################
#install choco
#cmd with admin
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
#powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
##test choco
choco -v
choco upgrade chocolatey

#choco only source is slow in china, scoop is better
#powershell to install
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

############# install usefull tool ############################
choco install wget curl fzf lazygit neovim  FiraCode 
choco install microsoft-windows-termina lwsl-ubuntu-2004

#Clink for Cmd 
choco install clink-maintained Starship
#Starship
#Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
# -- starship.lua
load(io.popen('starship init cmd'):read("*a"))()

#################### alaritty - fastest terminal####################
choco install alacritty
# link the config
rm %Home%
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty


#################### xmake and compiler##############################
#vc++ compiler installer, you can change the verison by the last four number, for example: 2017
https://learn.microsoft.com/en-us/visualstudio/install/create-an-offline-installation-of-visual-studio?view=vs-2022
#mingw on windows, add */mingw64/bin to system PATH
https://www.mingw-w64.org/downloads/
#ps install script
Invoke-Expression (Invoke-Webrequest 'https://xmake.io/psget.text' -UseBasicParsing).Content
#generate compile_command.json, vscode_xmake have the funciton "Xmake:UpdateIntellisense" in command pallatte

#################### deep learning###################################
# cuda toolkit installation for WSL
# get the download link from https://developer.nvidia.com/cuda-toolkit-archive, 
# if you want install other veriso
# winver reports that OS Of course CUDA in WSL2 will not work in Windows 10 without 21H2.
wget https://developer.download.nvidia.com/compute/cuda/11.3.1/local_installers/cuda_11.3.1_465.19.01_linux.run
sudo sh cuda_11.3.1_465.19.01_linux.run
#update env 
export CUDA_HOME=/usr/local/cuda-11.3
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

#tensorflow 2 setup
pip install tensorflow
#必须将 CUDA®、CUPTI 和 cuDNN 安装目录添加到 %PATH% 环境变量中。
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\bin;%PATH%
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\extras\CUPTI\lib64;%PATH%
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\include;%PATH%
SET PATH=C:\tools\cuDnn11.3\bin;%PATH%
