### If the shared folder is not automatically mounted, you can manually mount it using the vmhgfs-fuse command.
Command to mount:
sudo vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other



## Installing open-vm-tools

### Ubuntu, Debian, and related
Make sure the package index is updated:
sudo apt-get update
sudo apt-get install open-vm-tools

### RHEL, Fedora and CentOS
sudo yum install open-vm-tools

### SLE and OpenSuSE
zypper install open-vm-tools


## vmware 设置好共享目录后，还缺少一个重要步骤：挂载操作具体命令如下：

$ sudo mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other
/mnt/hgfs/ 是挂载点，我们也可以修改为其它挂载点，-o allow_other 表示普通用户也能访问共享目录。


查看共享文件夹情况
vmware-hgfsclient

三、创建挂载目录
在 /mnt 下创建一个目录，用于挂载共享文件夹
1
# 创建hgfs目录
2
mkdir /mnt/hgfs
3
# 查看目录的创建情况
4
ls -l /mnt

四、挂载共享目录
sudo mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other

五、卸载共享目录
如果后续不想使用共享文件，可以通过如下命令卸载共享目录
umount /mnt/hgfs

六、自动挂载共享目录
手动挂载共享目录存在一个弊端，就是每次重启都要重新挂载一次，因此建议设置自动挂载，让虚拟机系统每次启动完成，自动挂载虚拟机已经设置的共享目录。
（1）vi 打开 /etc/fstab 文件，添加如下内容
echo '.host:/ /mnt/hgfs fuse.vmhgfs-fuse allow_other,defaults 0 0' >> /etc/fstab
（2）设置指令立即生效
完成（1）的操作后，输入如下命令，使其立即生效。
mount -a
（3）测试自动挂载
重启CentOS，查看挂载目录，测试自动挂载是否生效。
1
# 重启CentOS
2
reboot


