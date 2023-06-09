export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/cuda-11.7/bin:$PATH
export PATH=$PATH:/opt/homebrew/Cellar/lua-language-server/3.6.18/bin
export PATH=$HOME/flutter/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH


export LD_LIBRARY_PATH=/usr/local/cuda-11.7/lib64:$LD_LIBRARY_PATH

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
export CUDA_HOME=/usr/local/cuda-11.3
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
fi  

export TERM=xterm-256color
export TERM_ITALICS=true
export RANGER_LOAD_DEFAULT_RC="false"
export EDITOR=lvim
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1 

