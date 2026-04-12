## CentOS7执行yum命令遇到“Could not resolve host: mirrorlist.centos.org； 未知的错误”如何解决

- 原因是国内网络不能访问外网。所以需要将mirrorlist.centos.org替换为国内可以访问的镜像源。
sudo curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

- 然后再清除yum缓存
yum clean all

- 然后重新生成缓存
yum makecache


## CentOS 安装开发工具包 - 这里使用组安装包，一次性安装所有开发者工具。

1 [root@bogon ~]# yum grouplist | more
2、搜索一下有哪些和 Development 有关。
[root@bogon ~]# yum grouplist | grep Development
3、我们需要的就是Development Tools这个包。
[root@bogon ~]# yum groupinstall -y "Development Tools"
会一次安装很多常用的开发包，包括gcc，g++等编译文件必须的工具。