:: From a Unix lover to another .. 
:: See https://github.com/jonasaberg91/DoskeyCmd for commands
:: how to make it work: cmd.exe  /K "C:\Users\10051851\dev\dotfiles\win-terminal\alias.bat C:\ "
@echo off

:: Linux commands
doskey c       = cls
doskey cp      = copy $*
doskey xcp     = xcopy $*
doskey grep    = find $*
doskey l       = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey rm      = del $*
doskey rmt     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey ipy     = ipython
doskey py      = python
doskey v       = nvim $*
doskey lg      = lazygit
doskey which   = where $*
doskey r       = ranger

:: Bind your own applications, uncomment to use
:: doskey macroname="PATH" $*

doskey s     = sublime_text $*
