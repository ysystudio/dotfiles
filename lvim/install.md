#------------------ install neovim on mac/linux -----------------------
curl https://sh.rustup.rs -sSf | sh # install rust and cargo
brew install neovim make npm node lua 

# install lunarvim
# Add the following lines to /etc/hosts to accelerate your installation.
# mirror.ghproxy.com github.com
# mirror.ghproxy.com raw.githubusercontent.com
# https://www.lunarvim.org/01-installing.html#prerequisites
rm -rf ~/.local/share/lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# fix : Error during download, please verify your internet connection
:lua require("nvim-treesitter.install").prefer_git = true
:TSUpdate

#------------------unintall-----------------------------------------------

#Updating LunarVim
Inside LunarVim :LvimUpdate
From the command-line lvim +LvimUpdate +q
#Update the plugins
Inside LunarVim :LvimSyncCorePlugins
#Uninstall
#Linux/MacOs
bash ~/.local/share/lunarvim/lvim/utils/installer/uninstall.sh
# or
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.sh)



#---------------- install lvim  on windows---------------------------------
choco install neovim git make npm node rust
git clone https://github.com/LunarVim/Neovim-from-scratch.git "%USERPROFILE%/AppData/Local/nvim

unlink "%USERPROFILE%/AppData/Local/nvim
mklink /j  "%USERPROFILE%/AppData/Local/nvim" "%USERPROFILE%/dev/dotfiles/nvim"

#---------------- config lvim ---------------------------------------------
unlink ~/.config/lvim
ln -s ~/dev/dotfiles/lvim ~/.config/lvim
#windows 
mklink /j  "%USERPROFILE%/.config/lvim" "%USERPROFILE%/dev/dotfiles/lvim"

unlink ~/.vim/tasks.ini
ln -s ~/dev/dotfiles/lvim/tasks.ini ~/.vim/tasks.ini
#windows
mklink /j  "%USERPROFILE%/.vim/tasks.ini" "%USERPROFILE%/dev/dotfiles/lvim/tasks.ini"


