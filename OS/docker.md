从软件包安装
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
