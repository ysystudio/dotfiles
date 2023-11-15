# Clink for Cmd

` choco install clink-maintained Starship `

# Starship
>
> Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
> -- starship.lua
> load(io.popen('starship init cmd'):read("*a"))()


#posh is slow, maybe multi profile loaded, use following com to check
    $PROFILE | Get-Member -Type NoteProperty


#window terminal 快捷键
##标签
行动    	快捷键
新标签  	ctrl+shift+t（也在 macOS 上）⌘+t
关闭标签	ctrl+shift+q（也在 macOS 上）⌘+w
下一个标签	ctrl+shift+right（也在 macOS 上）⇧+⌘+]
上一个标签	ctrl+shift+left（也在 macOS 上）⇧+⌘+[

##窗口
行动    	快捷键
新窗户  	ctrl+shift+enter, Alt+d, ⌘+↩
关闭窗口	ctrl+shift+w , Alt+w, ⌘+w
下一个窗口	ctrl+shift+] , Alt+]
上一个窗口	ctrl+shift+[ , Alt+[
向前移窗口	ctrl+shift+f
向后移窗口	ctrl+shift+b
切换布局	ctrl+shift+l
