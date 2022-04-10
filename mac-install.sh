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
# https://mirror.tuna.tsinghua.edu.cn/help/homebrew/, to change the sources

########### support tools install  ####################
brew install wget curl autojump fzf git lua fd lazygit ranger zsh zinit node tmux cmake cmake-docs 
sudo port rmtrash
# To install useful key bindings and fuzzy completion:
# $(brew --prefix)/opt/fzf/install

############## link zshrc ###########################
ln -s ~/dev/dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc

############## link ranger###########################
ln -s ~/dev/dotfiles/ranger ~/.config/ranger
source ~/.config/ranger

############## link lazygit###########################
ln -s ~/dev/dotfiles/lazygit ~/.config/lazygit
source ~/.config/lazygit

############# install neovim config#####################
curl https://sh.rustup.rs -sSf | sh
brew install neovim yarn npm 
# sudo port install neovim nodejs yarn npm


# install lunarvim
# Add the following lines to /etc/hosts to accelerate your installation.
# mirror.ghproxy.com github.com
# mirror.ghproxy.com raw.githubusercontent.com
# https://www.lunarvim.org/01-installing.html#prerequisites
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

#################### fonts ###################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
# or you can install the nerd font 
brew tap homebrew/cask-fonts
brew install font-FiraCode-nerd-font

#################### alaritty - fastest terminal####################
brew install alacritty
# link the config
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty
#xmake Installation
# via curl
zsh <(curl -fsSL https://xmake.io/shget.text)





