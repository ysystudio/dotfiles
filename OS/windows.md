
# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS

## package management tools install

### install choco

> cmd with admin

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

```

> powershell

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

```

> test choco

```
choco -v
choco upgrade chocolatey

```

### install scoop
>
> choco only source is slow in china, scoop is better
> powershell to install

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

```

### install usefull tool

```
choco install wget curl fzf lazygit neovim  FiraCode oh-my-posh 
choco install microsoft-windows-terminal wsl-ubuntu-2004

```


### deep learning
如果windows主系统中已安装了nvidia驱动，ubuntu中不要再额外安装了


## wsl2 安装

安装 wsl2 子系统的步骤如下：

1. 为 windows 启用 linux 子系统，命令行输入 dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
2. 启用虚拟机功能，命令行输入 dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
3. 重启。必须重启使启用的功能被应用。
4. 下载 linux 内核更新包并安装: https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
5. 设置默认版本wsl --set-default-version 2. 在 Microsoft Store 中搜索 ubuntu20.04 并安装。

6. 打包系统。在命令行输入 wsl --export Ubuntu-20.04 D:/Ubuntu-20.04.tar
7. 注销系统。在命令行输入 wsl --unregister Ubuntu-20.04 
8. 导入系统。在命令行输入 
9. wsl --import Ubuntu-20.04 D:\Ubuntu-20.04-wsl2 D:\ubuntu-20.04.tar   
   wsl --import Ubuntu-24.04 C:\WSL\Ubuntu2404 --vhd C:\Ubuntu-24.04-wsl2\ext4.vhdx --version 2
   此方式会将原 ext4.vhdx 复制到 <存储目录> 下，适合想保留原 VHD 备份、使用副本的场景
   wsl --import-in-place Ubuntu-24.04 C:\Ubuntu-24.04-wsl2\ext4.vhdx
   直接将指定的 ext4.vhdx 注册为 WSL 分发版，不会复制 VHD 文件，仅创建关联配置
10.  vscode 联动，在 vscode 中打开 wsl2 文件夹：先打开 wsl2，输入目标路径，然后输入 code .。过程中会自动提示安装 vscode 的 wsl 扩展，安装即可。

11.  设置默认登录用户： 用 wsl.conf 进行配置，进入 wsl ，编辑 wsl.conf 配置文件：
sudo v /etc/wsl.conf
添加如下内容：
[user]
default = shark
12.  重启wsl, wsl --shutdown


## NVIDIA driver & SDKs

- NVIDIA driver: <https://www.nvidia.com/Download/index.aspx>
- CUDA <https://developer.nvidia.com/cuda-downloads>
- cuDNN: <https://developer.nvidia.com/cudnn>
- cuBLAS, cuSOLVER, cuFFT...: <https://developer.nvidia.com/hpc-sdk>
- DALI: <https://github.com/NVIDIA/dali>
- Nsight: <https://developer.nvidia.com/nsight-visual-studio-edition>
- CUDA WSL2 support (Need Windows Insider Program):
  - This looks to risky, maybe not (?).
  - <https://developer.nvidia.com/cuda/wsl/download>
  - <https://docs.nvidia.com/cuda/wsl-user-guide/index.html>

Other Dev tool(chain):

- JDK: <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>
- Android Studio: <https://developer.android.com/studio>
- SourceTree: <https://www.sourcetreeapp.com>, good to have
