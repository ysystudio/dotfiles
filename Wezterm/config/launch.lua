local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh', '-NoLogo' }
   options.launch_menu = {
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' , '/K C:\\Users\\shark\\dev\\dotfiles\\win-terminal\\alias.bat C:\\ '} },
    --   { label = 'Nushell', args = { 'nu' } },
    --   { label = 'Msys2', args = { 'ucrt64.cmd' } },
      {
         label = 'Git Bash-x-com',
         args = { 'C:\\Users\\shark\\dev\\dotfiles\\Wezterm\\x-cmd.bat' },
      },
      {
         label = 'wsl-20.04',
         args = { 'wsl.exe', '-d', 'Ubuntu-20.04', '--cd', '~' },
      },
      {
         label = 'wsl-24.04',
         args = { 'wsl.exe', '-d', 'Ubuntu-24.04', '--cd', '~' },
      },
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
