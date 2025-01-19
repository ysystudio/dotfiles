# 安装要求：
WezTerm
JetBrainsMono Nerd Font

# 步骤：
## 在 Windows 和 Unix 系统上
git clone https://github.com/KevinSilvester/wezterm-config.git ~/.config/wezterm
完成！！！🎉🎉
 
# ---------------- config tasks ---------------------------------------------
>on linux or macos
unlink ~/.vim/tasks.ini
ln -s ~/dev/dotfiles/lvim/tasks.ini ~/.vim/tasks.ini

> on windows
mkdir  "%USERPROFILE%/.vim
mklink /h  "%USERPROFILE%/.vim/tasks.ini" "%USERPROFILE%/dev/dotfiles/lvim/tasks.ini"