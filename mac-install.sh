# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS

########## basic development environment###################
xcode-select --install
# macport install
# go to official https://www.macports.org/install.php download your macos related dmg
# python install
#   intel cup : https://mirror.tuna.tsinghua.edu.cn/help/anaconda/
#   arm cpu : https://github.com/conda-forge/miniforge

# brew install
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
# https://mirror.tuna.tsinghua.edu.cn/help/homebrew/, to change the source

# support tools install
brew install wget curl autojump fzf git lua fd lazygit ranger zsh zinit node youtube-dl tmux cmake cmake-docs 
sudo port rmtrash
# To install useful key bindings and fuzzy completion:
# $(brew --prefix)/opt/fzf/install
##############install zshrc ###########################
ln -s ~/dev/dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc

############# install neovim config#####################
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
yay -S nodejs neovim-git

# for neovim python module
pip install neovim --user

# clone
git clone https://github.com/ayamir/nvimdots ~/.config/nvim
# cd ~/.local/share/nvim/site/pack/packer/opt/fzy-lua-native and make all to recompile
# original bin for 10.15

# sync plugins(maybe need multiple times)
nvim +PackerSync
#如果需要使用coc分支的：
# cd ~/.config/nvim & git switch coc


#################### fonts ###################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
# or you can install the nerd font 
brew tap homebrew/cask-fonts
brew install font-FiraCode-nerd-font



