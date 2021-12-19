function proxy_on() {
    PORT="49473"
    if [ -n "$1" ]
    then
      PORT="$1"
    fi

    export HTTP_PROXY=http://127.0.0.1:$PORT
    export HTTPS_PROXY=http://127.0.0.1:$PORT
    echo -e "终端代理已开启。"
}

function proxy_off (){
    export HTTP_PROXY=""
    export HTTPS_PROXY=""
    echo -e "终端代理已关闭。"

}