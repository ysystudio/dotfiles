alias c='clear'
alias cdiff='colordiff'
alias gc='git clone'
alias py="python"
alias ipy='ipython'
alias lg='lazygit'
alias ra='ranger'
alias sra='sudo -E ranger'
alias sudo='sudo -E'
alias vim='lvim'
alias v='lvim'
alias jo='joshuto'
alias tnew='tmux new -s '
alias tls='tmux ls'
alias tatt='tmux attach -t '
# alias lo='lsof -p $(fps) +w'

if [[ $OSTYPE == darwin* ]]; then
  alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
  # alias rm='rmtrash'
  alias sl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
  alias l='exa -la'
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias ni='nmcli'
  alias l='lsd -la'
fi



 
