#检测安装的vc编译器
xmake l detect.sdks.find_vstudio

#切换编译器
xmake f  --vs=2019 -vD

#切换2019下装的其他版本的编译器，还没有验证成功
xmake f --vs_toolset=14.2 --vs=2019 -vD

#检查或切换前清空一下缓存
xmake g -c
xmake f -c

#################### xmake and compiler##############################
#vc++ compiler installer, you can change the verison by the last four number, for example: 2017
https://learn.microsoft.com/en-us/visualstudio/install/create-an-offline-installation-of-visual-studio?view=vs-2022
#mingw on windows, add */mingw64/bin to system PATH
https://www.mingw-w64.org/downloads/
#ps install script

Invoke-Expression (Invoke-Webrequest 'https://xmake.io/psget.text' -UseBasicParsing).Content
#use vscode "Xmake:UpdateIntellisense" to generate compile_command.json under .vscode 

