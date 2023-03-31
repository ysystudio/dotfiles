

#---------------- config neovim  on windows---------------------------------
choco install neovim git make npm node rust fd ripgrep

unlink "%USERPROFILE%/AppData/Local/nvim
mklink /j  "%USERPROFILE%/AppData/Local/nvim" "%USERPROFILE%/dev/dotfiles/nvim"

unlink ~/.vim/tasks.ini
mklink /h  "%USERPROFILE%/.vim/tasks.ini" "%USERPROFILE%/dev/dotfiles/lvim/tasks.ini"




