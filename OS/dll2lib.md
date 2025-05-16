## 由dll导出lib
Visual C++ 开发工具提供了两个命令行工具，一个是dumpbin.exe,另一个是lib.exe。利用这两个工具即可从dll导出其对应的lib。

1、导出def文件
在命令行执行：
dumpbin /exports target.dll > target.def

2、编辑target.def 文件，使之格式与.def文件格式一致 。比如：
EXPORTS
fn @1
fn @2
3、导出lib文件
在命令行执行
lib /def:target.def /machine:64 /out:target.lib


注意：如果你的目标平台是 32 位，请将 /machine:x64 替换为 /machine:x86。
