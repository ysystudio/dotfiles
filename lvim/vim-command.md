### copy 
```
yy - Yank (copy) the current line, including the newline character.
3yy - Yank (copy) three lines, starting from the line where the cursor is positioned.
y$ - Yank (copy) everything from the cursor to the end of the line.
y^ - Yank (copy) everything from the cursor to the start of the line.
yw - Yank (copy) to the start of the next word.
yiw – Yank (copy) the current word.
y% - Yank (copy)  copy text between matching brackets.. By default supported pairs are (), {}, and [].
yG - Yank (copy) the whole file. first gg move to the beginning of the file

```
### . 命令范式
1. 在技巧2中，我们想在一系列行的结尾添加分号。我们先用 A; <Esc> 修改了第一行，做完这步准备后，就可以使用 . 命令对后续行重
复此修改。我们使用了 j 命令在行间移动，要完成剩余的修改，只需简 单地按足够多次 j. 就可以了。
2. 在技巧3中，我们想为每个 + 号的前后各添加一个空格。先用 f+ 命 令跳到目标字符上，然后用 s命令把一个字符替换成3个，做完这步准
备后，就可以按若干次 ;. 完成此任务。
3. 在技巧5中，我们想把每处出现单词“content”的地方都替换 成“copy”。使用 * 命令来查找目标单词，然后用 cw 命令修改第一处地
> 方。做完这步准备后，就可以用 n 键跳到下一匹配项，然后用 . 键做相 同的修改。要完成这项任务，只需简单地按足够多次 n. 就行了。

|目的 | 操作 | 重复 | 回退|
|做出一个修改 | {edit}  | .  | u|
|在行内查找下一指定字符 | f{char}/t{char}  | ;  | ,|
|在行内查找上一指定字符 | F{char}/T{char}  | ;  | ,|
|在文档中查找下一处匹配项 | /pattern  | n  | N|
|在文档中查找上一处匹配项 | ?pattern  | n  | N|
|执行替换 | :s/target/replacement  |  | &  | u|
|执行一系列修改 | qx{changes}q  | @x  | u|
