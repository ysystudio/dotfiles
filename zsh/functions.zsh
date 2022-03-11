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
    git config --global http.proxy $MY_PROXY
    git config --global https.proxy $MY_PROXY
    git config -l | grep proxy
}

function git_init_email (){
    git config --global user.email "ysystudio@gmail.com"
    git config --global user.name 'ysystudio'
    git config -l
}

function git_proxy_off (){
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    git config -l | grep proxy
}
function wifi_on (){
    nmcli c up "HUAWEI P40 Pro+"
    nmcli c down "Wired connection 1"
    nmcli c show

    proxy_off
    git_proxy_off

}

function wifi_off (){
    nmcli c down "HUAWEI P40 Pro+"
    nmcli c up "Wired connection 1"
    nmcli c modify "Wired connection 1" ipv4.address 10.203.105.16/24
    nmcli c modify "Wired connection 1" ipv4.method manual
    nmcli c modify "Wired connection 1" ipv4.dns 10.155.160.55
    nmcli c show

    proxy_on
    git_proxy_on
}
