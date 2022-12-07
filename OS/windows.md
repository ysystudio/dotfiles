
# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS

################# package management tools install#################
#install choco
#cmd with admin
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
#powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
##test choco
choco -v
choco upgrade chocolatey

#choco only source is slow in china, scoop is better
#powershell to install
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

############# install usefull tool ############################
choco install wget curl fzf lazygit neovim  FiraCode 
choco install microsoft-windows-termina lwsl-ubuntu-2004

#Clink for Cmd 
choco install clink-maintained Starship
#Starship
#Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
# -- starship.lua
load(io.popen('starship init cmd'):read("*a"))()


#################### deep learning###################################
# cuda toolkit installation for WSL
# get the download link from https://developer.nvidia.com/cuda-toolkit-archive, 
# if you want install other veriso
# winver reports that OS Of course CUDA in WSL2 will not work in Windows 10 without 21H2.
wget https://developer.download.nvidia.com/compute/cuda/11.3.1/local_installers/cuda_11.3.1_465.19.01_linux.run
sudo sh cuda_11.3.1_465.19.01_linux.run
#update env 
export CUDA_HOME=/usr/local/cuda-11.3
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

#tensorflow 2 setup
pip install tensorflow
#必须将 CUDA®、CUPTI 和 cuDNN 安装目录添加到 %PATH% 环境变量中。
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\bin;%PATH%
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\extras\CUPTI\lib64;%PATH%
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\include;%PATH%
SET PATH=C:\tools\cuDnn11.3\bin;%PATH%


# Required Dev Softwares

*If otherwise specified, all software should install the latested version at installation time.*

This setup is for the following dev environments:

- C/C++
- Go
- Python
- Nodejs

Disclaimer: There may be other softwares needed that are not listed here.

## Details

Window Subsystem for Linux:

  - `wsl --install Ubuntu-20.04` https://docs.microsoft.com/en-us/windows/wsl/install-win10
  - `wsl --set-default-version 2`  enable WSL2
  - Enable host file system access:

    ```
    # see https://askubuntu.com/questions/1115564/wsl-ubuntu-distro-how-to-solve-operation-not-permitted-on-cloning-repository 
    sudo umount /mnt/c
    sudo mount -t drvfs C: /mnt/c -o metadata
    ```

Remote Login:

- OpenSSH: https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse
- service -> SSH server enable (in system service manager)
- Tailscale: https://tailscale.com/download

NVIDIA driver & SDKs:

- NVIDIA driver: https://www.nvidia.com/Download/index.aspx
- CUDA https://developer.nvidia.com/cuda-downloads
- cuDNN: https://developer.nvidia.com/cudnn
- cuBLAS, cuSOLVER, cuFFT...: https://developer.nvidia.com/hpc-sdk
- DALI: https://github.com/NVIDIA/dali
- Nsight: https://developer.nvidia.com/nsight-visual-studio-edition
- CUDA WSL2 support (Need Windows Insider Program):
  + This looks to risky, maybe not (?).
  + https://developer.nvidia.com/cuda/wsl/download
  + https://docs.nvidia.com/cuda/wsl-user-guide/index.html

Essentials:

- Go: https://golang.org/dl/
- NodeJS: https://nodejs.org/en/download/
- Python3: https://www.python.org/downloads/
- Python3-pip:
- Docker: https://docs.docker.com/desktop/windows/install/
- Docker Compose: https://docs.docker.com/compose/install/
- Chromium (nightly, with webgpu support): https://www.google.com/intl/en/chrome/canary/
  + check success: https://webgpureport.org/
- Houdini: https://www.sidefx.com/download/
- Visual Studio Code: https://code.visualstudio.com/
- Blender: https://www.blender.org/download/
- Visual Studio Community: https://visualstudio.microsoft.com/vs/community/
  - workloads:
    + web & cloud:
      * python development
      * nodejs development
    + desktop & mobile
      * .NET desktop development
      * desktop development with C++
      * mobile development with .NET
      * mobile development with C++
    + Gaming
      * game development with unity
      * game development with C++
    + Other toolsets
      * Data science analytical applications
      * Linux development with C++
- Unity
  - 2020.3.18f1 for LTS
  - 2021.1.20f1 for Visual Scripting
- Unreal Engine
  - 4.26.x for LTS
  - 5.0.x for Nanite and Lumen system

Good to have:

- klatexformula: https://klatexformula.sourceforge.io/downloads
- typora: https://typora.io/

Other Dev tool(chain):

- choco: https://docs.chocolatey.org/en-us/choco/setup
- git
- make
- cmake
- mingw: for gcc
- llvm: for clang
- vim: good to have
- graphviz: https://graphviz.org/
- JDK: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- Android Studio: https://developer.android.com/studio
- Postman: https://www.getpostman.com/apps, good to have
- SourceTree: https://www.sourcetreeapp.com, good to have
- httpie: good to have
- vegeta: good to have
- mongodb-community: good to have
- redis: good to have

## Fonts

```
# fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh && cd .. && rm -rf fonts
```
