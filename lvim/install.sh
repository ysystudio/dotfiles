
# config.lua
# require("user-keymaps")
# require("user-options")
# require("user-plugins")

# add the link
unlink ~/.config/lvim
ln -s ~/dev/dotfiles/lvim ~/.config/lvim

# add the link for Asynctasks
unlink ~/.vim/tasks.ini
ln -s ~/dev/dotfiles/lvim/tasks.ini ~/.vim/tasks.ini


