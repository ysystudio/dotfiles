### copy 
yy - Yank (copy) the current line, including the newline character.
3yy - Yank (copy) three lines, starting from the line where the cursor is positioned.
y$ - Yank (copy) everything from the cursor to the end of the line.
y^ - Yank (copy) everything from the cursor to the start of the line.
yw - Yank (copy) to the start of the next word.
yiw – Yank (copy) the current word.
y% - Yank (copy)  copy text between matching brackets.. By default supported pairs are (), {}, and [].
yG - Yank (copy) the whole file. first gg move to the beginning of the file

### fold
1.keep defaul no fold when open file,  set the option in usr-options.lua:
vim.opt.foldmethod = 'indent'
vim.opt.foldnestmax = 1
vim.cmd([[ set nofoldenable ]])

2.usuful command:
zc:fold all
za:fold/unfold one
zn:open all

### g command
tag	    	char	      note action in Normal mode	 
------------------------------------------------------------------------------  
|g,|		g,		1  go to N newer position in change list
|g;|		g;		1  go to N older position in change list
|g8|		g8		   print hex value of bytes used in UTF-8 character under the cursor
|ga|		ga		   print ascii value of character under the cursor
|gd|		gd		1  go to definition of word under the cursor in current function
|gD|		gD		1  go to definition of word under the cursor in current file
|gn|		gn	    1,2  find the next match with the last used search pattern and Visually select it
|gN|		gN	    1,2  find the previous match with the last used search pattern and Visually select it
|gf|		gf		   start editing the file whose name is under the cursor
|gF|		gF		   start editing the file whose name is under the cursor and jump to the line number following the filename.
|gg|		gg		1  cursor to line N, default first line
|gi|		gi		2  like "i", but first move to the |'^| mark
|gm|		gm		1  go to character at middle of the screenline
|gM|		gM		1  go to character at middle of the text line
|gr|		gr{char}	2  virtual replace N chars with {char}
|gv|		gv		   reselect the previous Visual area
|netrw-gx|	gx		   execute application for file name under the cursor (only with |netrw| plugin)

==============================================================================
### Commands starting with 'z'						*z*

tag		char	      note action in Normal mode	 
------------------------------------------------------------------------------  
|z=|		z=		   give spelling suggestions
|zA|		zA		   open a closed fold or close an open fold recursively
|zC|		zC		   close folds recursively
|zD|		zD		   delete folds recursively
|zE|		zE		   eliminate all folds
|zM|		zM		   set 'foldlevel' to zero
|zN|		zN		   set 'foldenable'
|zO|		zO		   open folds recursively
|zo|		zo		   open fold
|za|		za		   open a closed fold, close an open fold
|zc|		zc		   close a fold
|zn|		zn		   reset 'foldenable'

### . 命令范式
1. 在技巧2中，我们想在一系列行的结尾添加分号。我们先用 A; <Esc> 修改了第一行，做完这步准备后，就可以使用 . 命令对后续行重
复此修改。我们使用了 j 命令在行间移动，要完成剩余的修改，只需简 单地按足够多次 j. 就可以了。
2. 在技巧3中，我们想为每个 + 号的前后各添加一个空格。先用 f+ 命 令跳到目标字符上，然后用 s命令把一个字符替换成3个，做完这步准
备后，就可以按若干次 ;. 完成此任务。
3. 在技巧5中，我们想把每处出现单词“content”的地方都替换 成“copy”。使用 / 命令来查找目标单词，然后用 cw 命令修改第一处地
> 方。做完这步准备后，就可以用 n 键跳到下一匹配项，然后用 . 键做相 同的修改。要完成这项任务，只需简单地按足够多次 n. 就行了。

|目的           | 操作                     |重复|回退|
|---------------|--------------------------|--- |----|
|做出一个修改     | {edit}                   | .  | u  |
|执行一系列修改   | qx{changes}q             | @x | u  |
|执行替换        | :s/target/replacement    | &  | u  |
|在行内查找下一指定字符 | f{char}/t{char}  | ;  | ,  |
|在行内查找上一指定字符 | F{char}/T{char}  | ;  | ,  |
|在文档中查找下一处匹配项 | /pattern       | n  | N  |
|在文档中查找上一处匹配项 | ?pattern       | n  | N  |

> @@ re do last mecro

### 插入模式
> <C-u> 删至行首
> <C-w> 删除前一个单词

### 使用计算寄存器
> <C-r> = 6 * 2 <CR>  6 chairs, each costing $2, totals $12

### insert digraph
> :h digraph-table
> <C-k>12

### command mode run normal command
> :normal 命令则让我们可以把具有强大表现力的 Vim 普通
> 模式命令与具有大范围影响力的 Ex 命令结合在一起，这种结合真的是珠联璧合
> :%normal A;  -- add ; to every line

### visual mode
> o 切换高亮选区的活动端

