# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# check the real path , for example by brew infor zinit,set the ZI_HOME 
export ZI_HOME=/opt/homebrew/opt/zinit
source $ZI_HOME/zinit.zsh

(( SOURCED_PROFILE )) && return
export SOURCED_PROFILE=1


if [[ $OSTYPE == darwin2* ]]; then
  echo $OSTYPE
  export MY_PROXY=http://127.0.0.1:56136

  eval "$(/opt/homebrew/bin/brew shellenv)"
  export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
  export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
  export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
  export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/bottles" 

  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/Users/shark/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/Users/shark/opt/anaconda3/etc/profile.d/conda.sh" ]; then
          . "/Users/shark/opt/anaconda3/etc/profile.d/conda.sh"
      else
          export PATH="/Users/shark/opt/anaconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
  
  export BYOBU_PREFIX=/opt/homebrew
  export PATH=/opt/homebrew/opt/openjdk/bin:$PATH
  export PATH=/opt/homebrew/opt/curl/bin:$PATH

  
  export PATH=$HOME/.local/bin:$PATH
  export PATH=$PATH:/opt/homebrew/Cellar/lua-language-server/3.6.18/bin

  export PATH=$HOME/flutter/bin:$PATH
  export PUB_HOSTED_URL=https://pub.flutter-io.cn
  export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn


  # >>> xmake >>>
  [[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
  # <<< xmake <<<

fi

###########################################################
###########################################################

if [[ $OSTYPE == linux* ]]; then

  export SOURCED_PROFILE=1
  echo $OSTYPE
  export MY_PROXY=http://10.160.84.32:8080


  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  # typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
  POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

  export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
  export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
  export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
  export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/bottles" 

  export ZI_HOME=/home/linuxbrew/.linuxbrew/opt/zinit
  source $ZI_HOME/zinit.zsh
  

  export CUDA_HOME=/usr/local/cuda-11.3
  export PATH=$CUDA_HOME/bin:$PATH
  export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH


  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/home/shark/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/home/shark/anaconda3/etc/profile.d/conda.sh" ]; then
          . "/home/shark/anaconda3/etc/profile.d/conda.sh"
      else
          export PATH="/home/shark/anaconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
  
  # >>> xmake >>>
  [[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
  # <<< xmake <<<
  
fi


