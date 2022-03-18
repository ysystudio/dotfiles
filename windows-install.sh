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
choco install wget curl fzf lua lazygit microsoft-windows-terminal FiraCode 
choco install wsl-ubuntu-2004

############## link lazygit###########################
ln -s ~/dev/dotfiles/lazygit ~/.config/lazygit
source ~/.config/lazygit

############# install neovim ############################
choco install git gitui ripgrep fd lua
choco install neovim
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
# gitui required by tui git operations
# ripgrep required by telescope word search engine telescope-zoxide
# fd required by telescope file search engine
## yarn required by markdown preview
## sqlite required by telescope-frecency
# nerd-fonts-ibm-plex-mono required by devicons

# for neovim python module
pip install neovim --user
# link config
# ln -s ~/dev/dotfiles/nvim ~/.config/nvim
mklink /D ~/AppData/Local/nvim ~/dev/dotfiles/nvim
# sync plugins(maybe need multiple times)
nvim +PackerSync



