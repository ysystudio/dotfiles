

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
  标签页：创建+关闭
  按键	操作
  SUPER+t	SpawnTab （默认域）
  SUPER_REV+f	SpawnTab （WSL:Ubuntu）
  SUPER_REV+w	CloseCurrentTab
  标签页：导航
  按键	操作
  SUPER+[	下一个标签页
  SUPER+]	上一个标签页
  SUPER_REV+[	向左移动标签页
  SUPER_REV+]	向右移动标签页
  标签页：标题
  按键	操作
  SUPER+9	切换标签栏
  标签页：切换标签栏
  按键	操作
  SUPER+0	重命名当前标签页
  SUPER_REV+0	撤销重命名
 

## 窗口
按键	操作
  SUPER+n	SpawnWindow
  SUPER+=	增加窗口大小
  SUPER+-	减少窗口大小
 

## 窗格
窗格：分割窗格
按键	操作
SUPER+\	SplitVertical （当前窗格域）
SUPER_REV+\	SplitHorizontal （当前窗格域）
窗格：缩放+关闭窗格
快捷键	操作
SUPER+Enter	TogglePaneZoomState
SUPER+w	CloseCurrentPane
窗格：导航
快捷键	操作
SUPER_REV+k	移动到窗格（上）
SUPER_REV+j	移动到窗格（下）
SUPER_REV+h	移动到窗格（左）
SUPER_REV+l	移动到窗格（右）
SUPER_REV+p	与选定窗格交换
窗格：滚动窗格
快捷键	操作
SUPER+u	向上滚动行 5 行
SUPER+d	向下滚动行 5 行
PageUp	向上滚动页面
PageDown	向下滚动页面
 

背景图片
快捷键	操作
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
快捷键	操作
k	IncreaseFontSize
j	DecreaseFontSize
r	ResetFontSize
q	PopKeyTable （退出）
Esc	PopKeyTable （退出）
快捷键表：resize_pane
快捷键	操作
k	AdjustPaneSize （方向：上）
j	AdjustPaneSize （方向：下）
h	AdjustPaneSize （方向：左）
l	AdjustPaneSize （方向：右）
q	PopKeyTable （退出）
Esc	PopKeyTable （退出）
