
# install tmux
brew install tmux


# install oh-my-tmux
$ cd
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
$ cp .tmux/.tmux.conf.local .

# change .tmux.conf
##### my changes #########
bind-key x kill-pane
set -g prefix2 C-x
bind C-x send-prefix -2
##### my changes #########


