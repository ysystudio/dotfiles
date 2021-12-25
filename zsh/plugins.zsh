# source /usr/local/opt/zinit/zinit.zsh
source /opt/homebrew/opt/zinit/zinit.zsh
#source /home/linuxbrew/.linuxbrew/opt/zinit/zinit.zsh

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
POWERLEVEL9K_INSTANT_PROMPT=off
zinit depth=1 lucid nocd for \
    romkatv/powerlevel10k

# 快速目录跳转
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

#zinit light Aloxaf/fzf-tab
zinit light paulirish/git-open
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light zdharma-continuum/fast-syntax-highlighting
# zinit light zsh-users/zsh-completions
zinit light hlissner/zsh-autopair
zinit light supercrabtree/k
zinit light agkozak/zsh-z


# 加载 OMZ 框架及部分插
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/clipboard.zsh
# zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZP::cp
zinit snippet OMZP::brew
zinit snippet OMZP::vi-mode
zinit snippet OMZP::sublime
zinit snippet OMZP::gitignore
zinit snippet OMZP::colored-man-pages
zinit snippet OMZP::zsh-interactive-cd
#zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::common-aliases

zinit ice svn
zinit snippet OMZ::plugins/extract
