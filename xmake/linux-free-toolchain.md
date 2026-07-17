我给你一套**在 Windows + MSYS2 下交叉编译 Linux 程序/动态库，能在几乎所有 Linux 发行版通用、不缺依赖**的最终方案，一步到位解决 `libc.so.6`、`libstdc++.so` 版本过低问题。

# 核心思路（一句话）
**用最老的兼容 glibc + 静态链接 libstdc++ + 不依赖系统新库**  
编译出来的.so/.out 能跑在：
- CentOS 7 / 8
- Ubuntu 16.04 ~ 24.04
- Debian 9 ~ 12
- 各种嵌入式 Linux、云服务器

---

# 一、最关键：选择 **兼容老 glibc** 的交叉编译器
MSYS2 里有两种交叉编译器：

### 1）不推荐（会导致高版本 glibc 依赖）
```
mingw-w64-x86_64-linux-gnu-gcc
```
它的 **glibc 版本很高**，编译出来的程序在老 Linux 上会报：
```
version 'GLIBC_2.3x' not found
```

### 2）✅ 强烈推荐（兼容老系统）
```
mingw-w64-x86_64-linux-gnu-alt-gcc
```
这个是 **低版本 glibc（2.17 级别）**，能兼容 **CentOS 7 及以上所有 Linux**。

## 安装命令（MSYS2 里执行）
```bash
pacman -S mingw-w64-x86_64-linux-gnu-alt-gcc
```

工具路径：
```
D:\msys64\mingw64\bin\x86_64-linux-gnu-alt-g++.exe
D:\msys64\mingw64\bin\x86_64-linux-gnu-alt-gcc.exe
```

---

# 二、编译必须加的 4 个参数（保证通用）
## C/C++ 编译flag
```
-fPIC -O2 -D_FORTIFY_SOURCE=2
```

## 链接flag（最关键）
```
-static-libstdc++ -static-libgcc
```

作用：
- **不依赖系统 libstdc++.so**
- **不依赖系统 libgcc_s.so**
- 只依赖最底层、最稳定的 **glibc**

---

# 三、xmake.lua 最终通用模板（直接复制）
```lua
target("mylib")
    set_kind("shared")
    add_files("src/*.cpp")

    set_plat("linux")
    set_arch("x86_64")

    -- ✅ 低版本 glibc 交叉编译器（兼容所有Linux）
    set_toolchains("gcc", {
        cc  = "D:\\msys64\\mingw64\\bin\\x86_64-linux-gnu-alt-gcc.exe",
        cxx = "D:\\msys64\\mingw64\\bin\\x86_64-linux-gnu-alt-g++.exe",
        ld  = "D:\\msys64\\mingw64\\bin\\x86_64-linux-gnu-alt-ld.exe",
        ar  = "D:\\msys64\\mingw64\\bin\\x86_64-linux-gnu-alt-ar.exe"
    })

    -- 编译选项
    add_cxxflags("-fPIC", "-O2")
    add_ldflags("-shared")

    -- ✅ 静态链接 C++ 标准库（不依赖系统版本）
    add_ldflags("-static-libstdc++", "-static-libgcc")
```

---

# 四、如何验证你的库是否“通用安全”
把 `.so` 放到任意 Linux 上执行：
```bash
ldd your.so
```

### 理想输出（只依赖最基础库）
```
linux-vdso.so.1
libc.so.6 => /lib64/libc.so.6
/lib64/ld-linux-x86-64.so.2
```
**没有 libstdc++.so、没有 libgcc_s.so** → 完美通用。

---

# 五、最强终极方案：完全静态库（无任何依赖）
如果你想 **100% 不依赖任何系统库**：

```lua
set_kind("static")
add_cxxflags("-fPIC")
```
编译成 `.a`，让对方链接时自己决定动态/静态。

---

# 六、最简总结（你只要记住这 3 条）
1. **交叉编译器用 `alt-` 版本**：`x86_64-linux-gnu-alt-g++`
2. **链接必须加**：`-static-libstdc++ -static-libgcc`
3. **不要用普通 linux-gnu 编译器**，否则会依赖高版本 glibc

这样编译出来的 Linux 动态库，**能在任何 Linux 发行版运行**。

需要我帮你把你的 **xmake.lua 改成最终可直接编译的通用版**吗？我可以直接帮你改好。