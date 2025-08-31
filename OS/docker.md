### 软件包安装
如果您无法使用 Docker 的 apt 仓库安装 Docker Engine，您可以下载适用于您发行版的 deb 文件并手动安装。每次要升级 Docker Engine 时，都需要下载新的文件。

前往https://download.docker.com/linux/ubuntu/dists/。

在列表中选择您的 Ubuntu 版本。

前往 pool/stable/ 并选择适用的架构 (amd64, armhf, arm64, 或 s390x)。

下载以下适用于 Docker Engine、CLI、containerd 和 Docker Compose 软件包的 deb 文件

containerd.io_<version>_<arch>.deb
docker-ce_<version>_<arch>.deb
docker-ce-cli_<version>_<arch>.deb
docker-buildx-plugin_<version>_<arch>.deb
docker-compose-plugin_<version>_<arch>.deb
安装 .deb 软件包。更新以下示例中的路径为您下载 Docker 软件包的位置。


 sudo dpkg -i ./containerd.io_<version>_<arch>.deb \
  ./docker-ce_<version>_<arch>.deb \
  ./docker-ce-cli_<version>_<arch>.deb \
  ./docker-buildx-plugin_<version>_<arch>.deb \
  ./docker-compose-plugin_<version>_<arch>.deb
Docker daemon 会自动启动。

通过运行 hello-world 镜像验证安装是否成功


 sudo service docker start
 sudo docker run hello-world
此命令下载一个测试镜像并在容器中运行它。容器运行时，会打印一条确认消息并退出。

您现在已成功安装并启动 Docker Engine。


### 使用 export 和 import
1，查看本机的容器
首先我们使用 docker ps -a 命令查看本机所有的容器。

2，导出镜像
使用 docker export 命令根据容器ID将镜像导出成一个文件。
docker export f299f501774c > hangger_server.tar

3，导入镜像
使用 docker import 命令则可将这个镜像文件导入进来。
docker import - new_hangger_server < hangger_server.tar

### 
执行 docker images 命令可以看到镜像确实已经导入进来了。
保存镜像
（1）下面使用 docker save 命令根据Image ID 将镜像保存成一个文件。
docker save 0fdf2b4c26d3 > hangge_server.tar

（2）我们还可以同时将多个 image 打包成一个文件，比如下面将镜像库中的 postgres 和 mongo 打包：
docker save -o images.tar postgres:9.6 mongo:3.4

 (3)，载入镜像
使用 docker load 命令则可将这个镜像文件载入进来。
docker load < hangge_server.tar

应用场景不同:save 整个linux系统
docker export 的应用场景：主要用来制作基础镜像，比如我们从一个 ubuntu 镜像启动一个容器，然后安装一些软件和进行一些设置后，使用 docker export 保存为一个基础镜像。然后，把这个镜像分发给其他人使用，比如作为基础的开发环境。
docker save 的应用场景：如果我们的应用是使用 docker-compose.yml 编排的多个镜像组合，但我们要部署的客户服务器并不能连外网。这时就可以使用 docker save 将用到的镜像打个包，然后拷贝到客户服务器上使用 docker load 载入。

### import image samples
 docker import - api6.5 < /mnt/e/software/docker/docker-image/image_APIv65.tar
 docker run -it -v /home/shark:/home/docker  openvino/ubuntu18_dev:2019_R3.1 /bin/bash

- in docker image to run openvin convert
python3 mo_onnx.py --input_model /home/docker/yourmodel.onnx  --output_dir /home/docker/onnx/
- back to host to covert xml to h file
xxd -i .xml .h


# stop and delete
docker container prune -f: 删除所有停止的容器
docker image prune -f -a : 删除所有不使用的镜像


1.关闭docker开机自启动
# systemctl disable docker.socket
# systemctl disable docker
 
 
2.打开docker开机启动
# systemctl enable docker.socket
# systemctl enable docker
 
 
查询docker当前状态
# sudo systemctl list-unit-files | grep enable|grep docker
 
 
3.打开/关闭docker服务
# sudo service docker start
# sudo service docker stop
 
 
Or
# systemctl stop docker
