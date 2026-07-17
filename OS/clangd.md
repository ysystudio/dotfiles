
Makefile 是独立的 g++ 构建，不会自动生成 clangd 需要的数据库。

最直接的做法是在 Ubuntu/WSL 里用 Bear 包一层 make：

1. 安装 clangd 和 Bear
   sudo apt update
   sudo apt install clangd bear
2. 进入子目录
   cd /mnt/c/1code/iris/Omni-Irex10/implementation/Driver/IREX10_Encoder/ubuntu20_64
3. 生成编译数据库
   bear -- make
4. 这一步完成后，当前目录下应该会有
   compile_commands.json
5. 然后在 VS Code 里打开 [IREX10_Encoder.cpp**:1**](<vscode-file://vscode-app/c:/Program%20Files/Microsoft%20VS%20Code/125df4672b/resources/app/out/vs/code/electron-browser/workbench/workbench.html>)，执行命令面板里的
   clangd: Restart language server
