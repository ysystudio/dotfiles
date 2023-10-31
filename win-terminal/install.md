# Clink for Cmd

` choco install clink-maintained Starship `

# Starship
>
> Add the following to a file starship.lua and place this file in Clink scripts directory:%LocalAppData%\clink\starship.lua
> -- starship.lua
> load(io.popen('starship init cmd'):read("*a"))()


#posh is slow, maybe multi profile loaded, use following com to check
    $PROFILE | Get-Member -Type NoteProperty
