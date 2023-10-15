
# install tmux
brew install tmux


# install oh-my-tmux
$ cd
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
$ cp .tmux/.tmux.conf.local .

> change the prifix to C-x

set -g prefix2 C-x                       # GNU-Screen compatible prefix
bind C-x send-prefix -2


