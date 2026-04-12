:: From a Unix lover to another .. 
:: See https://github.com/jonasaberg91/DoskeyCmd for commands
:: how to make it work: 
:: for win-terminal cmd.exe  /K "%USERPROFILE%\dev\dotfiles\win-terminal\alias.bat C:\ "
:: for wezterm : { label = 'Command Prompt', args = { 'cmd' , '/K C:\\Users\\shark\\dev\\dotfiles\\win-terminal\\alias.bat C:\\ '} },
@echo off

:: Linux commands
doskey c       = cls
doskey cdh     = cd %USERPROFILE%
doskey cp      = copy $*
doskey xcp     = xcopy $*
doskey grep    = find $*
doskey l       = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey rm      = del $*
doskey rmd     = rmdir /s $*
doskey rmt     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey ipy     = ipython
doskey py      = python
doskey v       = nvim $*
doskey nq       = nvim-qt --maximized $*
doskey lg      = lazygit
doskey which   = where $*
doskey r       = ranger

:: Bind your own applications, uncomment to use
:: doskey macroname="PATH" $*

doskey s     = sublime_text $*

@REM enhance cmd 
@REM ## Clink for Cmd
@REM ` choco install clink-maintained Starship `

@REM ## Starship
@REM Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
@REM -- starship.lua
@REM load(io.popen('starship init cmd'):read("*a"))()
