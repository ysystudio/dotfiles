#set the MY_PROXY to your landeng's port in .zprofile
function proxy_on () {
    export http_proxy=$MY_PROXY
    export https_proxy=$MY_PROXY
    export ftp_proxy=$MY_PROXY
    export no_proxy="127.0.0.1,localhost"

    echo -e "终端代理已开启。"
    env | grep -i proxy
}

function proxy_off (){
    export http_proxy=""
    export https_proxy=""
    export ftp_proxy=""
    export no_proxy="127.0.0.1,localhost"

    echo -e "终端代理已关闭。"
    env | grep -i proxy
}
function git_proxy_on (){
    echo -e "git 代理已开启"
    git config --global http.proxy $MY_PROXY
    git config --global https.proxy $MY_PROXY
    git config -l | grep proxy
}
function git_init_email (){
    echo -e "git 初始化邮箱"
    git config --global user.email "ysystudio@gmail.com"
    git config --global user.name 'ysystudio'
    git config -l
}
function git_proxy_off (){
    echo -e "git 代理已关闭"
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    git config -l | grep proxy
}
function npm_proxy_on (){
    echo -e "npm 代理已开启"
    npm config set proxy=$MY_PROXY
    npm config set https-proxy=$MY_PROXY
    npm config list | grep proxy
}
function npm_proxy_off (){
    echo -e "npm 代理已关闭"
    npm config delete   proxy  
    npm config delete   https-proxy
    npm config list | grep proxy
}
function yarn_proxy_on (){
    echo -e "yarn 代理已开启"
    yarn config set proxy $MY_PROXY
    yarn config set https-proxy $MY_PROXY
}
function yarn_proxy_off (){
    echo -e "yarn 代理已关闭"
    yarn config delete   proxy  
    yarn config delete   https-proxy
}
function all_proxy_on () { 
    echo -e "所有代理已开启"
    export http_proxy=$MY_PROXY
    export https_proxy=$MY_PROXY
    export ftp_proxy=$MY_PROXY
    export no_proxy="127.0.0.1,localhost"
    git config --global http.proxy $MY_PROXY
    git config --global https.proxy $MY_PROXY
    npm config set proxy=$MY_PROXY
    npm config set https-proxy=$MY_PROXY
    # yarn config set proxy $MY_PROXY
    # yarn config set https-proxy $MY_PROXY
     
}

function all_proxy_off (){
    echo -e "所有代理已关闭"
    export http_proxy=""
    export https_proxy=""
    export ftp_proxy=""
    export no_proxy="127.0.0.1,localhost"
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    npm config delete   proxy  
    npm config delete   https-proxy
    # yarn config delete   proxy  
    # yarn config delete   https-proxy
   
}


function wifi_on (){
    nmcli c up "HUAWEI P40 Pro+"
    nmcli c down "Wired connection 1"
    nmcli c show

    all_proxy_on
}

function wifi_off (){
    nmcli c down "HUAWEI P40 Pro+"
    nmcli c up "Wired connection 1"
    nmcli c modify "Wired connection 1" ipv4.address 10.203.105.16/24
    nmcli c modify "Wired connection 1" ipv4.method manual
    nmcli c modify "Wired connection 1" ipv4.dns 10.155.160.55
    nmcli c show

    all_proxy_off
}



# function brew_disable() {
# 	export PATH=${PATH##*"/.linuxbrew/bin:"}
# 	export PATH=${PATH##*"/.linuxbrew/sbin:"}
# 	export MANPATH=${MANPATH##*"/.linuxbrew/share/man:"}
# 	export INFOPATH=${INFOPATH##*"/.linuxbrew/share/info:"}
# }

# function brew_enable() {
# 	BREW='/home/linuxbrew/.linuxbrew'
# 	brew_disable
# 	export PATH="$BREW/bin:$BREW/sbin:$PATH"
# 	export MANPATH="$BREW/share/man:$MANPATH"
# 	export INFOPATH="$BREW/share/info:$INFOPATH"
# 	export HOMEBREW_NO_AUTO_UPDATE=1
# }

# function brew() {
#     PATH="/home/linuxbrew/.linuxbrew/bin:$PATH" /home/linuxbrew/.linuxbrew/bin/brew "$@"
# }

