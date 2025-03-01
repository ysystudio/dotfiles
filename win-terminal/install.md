## Clink for Cmd
` choco install clink-maintained Starship `

## Starship
> Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
> -- starship.lua
> load(io.popen('starship init cmd'):read("*a"))()


## posh is slow, maybe multi profile loaded, use following com to check
    $PROFILE | Get-Member -Type NoteProperty


## package management tools install

### install choco
> cmd with admin
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

> powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

> test choco
choco -v
choco upgrade chocolatey

### install scoop
>
> choco only source is slow in china, scoop is better
> powershell to install
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

### install usefull tool
choco install wget curl fzf lazygit neovim  FiraCode oh-my-posh 
choco install microsoft-windows-terminal wsl-ubuntu-2004

## install gitstas
- Python (>= 2.6.0),在这个作为一个脚本进行执行
- Git (>= 1.5.2.4),这个不用介绍了吧
- Gnuplot (>= 4.0.0),进行画图的工具
安装python2: conda create -n py2 python=2.7
安装git_stats: git clone https://github.com/hoxu/gitstats.git, gitstats文件复制一份并命名为gitstats.py
安装依赖工具:scoop install gnuplot  grep coreutils
运行:python [gitstats.py路径] [git库路径(git项目根目录)] [输出结果路径]

