## on windows
mkdir .config
mklink /j  "%USERPROFILE%/.config/ranger" "%USERPROFILE%/dev/dotfiles/ranger"

## on mac or linux
mkdir .config
ln -s ~/dev/dotfiles/ranger ~/.config/ranger
source ~/.config/ranger

## image preview in kitty
1.pip install pillow
2. set preview_images true and setting set preview_images_method kitty
if it get the Image previews in kitty require PIL (pillow)" error. 
I noticed that ranger would use the system version of python (from /usr/bin/python) instead of the version
installed by brew (in /usr/local/bin/python). To fix this I had to edit ranger.py and change:

