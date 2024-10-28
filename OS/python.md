## python解决ssl certificate problem unable to get local issuer certificate问题
pip install pip-system-certs


## pip config file typical location , use pip -v config list for all the option locations
windows: "%USERPROFILE%/pip/pip.ini
linux/mac: ~/.pip/pip.ini

"""
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
index-url = https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple/
#proxy = http://10.160.84.32:8080
[install]
trusted-host =  pypi.douban.com/simple
                mirrors.aliyun.com
                mirrors.tuna.tsinghua.edu.cn
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

### pytorch与numpy之间的对应版本
PyTorch	NumPy 
2.0.x	1.21.x - 1.24.x
1.13.x	1.20.x - 1.23.x
1.12.x	1.19.x - 1.21.x
1.11.x	1.19.x - 1.21.x
1.10.x	1.19.x - 1.21.x
1.9.x	1.17.x - 1.21.x
1.8.x	1.16.x - 1.20.x
1.7.x	1.16.x - 1.19.x
1.6.x	1.15.x - 1.18.x
1.5.x	1.14.x - 1.17.x

### 下表列出了Python 3各个版本的主要特性对比：

版本 主要特性

3.0
print函数、整数除法、Unicode支持
3.1
垃圾回收、多线程、新的库和模块
3.2
concurrent.futures模块、yield from语法、functools.lru_cache装饰器
3.3
yield表达式、venv模块、新的语法特性
3.4
asyncio库、enum模块、pathlib模块
3.5
async/await语法、类型提示、新的标准库模块
3.6
字典排序、f-strings、异常链式处理
3.7
数据类、异步生成器、上下文变量绑定
3.8
Walrus运算符、f-strings改进、异步迭代器和异步生成器改进
3.9
字典合并运算符、类型提示改进、新的标准库模块
3.10
匹配模式、结构化的异常上下文、zoneinfo模块改进

### anaconda3版本       基础python版本

Anaconda3-2024.02-1	Python 3.11.7
Anaconda3-2023.09-0	Python 3.11.5
Anaconda3-2023.07-2 Python 3.11.4
Anaconda3-2023.07-1 Python 3.11.3
Anaconda3-2023.07-0 Python 3.11.3
Anaconda3-2023.03-1 Python 3.10.9
Anaconda3-2023.03-0 Python 3.10.9
Anaconda3-2022.10 Python 3.9.13
Anaconda3-2022.05 Python 3.9.12
Anaconda3-2021.11 Python 3.9.7
Anaconda3-2021.05 Python 3.8.8
Anaconda3-2021.04 Python 3.8.8
Anaconda3-2020.11 Python 3.8.5
Anaconda3-2020.07 Python 3.8.3
Anaconda3-2020.02 Python 3.7.6
