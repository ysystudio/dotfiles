# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS
#change apt source
sudo cp -f /etc/apt/sources.list /etc/apt/sources.list.bk
sudo cp -f ./sources.list /etc/apt/sources.list

# # 改变默认 shel 为 zsh：
# apt install zsh -y
# chsh -s /bin/zsh

#proxy
#explore MY_PROXY=* in profile, and use the function proxy_on and git_proxy_on
export http_proxy=$MY_PROXY
export https_proxy=$MY_PROXY
export ftp_proxy=$MY_PROXY

#install homebrew from https://brew.idayer.com/
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install.sh)"

################# support tools install#################
brew install wget curl autojump fzf git lua fd lazygit ranger zinit node youtube-dl tmux cmake svn

which zsh
	/home/linuxbrew/.linuxbrew/bin/zsh
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells
chsh -s /home/linuxbrew/.linuxbrew/bin/zsh
cat /etc/shells


##############install zshrc ############################
ln -s ~/dev/dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc

############## link ranger###########################
mkdir .config
ln -s ~/dev/dotfiles/ranger ~/.config/ranger
source ~/.config/ranger

############## link lazygit###########################
ln -s ~/dev/dotfiles/lazygit ~/.config/lazygit
source ~/.config/lazygit

############# install neovim ############################
# sudo port install neovim
brew install neovim
brew install gitui zoxide ripgrep sqlite fd yarn svn
# gitui required by tui git operations
# ripgrep required by telescope word search engine
# ripgrep required by telescope-zoxide
# sqlite required by telescope-frecency
# fd required by telescope file search engine
# yarn required by markdown preview
# nerd-fonts-ibm-plex-mono required by devicons

# nodejs, neovim-git required by copilot.
# neovim version >= 0.6
brew install nodejs neovim-git
# for neovim python module
pip install neovim --user

# link config
ln -s ~/dev/dotfiles/nvim ~/.config/nvim
# sync plugins(maybe need multiple times)
nvim +PackerSync
#如果需要使用coc分支的：
# cd ~/.config/nvim & git switch coc

#################### fonts###########################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
# or you can download the nerd font from:https://www.nerdfonts.com/font-downloads
git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
cd nerd-fonts
./install.sh

#################### alaritty - fastest terminal####################
apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty
# link the config
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty



