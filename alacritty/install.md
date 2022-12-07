
# on windows
choco install alacritty
mklink /j  "%USERPROFILE%/.config/alacritty" "%USERPROFILE%/dev/dotfiles/alacritty"

# on mac or linux
brew install alaritty
ln -s ~/dev/dotfiles/alacritty ~/.config/alacritty
