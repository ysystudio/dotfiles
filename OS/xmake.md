#检测安装的vc编译器
xmake l detect.sdks.find_vstudio

#切换编译器
xmake f  --vs=2019 -vD

#切换2019下装的其他版本的编译器，还没有验证成功
xmake f --vs_toolset=14.2 --vs=2019 -vD

#检查或切换前清空一下缓存
xmake g -c
xmake f -c