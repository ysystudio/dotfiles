## 配置 VSCode 调试的环境变量（核心）
修改launch.json，给调试进程显式配置LD_LIBRARY_PATH，这是调试模式生效的关键：
打开 VSCode 的「运行和调试」面板（Ctrl+Shift+D）；
找到当前使用的调试配置（比如「Python: 当前文件」），点击「编辑 launch.json」；
在配置中添加env字段，指定动态库路径（务必替换成你的实际路径）：
json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: 当前文件",
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "console": "integratedTerminal",  // 关键：用集成终端运行，便于排查
            "justMyCode": false,
            // 核心配置：添加LD_LIBRARY_PATH
            "env": {
                "LD_LIBRARY_PATH": "/path/to/your/lib:/path/to/other/lib:$LD_LIBRARY_PATH"
            },
            // 可选：若库是32位，需指定Python解释器为32位
            "python": "/usr/bin/python3.8"
        }
    ]
}

## 修改 VSCode 全局环境变量
如果多个项目都需要这个路径，可配置 VSCode 的全局环境变量，让所有调试 / 终端会话都生效：
打开 VSCode 设置（Ctrl+,）；
搜索「terminal.integrated.env.linux」，点击「在 settings.json 中编辑」；
添加以下配置：
json
{
    "terminal.integrated.env.linux": {
        "LD_LIBRARY_PATH": "/path/to/your/lib:$LD_LIBRARY_PATH"
    }
}