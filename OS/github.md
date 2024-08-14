443问题解决方法： Failed to connect to github.com port 443: Timed out

$ git config --global https.proxy
$ git config --global --unset https.proxy

$ git push -u origin master
