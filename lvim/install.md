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
:TSInstall all and TSUpdate to fix the lua running error
#------------------unintall-----------------------------------------------

bash ~/.local/share/lunarvim/lvim/utils/installer/uninstall.sh
# or
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.sh)



#---------------- config lvim ---------------------------------------------
unlink ~/.config/lvim
ln -s ~/dev/dotfiles/lvim ~/.config/lvim

unlink ~/.vim/tasks.ini
ln -s ~/dev/dotfiles/lvim/tasks.ini ~/.vim/tasks.ini


#Updating LunarVim
Inside LunarVim :LvimUpdate
From the command-line lvim +LvimUpdate +q

#Update the plugins
Inside LunarVim :LvimSyncCorePlugins


