

## 你可能想要更改的内容：
./config/domains.lua 用于自定义 SSH/WSL 域
./config/launch.lua 用于首选 shell 及其路径

## 在 MacOS 上：
  SUPER ⇨ Super
  SUPER_REV ⇨ Super+Ctrl
## 在 Windows 和 Linux 上
  SUPER ⇨ Alt
  SUPER_REV ⇨ Alt+Ctrl
  为了避免在不同操作系统之间切换时的混淆，并避免与操作系统内置的快捷键冲突。 在所有平台上：LEADER ⇨ SUPER_REV+Space

## 按键	操作
  F1	ActivateCopyMode
  F2	ActivateCommandPalette
  F3	ShowLauncher
  F4	ShowLauncher （仅标签页）
  F5	ShowLauncher （仅工作区）
  F11	ToggleFullScreen
  F12	ShowDebugOverlay
  SUPER+f	搜索文本
  SUPER_REV+u	打开 URL
 

## 复制+粘贴
按键	操作
  Ctrl+Shift+c	复制到剪贴板
  Ctrl+Shift+v	从剪贴板粘贴
 

## 光标移动
按键	操作
  SUPER+LeftArrow	移动光标到行首
  SUPER+RightArrow	移动光标到行尾
  SUPER+Backspace	清除行 （在 PowerShell 或 cmd 中无效）

##  标签页
  按键        操作
  SUPER+t     SpawnTab （默认域）
  SUPER_REV+f SpawnTab （WSL:Ubuntu）
  SUPER_REV+w CloseCurrentTab
  # SUPER+[      下一个标签页
  # SUPER+]      上一个标签页
  # SUPER_REV+[  向左移动标签页
  # SUPER_REV+]  向右移动标签页
  SUPER+9     切换标签栏
  SUPER+0     重命名当前标签页
  SUPER_REV+0 撤销重命名
 

## 窗口
按键	操作
  SUPER+n	SpawnWindow
  SUPER+=	增加窗口大小
  SUPER+-	减少窗口大小
 

## 窗格
  SUPER+\	SplitVertical （当前窗格域）
  SUPER_REV+\	SplitHorizontal （当前窗格域）
  SUPER+Enter	TogglePaneZoomState
  SUPER+w	CloseCurrentPane
  SUPER_REV+k	移动到窗格（上）
  SUPER_REV+j	移动到窗格（下）
  SUPER_REV+h	移动到窗格（左）
  SUPER_REV+l	移动到窗格（右）
  SUPER_REV+p	与选定窗格交换
  SUPER+u	向上滚动行 5 行
  SUPER+d	向下滚动行 5 行
  PageUp	向上滚动页面
  PageDown	向下滚动页面

背景图片
  SUPER+/	选择随机图片
  SUPER+,	循环到下一张图片
  SUPER+.	循环到上一张图片
  SUPER_REV+/	模糊选择图片
  SUPER+b	切换背景聚焦模式
 

快捷键表
参见：https://wezfurlong.org/wezterm/config/key-tables.html

快捷键	操作
LEADER+f	resize_font
LEADER+p	resize_pane

快捷键表：resize_font
k	IncreaseFontSize
j	DecreaseFontSize
r	ResetFontSize
q	PopKeyTable （退出）
Esc	PopKeyTable （退出）

快捷键表：resize_pane
k	AdjustPaneSize （方向：上）
j	AdjustPaneSize （方向：下）
h	AdjustPaneSize （方向：左）
l	AdjustPaneSize （方向：右）
q	PopKeyTable （退出）
Esc	PopKeyTable （退出）


#快捷键
Ctrl+shift+c    --复制
Ctrl+shift+v    --粘贴
Ctrl+shift+r    --重命名标签栏
Ctrl+alt+[\]    --水平拆分窗格，即左右拆分
Ctrl+alt+[/]    --垂直拆分窗格，即上下拆分
Ctrl+alt+[-]    --关闭当前窗格
Ctrl+alt+z      --最大化/最小化当前窗格
F11             --全屏
Ctrl+alt+[↑]    --向上扩展窗格
Ctrl+alt+[↓]    --向下扩展窗格
Ctrl+alt+[←]    --向左扩展窗格
Ctrl+alt+[→]    --向右扩展窗格
Alt+[↑]         --放大字体
Alt+[↓]         --缩小字体
Alt+r           --重置字体大小
