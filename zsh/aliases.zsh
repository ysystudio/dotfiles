alias c='clear'
alias cdiff='colordiff'
alias cs='calcurse'
alias gcs='git config credential.helper store'
alias gc='git clone'
alias py="python"
alias ipy='ipython'
alias l='ls -la'
alias lg='lazygit'
alias mt='neomutt'
alias r='echo $RANGER_LEVEL'
alias pu='python -m pudb'
alias ra='ranger'
alias s='neofetch' # commond line system info tool
alias g='onefetch --text-colors 9 10 11 12 13 14' # commond line git info tool
alias sra='sudo -E ranger'
alias sudo='sudo -E'
alias vim='nvim'
alias gs='git config credential.helper store'
# alias gy='git-yolo'
# alias nb='newsboat -r'
# alias nt="sh -c 'cd $(pwd); st' > /dev/null 2>&1 &"
# alias lo='lsof -p $(fps) +w'

if [[ $OSTYPE == darwin* ]]; then
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
# alias rm='rmtrash'
alias sl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
alias ni='nmcli'
fi



