443问题解决方法： Failed to connect to github.com port 443: Timed out

$ git config --global https.proxy
$ git config --global --unset https.proxy

$ git push -u origin master

## install gitstas
- Python (>= 2.6.0),在这个作为一个脚本进行执行
- Git (>= 1.5.2.4),这个不用介绍了吧
- Gnuplot (>= 4.0.0),进行画图的工具
安装python2: conda create -n py2 python=2.7
安装git_stats: git clone https://github.com/hoxu/gitstats.git, gitstats文件复制一份并命名为gitstats.py
安装依赖工具:scoop install gnuplot  grep coreutils
运行:python [gitstats.py路径] [git库路径(git项目根目录)] [输出结果路径]
