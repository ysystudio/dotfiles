function proxy_on () {
    PORT="49473"
    if [ -n "$1" ]
    then
      PORT="$1"
    fi

    export HTTP_PROXY=http://127.0.0.1:$PORT
    export HTTPS_PROXY=http://127.0.0.1:$PORT
    echo -e "终端代理已开启。"
    env | grep -i proxy 
}

function proxy_off (){
    export HTTP_PROXY=""
    export HTTPS_PROXY=""
    echo -e "终端代理已关闭。"
    env | grep -i proxy

}

function git_proxy_on (){
    PORT="49473"
    if [ -n "$1" ]
    then
      PORT="$1"
    fi
    git config --global http.proxy http://127.0.0.1:$PORT
    git config --global https.proxy https://127.0.0.1:$PORT
    env | grep -i proxy

}

function git_proxy_off (){
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    env | grep -i proxy

}
function wifi_on (){
    nmcli c up "HUAWEI P40 Pro+"
    nmcli c down "Wired connection 1"
    nmcli c show 

    export http_proxy=""
    export https_proxy=""
    export ftp_proxy=""
    export no_proxy="127.0.0.1,localhost"
    export HTTP_PROXY=""
    export HTTPS_PROXY=""
    export FTP_PROXY=""
    export NO_PROXY="127.0.0.1,localhost"

    echo -e "终端代理已关闭。"
    env | grep -i proxy

}

function wifi_off (){
    nmcli c down "HUAWEI P40 Pro+"
    nmcli c up "Wired connection 1"
    nmcli c modify "Wired connection 1" ipv4.address 10.203.105.16/24
    nmcli c modify "Wired connection 1" ipv4.method manual
    nmcli c modify "Wired connection 1" ipv4.dns 10.155.160.55
    nmcli c show 

    export http_proxy="http://211.144.19.13:80/"
    export https_proxy="http://211.144.19.13:80/"
    export ftp_proxy="http://211.144.19.13:80/"
    export no_proxy="127.0.0.1,localhost"
    export HTTP_PROXY="http://211.144.19.13:80/"
    export HTTPS_PROXY="http://211.144.19.13:80/"
    export FTP_PROXY="http://211.144.19.13:80/"
    export NO_PROXY="127.0.0.1,localhost"
    echo -e "终端代理已开启。"
    env | grep -i proxy
}