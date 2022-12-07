## on windows
mkdir .config
mklink /j  "%USERPROFILE%/.config/ranger" "%USERPROFILE%/dev/dotfiles/ranger"

## on mac or linux
mkdir .config
ln -s ~/dev/dotfiles/ranger ~/.config/ranger
source ~/.config/ranger


