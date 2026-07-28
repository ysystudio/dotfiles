# 全套文件汇总，直接逐个复制保存到项目根目录

> 文件清单：
>
> 1. `.clang-format`
> 2. `.clangd`
> 3. `.clang-tidy`
> 4. `README.md`
> 5. `format.sh`
> 6. `format.ps1`
> 7. `format.bat`
> 8. 补充 .gitignore 片段

---

## 1 README.md

```markdown
# C++ 开发环境规范（clangd + clang-format + clang-tidy）
本项目统一使用 LLVM 工具链进行代码格式化、静态检查与代码补全。
配套配置文件全部放置在项目根目录：
- `.clang-format`：代码排版规则
- `.clangd`：clangd LSP（编辑器语法提示、跳转、诊断）
- `.clang-tidy`：静态代码检查规则

## 环境要求
1. clangd 版本 ≥ 14（推荐 17+）
2. clang-format / clang-tidy 版本尽量与 clangd 保持一致
3. CMake 项目需要开启编译命令数据库

## 1 CMake 启用 compile_commands.json
顶层 CMakeLists.txt 添加：
```cmake
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "Generate compile_commands.json for clangd")
```

构建完成后，将 `build/compile_commands.json` 软链接到项目根目录

```bash
# Linux/macOS
ln -s build/compile_commands.json ./compile_commands.json

# Windows(PowerShell)
New-Item -ItemType SymbolicLink -Path compile_commands.json -Target build\compile_commands.json
```

## 2 编辑器推荐配置

### VSCode

插件：`clangd`（llvm官方插件）

> ⚠️ **禁用微软官方 C/C++ 插件格式化，避免冲突**
> settings.json

```json
{
    "C_Cpp.formatting": "Disabled",
    "[cpp]": {
        "editor.defaultFormatter": "llvm-vs-code-extensions.vscode-clangd",
        "editor.formatOnSave": true
    },
    "[c]": {
        "editor.defaultFormatter": "llvm-vs-code-extensions.vscode-clangd",
        "editor.formatOnSave": true
    },
    "clangd.arguments": [
        "--all-scopes-completion",
        "--background-index",
        "--header-insertion=iwyu",
        "--malloc-trim"
    ]
}
```

### Neovim (nvim-lspconfig)

仅启用 clangd，不要同时挂载 ccls / cpptools。

```lua
require('lspconfig')['clangd'].setup({
    cmd = {"clangd"},
    settings = {},
})
```

## 3 使用说明

### 格式化

编辑器保存自动格式化；也可使用脚本批量处理

```bash
# Linux/macOS
./format.sh

# Windows PowerShell
.\format.ps1
```

命令行手动批量格式化

```bash
clang-format -i src/**/*.cpp src/**/*.h src/**/*.hpp
```

### 静态检查

编辑器实时提示；CI批量检查

```bash
clang-tidy src/**/*.cpp
```

## 4 局部临时关闭规则

单行屏蔽tidy：

```cpp
auto val = (int)raw_data; // NOLINT(cppcoreguidelines-pro-type-cstyle-cast)
```

整块tidy跳过

```cpp
// NOLINTBEGIN
legacy_code();
// NOLINTEND
```

跳过格式化

```cpp
// clang-format off
int   a   =  1;
// clang-format on
```

## 5 常见问题

1. 修改配置不生效 → 重启 clangd language server
2. 头文件无法跳转 → 检查 compile_commands.json
3. 大量第三方头文件告警 → 第三方代码放入 thirdparty/
4. Windows 创建软链接失败 → 使用管理员终端

## 6 团队约定

1. 提交代码前避免新增严重 tidy 告警
2. 根目录三套规范文件统一评审后修改，禁止私自改动
3. 减少 NOLINT / clang-format off，优先修复代码

```

## 5）format.sh
```bash
#!/bin/bash
find src -type f \( -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) | xargs clang-format -i
echo "All source files formatted finished."
```

授权：`chmod +x format.sh`

## 6）format.ps1

```powershell
# format.ps1
$files = Get-ChildItem -Path ./src -Recurse -Include *.h,*.hpp,*.cpp

if ($null -eq $files) {
    Write-Host "未找到任何源码文件"
    exit
}

foreach ($f in $files) {
    clang-format -i $f.FullName
}
Write-Host "格式化完成！"
```

## 7）format.bat

```batch
@echo off
echo Start format source files...
for /r src %%f in (*.h,*.hpp,*.cpp) do clang-format -i "%%f"
echo Format finished.
pause
```

## 附加：追加到 .gitignore

复制到项目已有 `.gitignore`

```gitignore
# clangd cache
.clangd_cache/

# build dir
build/
out/
cmake-build-*/
cmake-build-debug/
cmake-build-release/
```

---

# 使用提示

1. Windows 创建无后缀文件（`.clang-format` `.clangd`）：记事本保存时文件名两侧加引号 `".clangd"`
2. VSCode 重载 clangd：Ctrl+Shift+P → `clangd: Restart language server`
3. 如果项目使用 C++20，直接修改 `.clangd` 和 `.clang-tidy` 里 `c++17` → `c++20`
