
### change default shell to zsh
>
> sudo apt install zsh
> which zsh
  /usr/bin/zsh
> cat /etc/shells
> echo "/usr/bin/zsh" | sudo tee -a /etc/shells
> chsh -s /usr/bin/zsh

### support tools install
```
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install.sh)"

brew install wget curl autojump fzf git lua lazygit ranger zinit fd lsd make ripgrep
```
- Make sure that $HOME/.local/bin is in your $PATH.

# basic environment settings

### copy the .gitconfig
```
cp /mnt/c/Users/10051851/.gitconfig ~/.gitconfig
cd ~/dev;  git clone <https://www.github.com/ysystudio/dotfiles.git>
```

### change apt source
```
sudo cp -f ~/dev/dotfiles/OS/.bashrc ~/.bashrc
proxy_on

- options:
sudo cp -f /etc/apt/sources.list /etc/apt/sources.list.bk
sudo cp -f ~/dev/dotfiles/OS/ubuntu.sources.list.cn /etc/apt/sources.list
```


### install zshrc
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
# Security Settings

Firewall:

```
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22022
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 60000:61000/udp
sudo ufw enable
sudo ufw status verbose

Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), deny (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
22022                      ALLOW IN    Anywhere
60000:61000/udp            ALLOW IN    Anywhere
80/tcp                     ALLOW IN    Anywhere
443/tcp                    ALLOW IN    Anywhere
22022 (v6)                 ALLOW IN    Anywhere (v6)
60000:61000/udp (v6)       ALLOW IN    Anywhere (v6)
80/tcp (v6)                ALLOW IN    Anywhere (v6)
443/tcp (v6)               ALLOW IN    Anywhere (v6)
```

SSH:

```
# /etc/ssh/sshd_config
Port 22022
PubkeyAuthentication yes
PasswordAuthentication no
PermitEmptyPasswords no
```

Note that docker containers change iptables that are not reflected in ufw.
See <https://askubuntu.com/questions/652556/uncomplicated-firewall-ufw-is-not-blocking-anything-when-using-docker>.

Modify the UFW configuration file /etc/ufw/after.rules and add the following rules at the end of the file:

```
# BEGIN UFW AND DOCKER

*filter
:ufw-user-forward - [0:0]
:ufw-docker-logging-deny - [0:0]
:DOCKER-USER - [0:0]
-A DOCKER-USER -j ufw-user-forward

-A DOCKER-USER -j RETURN -s 10.0.0.0/8
-A DOCKER-USER -j RETURN -s 172.16.0.0/12
-A DOCKER-USER -j RETURN -s 192.168.0.0/16

-A DOCKER-USER -p udp -m udp --sport 53 --dport 1024:65535 -j RETURN

-A DOCKER-USER -j ufw-docker-logging-deny -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -d 192.168.0.0/16
-A DOCKER-USER -j ufw-docker-logging-deny -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -d 10.0.0.0/8
-A DOCKER-USER -j ufw-docker-logging-deny -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -d 172.16.0.0/12
-A DOCKER-USER -j ufw-docker-logging-deny -p udp -m udp --dport 0:32767 -d 192.168.0.0/16
-A DOCKER-USER -j ufw-docker-logging-deny -p udp -m udp --dport 0:32767 -d 10.0.0.0/8
-A DOCKER-USER -j ufw-docker-logging-deny -p udp -m udp --dport 0:32767 -d 172.16.0.0/12

-A DOCKER-USER -j RETURN

-A ufw-docker-logging-deny -m limit --limit 3/min --limit-burst 10 -j LOG --log-prefix "[UFW DOCKER BLOCK] "
-A ufw-docker-logging-deny -j DROP

COMMIT
# END UFW AND DOCKER
```

Go Modules under private domain:

```
export GOPRIVATE=my.domain.com/x
git config --global url."git@github.com:".insteadOf "https://github.com/"
```
