# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS
################# support tools install#################
brew install wget curl autojump fzf git lua fd lazygit ranger zsh zinit node youtube-dl tmux cmake cmake-docs 
sudo port rmtrash
# To install useful key bindings and fuzzy completion:
# $(brew --prefix)/opt/fzf/install

##############install zshrc ############################
ln -s ~/dev/dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc

############## link ranger###########################
ln -s ~/dev/dotfiles/ranger ~/.config/ranger
source ~/.config/ranger

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
ln -s ~/dev/dotfiles/nvim ~/.config/nvim
# git clone https://github.com/ayamir/nvimdots ~/.config/nvim
# cd ~/.local/share/nvim/site/pack/packer/opt/fzy-lua-native and make all to recompile
# original bin for 10.15

# sync plugins(maybe need multiple times)
nvim +PackerSync
#如果需要使用coc分支的：
# cd ~/.config/nvim & git switch coc


#################### alaritty - fastest terminal####################
apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty
# link the config
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty

#################### fonts###########################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
# or you can download the nerd font from:https://www.nerdfonts.com/font-downloads

