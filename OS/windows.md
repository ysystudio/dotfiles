
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
choco install wget curl fzf lazygit neovim  FiraCode 
choco install microsoft-windows-terminal wsl-ubuntu-2004

```

### Clink for Cmd

` choco install clink-maintained Starship `

### Starship
>
> Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
> -- starship.lua
> load(io.popen('starship init cmd'):read("*a"))()

### deep learning
>
> winver reports that OS Of course CUDA in WSL2 will not work in Windows 10 without 21H2.

> if the nvidia graphics driver install on window, then wsl been install also, so do not 
> nee to istall graphics driver in wsl

> install cuda
```
wget https://developer.download.nvidia.com/compute/cuda/11.7.1/local_installers/cuda_11.7.1_515.65.01_linux.run
sudo sh cuda_11.7.1_515.65.01_linux.run

```

> directly install pytorch using pip 

```
pip install pytorch torchvision torchtext
```


# Required Dev Softwares

## Details

1、检查windows版本

    若要更新到 WSL 2，需要运行 Windows 10。
        对于 x64 系统：版本 1903 或更高版本，采用 内部版本 18362 或更高版本。
        对于 ARM64 系统：版本 2004 或更高版本，采用 内部版本 19041 或更高版本。

原文地址: <https://www.cnblogs.com/xiaoliangyuu/p/15506352.html>

2、需要先启用“适用于 Linux 的 Windows 子系统”可选功能，然后才能在 Windows 上安装 Linux 分发。以管理员身份打开 PowerShell 并运行：

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
3、安装 WSL 2 之前，必须启用“虚拟机平台”可选功能。 计算机需要虚拟化功能才能使用此功能。 以管理员身份打开 PowerShell 并运行：

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
4、重启计算机

5、安装wsl_update_x64.msi。下载地址: <https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi>

6、将 WSL 2 设置为默认版本

wsl --set-default-version 2

7、下载发行版，可以参考 下载发行版，这里下载的是 Ubuntu 20.04
choco install  wsl-ubuntu-2004 20.4.0.20220127

8、将下载的文件复制到想要安装的位置,修改文件后缀名: Ubuntu_2004.2020.424.0_x64.appx -> Ubuntu_2004.2020.424.0_x64.zip

9、解压文件，并双击 ubuntu2004.exe 安装。安装成功后设置用户名密码,安装成功。可以看到在安装目录下，有一个 *.vhdx 文件，即是linux的磁盘镜像文件。

10、其他

10.1 验证wsl是否是 wsl2 的命令: wsl -l -v

10.2 启动方法。

    方法一:命令行:cmd进入命令行。输入 wsl 进入。  

    方法二:双击 ubuntu2004.exe 启动  

    方法三:开始菜单启动: 安装到开始菜单:随便找一个开始菜单应用 右键-打开所在文件夹 在start menu文件夹下添加ubuntu2004.exe的快捷方式

10.3 卸载 1、wsl --unregister <要卸载的发行版>   2、删除安装目录
Window Subsystem for Linux:

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
