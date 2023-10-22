
# install tmux
brew install tmux

# install oh-my-tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# change .tmux.conf
##### my changes #########
set -g default-command "/bin/zsh" #set as the same shell with iterm2 to make the Path of Env no change

bind-key x kill-pane
set -g prefix2 C-x
bind C-x send-prefix -2
##### my changes #########

#start tmux with iterm2, add the command in iterm2:
settings -> profiles -> command -> Send text as start : tmux a -t coding || tmux new -s coding