### gloable commands
使用:g命令，可以针对所有匹配模式的行执行操作。其命令格式为：
:[range]g/{pattern}/[command]
命令:g!及其同义词:v，则可以针对所有不匹配模式的行执行操作。其命令格式为：
:[range]g!/{pattern}/[command]
如果没有指定[range]，则针对文件中的所有行执行命令。也可以使用行地址，把全局搜索限定在指定的行或行范围内。
如果没有指定[command]，则执行:print命令来显示行内容。
使用以下命令，可以查看全局命令的帮助信息：
:h :g

#### 全局查找
查找并显示文件中所有包含模式pattern的行，并移动到最后一个匹配处：
:g/pattern
查找并显示文件中所有包含模式pattern的行：
:g/pattern/p
查找并显示文件中所有精确匹配单词pattern的行：
:g/\<pattern\>/p
查找并显示第20到40行之间所有包含模式pattern的行：
:20,40g/pattern/p
查找并显示文件中所有不包行模式pattern的行，并显示这些行号：
:g!/pattern/nu

#### 全局删除
删除包含模式patternn的行：
:g/pattern/d
删除不包含模式pattern的行：
:g!/pattern/d
删除所有空行：
:g/^$/d
删除所有空行以及仅包含空格和Tab制表符的行：
:g/^[ tab]*$/d
删除指定范围内的文本，例如以下文本中的“DESCRIPTION”部分：
:g/DESCRIPTION/,/PARAMETERS/-1d

#### 全局替换
将包含“microsoft antitrust”的行中的“judgment”替换为“ripoff”：
:g/microsoft antitrust/s/judgment/ripoff/
可以在命令中指定查找的范围。比如以下命令，将在包含“microsoft antitrust”的前两行及后两行中进行替换：
:g/microsoft antitrust/-2,/microsoft antitrust/+2s/judgment/ripoff/c
以上命令末尾的c参数，用于提示用户对每一个替换操作进行确认。

假设希望在以“end”结尾的行中，将第1部分文字替换为“The greatest of times;”：
the best of times; the worst of times: end    
由于会尽可能多（as much text as possible）的匹配，以下命令将替换至第2个“of”处：
:g/end$/s/.*of/The greatest of/
The greatest of times: end                    
为了只替换第1部分，则需要更精确的匹配条件：
:g/end$/s/.*of times;/The greatest of times;/
The greatest of times; the worst of times: end

#### 全局移动
将所有的行按相反的顺序排列。其中，查找模式.*将匹配所有行，m0命令将每一行移动到0行之后：
:g/.*/m0
将指定标记（Mark）之间的行按相反的顺序排列：
:'a,'bg/^/m'b
将以下文本中的“DESCRIPTION”部分，上移到“SYNTAX”之前：
首先匹配从包含“SYNTAX”的行到包含“DESCRIPTION”的上一行；然后将这些行移动到包含“PARAMETERS”的上一行。
:g /SYNTAX/.,/DESCRIPTION/-1 move /PARAMETERS/-1
以下两条命令均可以将所有不是以数字开头的行，移动到文件末尾：
:g!/^[[:digit:]]/m$
:g/^[^[:digit:]]/m$

#### 全局复制
使用以下命令，可以重复每一行。其中:t或:copy为复制命令：
:g/^/t.
将包含模式pattern的行，复制到文件末尾：
:g/pattern/t$
重复每一行，并以“print ''”包围：
:g/./yank|put|-1s/'/"/g|s/.*/Print '&'/


> :g/const/t               - This effectively duplicates all lines containing const
> :g/^/m 0                 - reversing the entire file
> :g/const/pu ='hello vim' - paste the "hello vim" to all the lines including const
> :g/import/normal I// - coment all the lines include import
> :g/console/normal @a - execute your macro on all lines containing console
> :g/puts/s/to_s/to_f - perform s for the lines with puts
> :g/[^0-9]$/d        - delete all lines that do not end with a number 0-9
> :g/console/d        - delete all lines containing console

### movement
#### w for word(split by char/number/_), W for WORD(split by non visual char)
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
| ’{mark}/`{mark} :`            | 跳转到一个位置标记|
| <C-o> , <C-i>                 | 跳到前后个光标位置|
| <C-]> , gd                    | 跳转到光标下关键字的定义之处|
| gf                            | 跳转到光标下的文件名|
| gi                            | 跳转到上一个插入位置|
| g;  g,                        | 跳到前后个光标位置|
| <C-o> , <C-i>                 | 跳到前后个光标位置|


### use named rigistors 
 
> 让我们看一些引用寄存器的例子，如果想把当前单词复制到寄存器
> a中，可执行 "ayiw，或者，可以用"bdd，把当前整行文本剪切至寄存
> 器 b中。在此之后，既可以输入 "ap 粘贴来自寄存器a的单词，也可使
> 用"bp 命令粘贴来自寄存器 b的一整行文本，两者互不干扰。

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

