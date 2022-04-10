if [[ $OSTYPE == darwin21* ]]; then
export MY_PROXY=http://127.0.0.1:56136
eval "$(/opt/homebrew/bin/brew shellenv)"

# MacPorts Installer addition on 2021-12-22_at_21:38:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2021-12-22_at_21:38:56: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.

export BYOBU_PREFIX=/opt/homebrew
export ZI_HOME=/opt/homebrew/opt/zinit
export PATH="/Users/shark/miniforge3/bin:$PATH"
fi

###########################################################
###########################################################


if [[ $OSTYPE == darwin17* ]]; then
export MY_PROXY=http://127.0.0.1:49473
eval $(/usr/local/Homebrew/bin/brew shellenv) #ckbrew

# MacPorts Installer addition on 2021-12-18_at_16:16:09: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2021-12-18_at_16:16:09: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.

export ZI_HOME="/usr/local/opt/zinit"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
fi

###########################################################
###########################################################

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
export MY_PROXY=http://10.160.84.32:8080
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

fi
