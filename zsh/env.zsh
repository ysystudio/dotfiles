export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:$HOME/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin

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

