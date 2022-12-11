alias c='clear'
alias py="python"
alias ipy='ipython'
alias lg='lazygit'
alias ra='ranger'
alias v='lvim'
alias s='sublime_text'
alias l='ls -al' 

#set the MY_PROXY to your landeng's port in .zprofile
export MY_PROXY=http://10.160.84.32:8080
function gi() {
  curl -L -s https://www.gitignore.io/api/\$@ ;
}

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
function git_init_email_thales (){
    echo -e "git 初始化邮箱"
    git config --global user.name "Yu Shark"
    git config --global user.email "shark.yu@thalesgroup.com"
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

function codna_proxy_on (){
    echo -e "conda 代理已开启"
    conda config --set proxy_servers.http $MY_PROXY
    conda config --set proxy_servers.https $MY_PROXY
} 

function conda_proxy_off (){
    echo -e "conda 代理已关闭"
    conda config --remove-key proxy_servers.http
    conda config --remove-key proxy_servers.https
}

function pip_proxy_on (){
    echo -e "pip 代理已开启"
    pip config set global.proxy $MY_PROXY
} 

function conda_proxy_off (){
    echo -e "pip 代理已关闭"
    pip config unset global.proxy
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
    pip config set global.proxy $MY_PROXY
    conda config --set proxy_servers.http $MY_PROXY
    conda config --set proxy_servers.https $MY_PROXY
    yarn config set proxy $MY_PROXY
    yarn config set https-proxy $MY_PROXY
     
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
    pip config unset global.proxy
    conda config --remove-key proxy_servers.http
    conda config --remove-key proxy_servers.https
    yarn config delete   proxy 
    yarn config delete   https-proxy
   
}

function all_app_proxy_on () { 
    echo -e "所有app代理已开启"
    git config --global http.proxy $MY_PROXY
    git config --global https.proxy $MY_PROXY
    npm config set proxy=$MY_PROXY
    npm config set https-proxy=$MY_PROXY
    pip config set global.proxy $MY_PROXY
    conda config --set proxy_servers.http $MY_PROXY
    conda config --set proxy_servers.https $MY_PROXY
    yarn config set proxy $MY_PROXY
    yarn config set https-proxy $MY_PROXY
     
}

function all_app_proxy_off (){
    echo -e "所有app代理已关闭"
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    npm config delete   proxy  
    npm config delete   https-proxy
    pip config unset global.proxy
    conda config --remove-key proxy_servers.http
    conda config --remove-key proxy_servers.https
    yarn config delete   proxy 
    yarn config delete   https-proxy
   
}

