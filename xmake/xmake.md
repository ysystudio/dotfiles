# ps install script
Invoke-Expression (Invoke-Webrequest 'https://xmake.io/psget.text' -UseBasicParsing).Content

# 检测安装的vc编译器
xmake l detect.sdks.find_vstudio

# 切换编译器
xmake f  --vs=2019 -vD

# 切换2019下装的其他版本的编译器，还没有验证成功
xmake f --vs_toolset=14.2 --vs=2019 -vD

# 检查或切换前清空一下缓存
xmake g -c
xmake f -c

#################### xmake and compiler ##############################
# vc++ compiler installer, you can change the verison by the last four number, for example: 2017
<https://learn.microsoft.com/en-us/visualstudio/install/create-an-offline-installation-of-visual-studio?view=vs-2022>

# mingw on windows, add */mingw64/bin to system PATH
<https://www.mingw-w64.org/downloads/>

# use vscode "Xmake:UpdateIntellisense" to generate compile_command.json under .vscode

## 目标平台

$ xmake
!> xmake将会自动探测当前主机平台，默认自动生成对应的目标程序。

Linux
$ xmake f -p linux [-a i386|x86_64]

Android
$ xmake f -p android --ndk=~/files/android-ndk-r10e/ [-a armeabi-v7a|arm64-v8a]

如果要手动指定ndk中具体某个工具链，而不是使用默认检测的配置，可以通过--bin来设置，例如：

$ xmake f -p android --ndk=~/files/android-ndk-r10e/ -a arm64-v8a --bin=~/files/android-ndk-r10e/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64/bin
--bin主要用于设置选择编译工具的具体bin目录，这个的使用跟交叉编译中的--bin的行为是一致的。

!> 如果手动设置了bin目录，没有通过检测，可以看下是否--arch=参数没有匹配对。

iPhoneOS
$ xmake f -p iphoneos [-a armv7|armv7s|arm64|i386|x86_64]

Windows
$ xmake f -p windows [-a x86|x64]

Mingw

$ xmake f -p mingw --sdk=/usr/local/i386-mingw32-4.3.0/ [-a i386|x86_64|arm|arm64]
$ xmake
