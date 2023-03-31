
# WARNING: PLEASE DO NOT USE THIS SCRIPT, JUST MANUALLY FOLLOW THE STEPS

### basic development environment

``` xcode-select --install
```

### macport install
>
> go to official <https://www.macports.org/install.php> download your macos related dmg
>
### python install
>
> <https://mirror.tuna.tsinghua.edu.cn/help/anaconda/>
>

### brew install

```/bin/zsh -c "$(curl -fsSL <https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh>)"
```

### support tools install

```
brew install wget curl autojump fzf git fd lazygit ranger zsh zinit tree diff-so-fancy 
brew install lazydocker htop glances ripgrep z starship
sudo port rmtrash
```

> icdiff #分屏diff
> ncdu #disk analysi
> tldr #simple manual
> cloc #code statics
> wtf #short words explaining
> cppman #cross platform cpp maneul

### link zshrc

```
ln -s ~/dev/dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc
```

### fonts
>
> If you are using powerlevel10k, p10k configure can install the recommended font for you.
> or you can install the nerd font by brew

```
brew tap homebrew/cask-fonts
brew install font-FiraCode-nerd-font

```

### dev sidecar install
>
> <https://github.com/docmirror/dev-sidecar/releases>
> turn on the power mode
> change the seeting.json5 under ~/.dev-sidecar
> {
> overwall: true,
> installTime: 1663221978753,
> rootCa: {
> setuped: true,
> },
}

### outlook and teams logon on mac m1
>
> when the certification window for Thales popup, input your TID and password, next show smartc card authetificaiton ,
> just click then fail because no card. Then secret is , right click the logon window and select back, continue till
> the window close, exit and reopen , the logon status will be saved.

### System Preference

- **English** as Default language
- **Dark** Theme
- **Dock** Size Small/Disable Magnification/Left Position/Genie effect/Double-click title bar to minimize
- **Finder** enable TabBar+StatusBar+PathBar (View -> Show [TabBar|StatusBar|PathBar])
- **.ssh_config**
- **Trackpad Gestures**
  - Tap click
  - Secondary click
  - Three fingers drag
  - Three fingers tap

### Development

- **iTerm2**: <https://www.iterm2.com>
  - Color Presets: [changkun.itermcolors](../iterm2/changkun.itermcolors)
  - Profile: [com.googlecode.iterm2.plist](../iterm2/com.googlecode.iterm2.plist)
  - Key-binding: [keys.itermkeymap](../iterm2/keys.itermkeymap)
    - **send text at start** tmux attach -d -t dev || tmux new -s dev
    - **Cusor** Underline
    - **Font** 16pt Ubuntu Mono derivative Powerline
    - **Text Rendering** Disable Draw bold in bold font
    - **Text Rendering** Disable Draw bold in bright colors
    - **Text Rendering** Enable Draw anti-aliased text with thin strokes
    - **Window appearence** Transparency to 15%
    - **Window appearence** Blur to 40%
    - **Terminal Emulation** Unicode (UTF-8), xterm-256color
- VSCode: <https://code.visualstudio.com>
- Xcode: AppStore
- Docker for Mac: <https://docs.docker.com/docker-for-mac/>

### Writing

- Typora: <https://typora.io>
- MacTeX: <http://www.tug.org/mactex/mactex-download.html>
- Klatexformula: <https://klatexformula.sourceforge.io/downloads>
- MindNode: AppStore
- OmniGraffle: AppStore
- PDF Expert: AppStore
- Mendeley: <https://www.mendeley.com/download-mendeley-desktop/>
- Zotero: <https://www.zotero.org/download/>
  - Plugin Zotfile: <http://zotfile.com/>
  - Config: base directory to dropbox, zotfile source folder from download, and location of files to dropbox (automatic move).
  - Use subfolders: `/%c` on macOS/Linux, `\\%c` on windows
  - Rename rules: `{%y-}{%a-}{%t}`
  - Delimiter between multiple lines `-`
  - Change to lower case
  - Replace blanks
  - Truncate title after `.` or `:` or `?`
  - Maximum length of title 80
  - Maximum number of authors 2
  - Add suffix when authors are omitted `etal`

### Utils

- ShadowsocksX-NG: <https://github.com/shadowsocks/ShadowsocksX-NG>
- The Unarchiver: AppStore
- Things 3: AppStore
- iStatu Menu: <https://bjango.com/mac/istatmenus/>
- Bartender: <https://www.macbartender.com>
- Alfred: <https://www.alfredapp.com>
- Zoom: <https://zoom.us/>

### Optional

- Blender: <https://www.blender.org/download/>
- MeshLab: <http://www.meshlab.net/#download>
- CUDA: <https://developer.nvidia.com/cuda-downloads>
- cuDNN: <https://developer.nvidia.com/cudnn>
- JDK: <http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>
- Xcode: AppStore
- OBS: <https://obsproject.com/download>
- Medis: <https://github.com/luin/medis/releases/tag/v0.5.0>
- Sequel Pro: <https://sequelpro.com/download>
- HandBrake: <https://handbrake.fr/downloads.php>
- Adobe Acrobat Reader (for special purpose)
- Office: <https://stores.office.com/myaccount/home.aspx#install>
- Postman: <https://www.getpostman.com/apps>
- Dash: <https://kapeli.com/dash>
- Robo 3T: <https://robomongo.org/>
- SourceTree: <https://www.sourcetreeapp.com>
- Discord: <https://discord.com/download>
- Gifski: AppStore

### Entertainment

- Minecraft: <https://minecraft.net>
- Steam: <http://steampowered.com>
- YYets: <http://app.rrys.tv/>
