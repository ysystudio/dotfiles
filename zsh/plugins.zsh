# check the real path , for example by brew infor zinit,set the ZI_HOME 
source $ZI_HOME/zinit.zsh

# if can not load , try to zinit delete OMZP::name and re do source .zshrc

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
zinit snippet OMZP::git-prompt
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::common-aliases

# zinit ice svn
# zinit snippet OMZ::plugins/extract
