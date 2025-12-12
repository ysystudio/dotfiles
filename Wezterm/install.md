# 安装要求：
WezTerm
JetBrainsMono Nerd Font

choco install nerd-fonts-JetBrainsMono,wezterm

 
# ---------------- config tasks ---------------------------------------------

rmdir /s %USERPROFILE%\.config\wezterm
mklink /j  %USERPROFILE%\.config\wezterm %USERPROFILE%\dev\dotfiles\wezterm

# Enabling conda in Windows Powershell
  First, in an administrator command prompt, enable unrestricted Powershell script execution (see About Execution Policies):
    set-executionpolicy unrestricted

  Setup conda for Powershell using the following command:
    conda init powershell

# reference offical config：
## 在 Windows 和 Unix 系统上
git clone https://github.com/KevinSilvester/wezterm-config.git "%USERPROFILE%/.config/wezterm
完成！！！🎉🎉