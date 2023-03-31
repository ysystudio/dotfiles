
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
> Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
> -- starship.lua
> load(io.popen('starship init cmd'):read("*a"))()


### deep learning
>  cuda toolkit installation for WSL
>  get the download link from https://developer.nvidia.com/cuda-toolkit-archive, 
>  if you want install other veriso
>  winver reports that OS Of course CUDA in WSL2 will not work in Windows 10 without 21H2.
```
wget https://developer.download.nvidia.com/compute/cuda/11.3.1/local_installers/cuda_11.3.1_465.19.01_linux.run
sudo sh cuda_11.3.1_465.19.01_linux.run

```
### update env 
```
export CUDA_HOME=/usr/local/cuda-11.3
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

```
### tensorflow 2 setup
` pip install tensorflow `

> 必须将 CUDA®、CUPTI 和 cuDNN 安装目录添加到 %PATH% 环境变量中。
```
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\bin;%PATH%
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\extras\CUPTI\lib64;%PATH%
SET PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.3\include;%PATH%
SET PATH=C:\tools\cuDnn11.3\bin;%PATH%

```

# Required Dev Softwares

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

Other Dev tool(chain):

- JDK: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- Android Studio: https://developer.android.com/studio
- SourceTree: https://www.sourcetreeapp.com, good to have

