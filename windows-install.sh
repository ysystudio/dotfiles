# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS
################# tools install#################
choco install wget curl fzf lua lazygit 
# alacritty 0.9.0
# FiraCode 6.2
# fzf 0.29.0
# lazygit 0.32.2
# lua 5.1.5.52
# neovim 0.6.1
# nodejs 17.4.0
# nodejs.install 17.4.0
# vim 8.2.4141
# yarn 1.22.15

# ##############install zshrc ############################
# ln -s ~/dev/dotfiles/zsh/zshrc ~/.zshrc
# source ~/.zshrc

# ############## link ranger###########################
# ln -s ~/dev/dotfiles/ranger ~/.config/ranger
# source ~/.config/ranger

############## link lazygit###########################
ln -s ~/dev/dotfiles/lazygit ~/.config/lazygit
source ~/.config/lazygit

############# install neovim ############################
sudo port install neovim
# gitui required by tui git operations
# ripgrep required by telescope word search engine
# ripgrep required by telescope-zoxide
# sqlite required by telescope-frecency
# fd required by telescope file search engine
# yarn required by markdown preview
# nerd-fonts-ibm-plex-mono required by devicons
brew install git gitui zoxide ripgrep sqlite fd yarn 

# nodejs, neovim-git required by copilot.
# neovim version >= 0.6
brew install nodejs neovim-git
# for neovim python module
pip install neovim --user

# link config
# ln -s ~/dev/dotfiles/nvim ~/.config/nvim
ln -s ~/dev/dotfiles/nvim ~/AppData/Local/nvim
# git clone https://github.com/ayamir/nvimdots ~/.config/nvim
# cd ~/.local/share/nvim/site/pack/packer/opt/fzy-lua-native and make all to recompile
# original bin for 10.15

# sync plugins(maybe need multiple times)
nvim +PackerSync
#如果需要使用coc分支的：
# cd ~/.config/nvim & git switch coc


#################### alaritty - fastest terminal####################
choco install alacritty
# link the config
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty

#################### fonts###########################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
choco install FiraCode