> 在输入qa时，Vim将开始录制接下来的按键操作，并将它们保存到
> 寄存器 a中，这会覆盖该寄存器原有的内容。如果输入的是qA，Vim也
> 会录制按键操作，但会把它们附加到寄存器a原有的内容之后。

> example:add list number to each blow lines
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
> foo\c  :  match [foo Foo FOO]
> foo\C  :  match foo

> \v会激活very magic搜索模式，即假定除# _ 、大小写字母以及数字0～9之外
> 的所有字符都具有特殊含义（参见 :h \v ）. 正则表达式在这种模式下可用。
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

> sample:
> /\v'(([^']|'\w)+)' : match all the content in '' , here (([^']|'\w)+) match all the char except '
> :%s/“\1”//g : delete all the content

> sample:
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

###sample: 重排字段
last name,first name,email
neil,drew,drew@vimcasts.org
doe,john,john@example.com

> /\v^([^,]*),([^,]*),([^,]*)$
> :%s//\3,\2,\1

email,first name,last name
drew@vimcasts.org,drew,neil
john@example.com,john,doe


###韦一笑的技巧总计
- SecureCRT 中使用 Vim 8 内嵌终端如看到奇怪字符，使用 :set t_RS= t_SH= 解决
- SecureCRT 中使用 NeoVim 如看到奇怪字符，使用 :set guicursor= 解决
- * 和 # （以及 g*/g#）是十分重要的查找命令
- 多使用 ciw, ci[, ci", ci( 以及 diw, di[, di", di( 命令来快速改写/删除文本
- 使用 @: 重复执行上一次 Ex 命令，比如 :nohl<cr>, @:, @:, @:
- SHIFT 相当于移动加速键， w b e 移动光标很慢，但是 W B E 走的很快
- 自己要善于总结新技巧，比如移动到行首非空字符时用 0w 命令比 ^ 命令更容易输入
- 在空白行使用 dip 命令可以删除所有临近的空白行
- 在空白区使用 viw 可以选择所有空白字符
- 缩进时使用 >8j  >}  <ap  =i}  == 会方便很多
- 越重复的工作，越需要努力的将其自动化
- 编程时可以使用 [{ 和 ]} 快速在函数间移动
- 插入模式下，当你发现一个单词写错了，应该多用 CTRL-W 这比 <BackSpace> 快
- 插入模式下，CTRL-X CTRL-F 可以方便的补全当前目录的文件名
- 插入模式下，可用 CTRL-V u 输入 unicode，如 <C-V>u1234 输入16进制 unicoode
- 插入模式下，CTRL-R = 可以用来简单计算，比如 <C-R>=12*3.5/10<cr> 会插入 4.2
- 如果在插入模式下移动光标，那么就不能使用 . 来重复之前的插入了
- y d c 命令可以很好结合 f t 和 /X 比如 dt) 和 y/end<cr>
- c d x 命令会自动填充寄存器 "1 到 "9 , y 命令会自动填充 "0 寄存器
- 用 v 命令选择文本时，可以用 o 掉头选择，有时很有用
- ca) 和 yi} 很容易记忆，但是他们等同于 cab yiB 后者很容易输入
- 写文章时，可以写一段代码块，然后选中后执行 :!python 代码块就会被替换成结果
- 搜索后经常使用 :nohl 来消除高亮，使用很频繁，可以 map 到 <BackSpace> 上
- 搜索时可以用 CTRL-R CTRL-W 插入光标下的单词
- Vim 有一千零一种移动光标的方法，有时候就连 H M L 也是很有用的
- 不需要记忆上一次选择区域，'< 和 '> 可以跳到上次选择的开始和结束
- 如需编辑同一个文件的不同地方，可以用 :vs 或者 :split 将文件分为两个窗口
- 有六种方法来改变一个布尔设置: :set list nolist list! invlist list? list&
- 映射按键时，应该默认使用 noremap ，只有特别需要的时候使用 map
- 当你觉得做某事很低效时，你应该停下来，u u u u 然后思考正确的高效方式来完成
- 用 y复制文本后，命令模式中 CTRL-R 然后按双引号 " 可以插入之前复制内容
- 如果你想全屏阅读帮助的话，使用 :tab help <keyword> 命令
- 粘贴文本时应该思考下前后是否包含空格
- :x 和 ZZ 命令和 :wq 类似，但是不会写入没有改变的文件，并且更快
- 多阅读 :h index 学习新的快捷键，让你更加高效
- Vim 帮助系统里有一个使用技巧集合，使用 :h tips 阅读
- Windows 下的 GVim 可以用 CTRL-INSERT 和 SHIFT-INSERT 操作系统剪贴板
- 思考题：知道下面控制代码 ^I ^M ^J ^[ ^H ^@ 分别代表什么意思么？
