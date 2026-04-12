# choco install  oh-my-posh  microsoft-windows-terminal 
# add link in $profile:
oh-my-posh init pwsh --config $Env:POSH_THEMES_PATH/material.omp.json | Invoke-Expression

# following to activate conda when launch ps  
# conda init powershell

# past the whole contest to $profile, can use code $profile to open

## posh is slow, maybe multi profile loaded, use following com to check
#    $PROFILE | Get-Member -Type NoteProperty


#Set-Alias -Name v  -Value $Env:USERPROFILE/.local/bin/lvim.ps1
Set-Alias -Name v  -Value nvim
Set-Alias -Name lg -Value lazygit 
Set-Alias -Name ipy -Value ipython 
Set-Alias -Name l -Value ls
Set-Alias -Name c -Value cls
Set-Alias -Name which   -Value "C:\Windows\System32\where.exe"

# Linux commands
# Set-Alias -Name cp      -Value copy 
Set-Alias -Name xcp     -Value xcopy 
Set-Alias -Name grep    -Value find 
Set-Alias -Name man     -Value help 
Set-Alias -Name mv      -Value move 
Set-Alias -Name rm      -Value del 
Set-Alias -Name rmt     -Value deltree 
Set-Alias -Name py      -Value python

Set-Alias -Name s       -Value sublime_text 
Set-Alias -Name o       -Value explorer
Set-Alias -Name e       -Value explorer



# # Adv
# Set-Alias -Name v           -Value CODEHERE
# Set-Alias -Name o           -Value OPENHERE

# # Define
# Function OPENHERE           { Start-Process -FilePath "explorer" -ArgumentList "."}
# Function CODEHERE           { Start-Process -FilePath "code" -ArgumentList "."}

# CDPATH
# $gitwork            = $env:GITWORK_PATH
# $mindmotion         = $env:GITWORK_PATH + '\mindmotion'
# $mindmotionliuyq    = $env:GITWORK_PATH + '\mindmotion\liuyq'
# $mindmotionliuyqmb  = $env:GITWORK_PATH + '\mindmotion\liuyq\mb_pcb'
# $liuyq              = $env:GITWORK_PATH + '\liuyq'
# $github             = $env:GITWORK_PATH + '\github.com'
# $appdev             = $mindmotion + '\app_dev'
# $downloads          = 'D:\User\Downloads'
# $documents          = 'D:\User\Documents'
# $wechatfiles        = $documents + '\WeChat Files\qingsao123\FileStorage\File'

# Function CDGITWORK          { Set-Location -Path $gitwork }
# Function CDMINDMOTION       { Set-Location -Path $mindmotion }
# Function CDMINDMOTIONLYQ    { Set-Location -Path $mindmotionliuyq }
# Function CDMB               { Set-Location -Path $mindmotionliuyqmb }
# Function CDAPPDEV           { Set-Location -Path $appdev }
# Function CDDOWNLOAD         { Set-Location -Path $downloads }
# Function CDWECHAT           { Set-Location -Path $wechatfiles }

# Set-Alias -Name gitwork     -Value CDGITWORK
# Set-Alias -Name mindmotion  -Value CDMINDMOTION
# Set-Alias -Name mliuyq      -Value CDMINDMOTIONLYQ
# Set-Alias -Name liuyq       -Value CDLYQ
# Set-Alias -Name appdev      -Value CDAPPDEV
# Set-Alias -Name download    -Value CDDOWNLOAD
# Set-Alias -Name wechat      -Value CDWECHAT

# Invoke-Expression (&starship init powershell)
