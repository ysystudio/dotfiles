:: From a Unix lover to another ..
:: See https://github.com/jonasaberg91/DoskeyCmd for commands
@echo off

:: Linux commands
doskey alias   = doskey $*
doskey cat     = type $*
doskey clear   = cls
doskey cp      = copy $*
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
doskey ls      = dir $*
doskey l       = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey ipy     = ipython
doskey v       = nvim
doskey lg      = lazygit
doskey which   = where
doskey r       = ranger

:: Simplified Navigation
doskey ..    = cd ..\$*
doskey ...   = cd ..\..\$*
doskey ....  = cd ..\..\..\$*
doskey ..... = cd ..\..\..\..\$*

:: Bind your own applications, uncomment to use
:: doskey macroname="PATH" $*

doskey s="D:\software\Pythonxy\tools\Sublime Text Build 3211 x64\sublime_text.exe" $*

