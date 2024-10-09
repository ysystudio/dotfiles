## python解决ssl certificate problem unable to get local issuer certificate问题
pip install pip-system-certs
## pip config file
windows: "%USERPROFILE%/AppData/Roaming/pip/pip.ini
linux/mac: ~/.pip/pip.ini
"""
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host =  pypi.douban.com/simple
		mirrors.aliyun.com
               pypi.python.org
               pypi.org
               files.pythonhosted.org
"""
## conda config file
~/.condarc

"""
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge
#  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch
#  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
#  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
#  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/msys2
custom_channels:
  conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch-lts: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  deepmodeling: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/
"""
