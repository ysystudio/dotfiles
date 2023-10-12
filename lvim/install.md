# ------------------ install neovim -----------------------

curl https://sh.rustup.rs -sSf | sh # install rust and cargo
brew install neovim make npm node lua 
choco install neovim

# install lunarvim
https://www.lunarvim.org/docs/installation

# fix : Error during download, please verify your internet connection
:lua require("nvim-treesitter.install").prefer_git = true

# fix error: treesitter/query.lua:219: query: invalid node type
:echo nvim_get_runtime_file('parser', v:true)
['/home/holger/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter/parser', '/usr/lib/nvim/parser']
"If you get more than one path, remove the ones that are outside this plugin (nvim-treesitter directory),
so the correct version of the parser is used.".
# if there any error :treesitter/query.lua:219: query: invalid node type 
> :TSUpdate

# ------------------unintall-----------------------------------------------
bash ~/.local/share/lunarvim/lvim/utils/installer/uninstall.sh
# or
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.sh)


# ---------------- config lvim ---------------------------------------------
>on linux or macos
unlink ~/.config/lvim
ln -s ~/dev/dotfiles/lvim ~/.config/lvim

unlink ~/.vim/tasks.ini
ln -s ~/dev/dotfiles/lvim/tasks.ini ~/.vim/tasks.ini

> on windows
rmdir /s "%USERPROFILE%/AppData/Local/lvim"
mklink /j  "%USERPROFILE%/AppData/Local/lvim" "%USERPROFILE%/dev/dotfiles/lvim"

mkdir  "%USERPROFILE%/.vim
mklink /h  "%USERPROFILE%/.vim/tasks.ini" "%USERPROFILE%/dev/dotfiles/lvim/tasks.ini"


# Updating LunarVim
Inside LunarVim :LvimUpdate
From the command-line lvim +LvimUpdate +q

# Update the plugins
Inside LunarVim :LvimSyncCorePlugins


