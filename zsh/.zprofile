# export MY_PROXY=http://10.160.84.32:8080
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export ZI_HOME=/home/linuxbrew/.linuxbrew/opt/zinit
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cogent/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/cogent/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/cogent/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/cogent/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
