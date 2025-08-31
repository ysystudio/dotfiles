glibc 的兼容性，和 C++ 动态库的兼容性是两件事，而且这两点几乎都和 clang 没什么关系。你提到的这些问题，大部分锅是 glibc 的。

glibc 几乎很少有人需要最新版的特性，所以只要你去链最老的 glibc 就可以了，一般会推荐让你到所有目标平台中最老的那个去编译。glibc 就是唯一特殊的那个崽，
不能静态链接。 c++ 你想用新的编译器、新的库（包括 std ）是完全可以的，既可以静态链接（如果你能搞到静态库），也可以自己打包动态库
（比如 /usr/lib/myapp/libxxx.so ） 然后设置 rpath 到 $ORIGIN 之类的，后者其实就是 Windows 那种一个 exe 带一堆 dll ( vcruntime140.dll, etc) 的风格。

这两点综合起来就是，比如你需要给 Ubuntu 18.04, 20.04, ... 这些平台提供支持，那你首先准备一台 Ubuntu18.04 的环境，然后通过 toolchain ppa 之类
的东西安装或者编译一套新版的 g++/clang ，多新的都可以，只要你能在 18.04 上跑。最后用这套工具链去编译你的 app ，然后把所有依赖 (除了 glibc) 
通过静态或者动态的东西打包带走。

部署glibc 2.29 的程序到glibc 2.17 的CentOS 7 系统，通常需要采用静态链接或使用容器化技术(如Docker) 来避免版本不兼容问题。单纯地替换系统glibc 2.17 为2.29 是不推荐的，且可能导致系统不稳定甚至崩溃。
方法一：静态链接
这是最常用的方法，它将程序运行时所需的glibc 库一起打包到可执行文件中。
编译时指定静态链接:在编译程序时，使用 -static 选项。例如：
代码

    gcc your_program.c -o your_program -static
这会将glibc 库链接到可执行文件中，使得程序运行时不需要依赖系统glibc 版本。
使用静态链接的库:如果使用了外部库，也需要确保它们以静态方式链接。
缺点:静态链接会增加程序的大小，并且如果glibc 有安全更新，静态链接的程序不会自动获得更新。
方法二：使用容器化技术(Docker)
Docker 可以在隔离的环境中运行程序，从而避免了与宿主系统glibc 版本的冲突。
创建Dockerfile:编写一个Dockerfile，指定使用glibc 2.29 的基础镜像，并将你的程序添加到镜像中。
构建镜像:使用 docker build 命令构建Docker 镜像。
运行容器:使用 docker run 命令运行容器。
代码

    FROM ubuntu:20.04  # 或者其他包含 glibc 2.29 的镜像
    COPY your_program /app/
    WORKDIR /app
    CMD ["./your_program"]
代码

    docker build -t my_program_image .
    docker run my_program_image
这种方法可以确保你的程序在任何glibc 版本的系统上都能正常运行。
优点:隔离性好，方便部署，可以利用Docker 的其他特性。
缺点:需要学习Docker，增加了部署的复杂度。
方法三：升级glibc (不推荐)
不推荐直接替换CentOS 7 系统的glibc 2.17 为2.29，因为这可能会导致系统的不稳定，甚至无法启动。如果必须升级，需要仔细评估风险并做好充分的备份工作。
编译glibc 2.29:从glibc 源代码编译glibc 2.29。
替换glibc:替换系统glibc 库文件，这需要root 权限。
更新动态链接器:更新动态链接器(ld.so) 的配置。
重启系统:重启系统以使更改生效。
总结
在CentOS 7 上部署glibc 2.29 的程序，推荐使用静态链接或Docker 容器化技术。静态链接是最简单的方法，但会增加程序大小；Docker 提供了更好的隔离性和灵活性，但需要学习Docker。除非有特殊需求，不建议直接替换系统glibc 2.17。
