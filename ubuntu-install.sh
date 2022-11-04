# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS
#change apt source
sudo cp -f /etc/apt/sources.list /etc/apt/sources.list.bk
sudo cp -f ./sources.list /etc/apt/sources.list

################# support tools install#################
#install homebrew from https://brew.idayer.com/
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install.sh)"

brew install wget curl autojump fzf git lua lazygit ranger zinit 

fd:
# If you run Ubuntu 19.04 (Disco Dingo) or newer, you can install the officially maintained package:
# sudo apt install fd-find
# Note that the binary is called fdfind as the binary name fd is already used by another package. 
# executing command ln -s $(which fdfind) ~/.local/bin/fd, in order to use fd in the same way as in this documentation. 
# Make sure that $HOME/.local/bin is in your $PATH.

#change default shell to zsh 
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

############# install neovim ############################
curl https://sh.rustup.rs -sSf | sh
# curl -sSf https://static.rust-lang.org/rustup.sh | sh  #install rust stable version
brew install neovim make npm node xmake

# install lunarvim
# Add the following lines to /etc/hosts to accelerate your installation.
# mirror.ghproxy.com github.com
# mirror.ghproxy.com raw.githubusercontent.com
# https://www.lunarvim.org/01-installing.html#prerequisites
rm -rf ~/.local/share/lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

#################### fonts###########################################
# If you are using powerlevel10k, p10k configure can install the recommended font for you. 
# or you can download the nerd font from:https://www.nerdfonts.com/font-downloads
git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
cd nerd-fonts
./install.sh

#################### alaritty - fastest terminal####################
brew install alaritty
# link the config
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty
