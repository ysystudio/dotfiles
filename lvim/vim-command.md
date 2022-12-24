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

|目的         | 操作                       |重复|回退|
|-------------|----------------------------|--- |----|
|做出一个修改 | {edit}                     | .  | u|
|在行内查找下一指定字符 | f{char}/t{char}  | ;  | ,|
|在行内查找上一指定字符 | F{char}/T{char}  | ;  | ,|
|在文档中查找下一处匹配项 | /pattern  | n  | N|
|在文档中查找上一处匹配项 | ?pattern  | n  | N|
|执行替换 | :s/target/replacement  |  | &  | u|
|执行一系列修改 | qx{changes}q        | @x  | u|

> @@ re do last mecro

### 插入模式
> <C-w> 删除前一个单词
> <C-u> 删至行首

#### 使用计算寄存器
> <C-r> = 6 * 2 <CR>  6 chairs, each costing $2, totals $12

#### insert digraph
> :h digraph-table
> <C-k>12
####  >> << shift line 

### command mode run normal command
> :normal 命令则让我们可以把具有强大表现力的 Vim 普通
> 模式命令与具有大范围影响力的 Ex 命令结合在一起，这种结合真的是
> 珠联璧合
> :%normal A;  -- add ; to every line

### visual mode
> O 切换高亮选区的活动端


### gloable commands , v is g!
> :g/const/t               - This effectively duplicates all lines containing const
> :g/^/m 0                 - reversing the entire file
> :g/const/pu ='hello vim' - paste the "hello vim" to all the lines including const
> :g/import/normal I// - coment all the lines include import
> :g/console/normal @a - execute your macro on all lines containing console
> :g/puts/s/to_s/to_f - perform s for the lines with puts
> :g/[^0-9]$/d        - delete all lines that do not end with a number 0-9
> :g/console/d        - delete all lines containing console

### movement
#### w for word , W for WORD
> e.g. we're going too slow
> above line includes 5 WORD and 10 word


|      commands                 |  jump           |
| ------------------------------| ----------------|
| [count]G                      | 跳转到指定的行号|
| /pattern<CR>/?pattern<CR>/n/N | 跳转到下一个/上一个模式出现之处|
| %                             | 跳转到匹配的括号所在之处|
| (/)                           | 跳转到上一句/下一句的开头|
| {/}                           | 跳转到上一段/下一段的开头|
| H/M/L                         | 跳到屏幕最上方/正中间/最下方|
| gf                            | 跳转到光标下的文件名|
| <C-]>                         | 跳转到光标下关键字的定义之处|
| ’{mark}/`{mark}               | 跳转到一个位置标记|
| gi                            | 跳转到上一个插入位置|
| <C-o> , <C-i>                 | 跳到前后个光标位置|
| g;  g,                        | 跳到前后个光标位置|


### use named rigistors 

> 让我们看一些引用寄存器的例子，如果想把当前单词复制到寄存器
> a中，可执行 "ayiw，或者，可以用 "bdd，把当前整行文本剪切至寄存
> 器 b中。在此之后，既可以输入 "ap 粘贴来自寄存器 a的单词，也可使
> 用 "bp 命令粘贴来自寄存器 b的一整行文本，两者互不干扰。

> 如果在外部程序中用剪切或复制命令获取了文本，就可以通过 "+p
> 命令（或在插入模式下用 <C-r>+）将其粘贴到Vim内部。

> 表达式寄存器（"=） Vim的寄存器通常被认为是保存一段文本的容器。然而，通过 = 号
> 可以输入一段Vim脚本表达式并按 <CR> 执行 （参见 :h quote= ）

|寄存器 |内容     |
|-------|---------|
|"%     |当前文件名|
|"p     |上次的复制|
|"#     |轮换文件名|
|".     |上次插入的文本|
|":     |上次执行的Ex命令|
|"/     |上次查找的模式|

> xp swap two char, ddp swap two line

> insert mode, <C-r>" put unamed register value, <C-r>0 put copy register value,
> <C-r>[a,z] put other named register value

### Macro

> 在输入 qa时，Vim将开始录制接下来的按键操作，并将它们保存到
> 寄存器 a中，这会覆盖该寄存器原有的内容。如果输入的是 qA，Vim也
> 会录制按键操作，但会把它们附加到寄存器 a原有的内容之后。


> add list number at each begin of line
partridge in a pear tree turtle doves
French hens
calling birds
golden rings

`
:let i=1
qa
I<C-r>=i<CR>)<Esc>
:let i += 1
q

m-13V4j
:'<,'>normal @a

`

> "ap命令会 把寄存器a的内容粘贴至当前行的光标之后。
> :put a命令总会将它们粘贴至当前行的下方，无论寄存器保存的是面向行的还是面向字符


### search
> foo\c match [foo Foo FOO]
> foo\C match foo

> \v会激活very magic搜索模式，即假定除# _ 、大小写字母以及数字0～9之外
的所有字符都具有特殊含义（参见 :h \v ）. 正则表达式在这种模式下可用。
> \v#(\x{6}｜\x{3}) 使用 \x 字符类代替 [0-9A-Fa-f] ，match : #3c3c3c, #000

> "\V"会激活very nomagic搜索模式, 其后的模式中只有反斜杠有特殊的意义”（参见 :h /\V ）

> /\v<(\w+)\_s+\1>  : 用来匹配重复单词的正则表达式

> /\v<the> : only match the 

> /\v(And|D)rew Neil : match Andrew Neil and Drew Neil

> /Practical \zsVim<CR>，: 只有紧跟着单词“Practical”的“Vim”才会被匹配

| 命令     |          用途                |
| ----|-----------------------------------|
| n    |跳至下一处匹配，保持查找方向与偏移不变|
| N    |跳至上一处匹配，保持查找方向与偏移不变|
| /<CR>| 正向跳转至相同模式的下一处匹配|
| ?<CR>| 反向跳转至相同模式的上一处匹配|
| *    | 跳转至相同模式的第一处匹配|
| gn   |进入面向字符的可视模式，并选中下一处匹配|
| gN   |进入面向字符的可视模式，并选中上一处匹配|

> /\v'(([^']|'\w)+)' : match all the content in '' , here (([^']|'\w)+) match all the char except '
> :%s/“\1”//g : delete all the content

> /\<buttons\>
> :%s///gn  : count the match time , like: 5 matches on 4 lines

### replace

|符号|          描述|
|----|--------------|
| \r |插入一个换行符|
| \t |插入一个制表符|
| \\ |插入一个反斜杠|
| \1 |插入第1个子匹配|
| \2 |插入第2个子匹配（以此类推，最多到 \9）|
| \0 |插入匹配模式的所有内容|
| & |插入匹配模式的所有内容|
| ~ |使用上一次调用 :substitute时的 {string}|
| \={Vim script} |执行 {Vim Script} 表达式；并将返回的结果作为替换 {string}|

### 重用上次的查找模式, 下面两条命令等价
> :%s/\v'(([^']|'\w)+)'/“\1”/g 
> /\v'(([^']|'\w)+)' , :%s//“\1”/g

### 重排字段
last name,first name,email
neil,drew,drew@vimcasts.org
doe,john,john@example.com

> /\v^([^,]*),([^,]*),([^,]*)$
> :%s//\3,\2,\1

email,first name,last name
drew@vimcasts.org,drew,neil
john@example.com,john,doe
