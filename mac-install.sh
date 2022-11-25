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

########### support tools install  ####################
brew install wget curl autojump fzf git fd lazygit ranger zsh zinit tree diff-so-fancy 
brew install lazydocker htop glances ripgrep z starship
# sudo port rmtrash
icdiff #分屏diff
ncdu #disk analysi
tldr #simple manual
cloc #code statics
wtf #short words explaining
cppman #cross platform cpp maneul

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
curl https://sh.rustup.rs -sSf | sh # install rust and cargo
brew install neovim make npm node lua xmake

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

#################### fonts ###################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
# or you can install the nerd font by brew 
brew tap homebrew/cask-fonts
brew install font-FiraCode-nerd-font

#################### alaritty - fastest terminal####################
brew install alacritty
# link the config
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty


#################### dev sidecar install ###################################
https://github.com/docmirror/dev-sidecar/releases
# turn on the power mode
# change the seeting.json5 under ~/.dev-sidecar
{
  overwall: true,
  installTime: 1663221978753,
  rootCa: {
    setuped: true,
  },
}
