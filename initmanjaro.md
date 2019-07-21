## manjaro install
```shell
sudo pacman-mirrors -i -c China -m rank
sudo pacman -Syyu

# append this to /etc/pacman.conf
[archlinuxcn]
SigLevel = Optional TrustAll
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch

# then run
sudo pacman -Syy
sudo pacman -S archlinuxcn-keyring

# basic software
sudo pacman -S vim typora google-chrome tmux git ctags the_silver_searcher fzf tldr

# sogoupinyin
sudo pacman -S fcitx-im          # default install all
sudo pacman -S fcitx-configtool
sudo pacman -S fcitx-sogoupinyin
## edit ~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# others
sudo pacman -S netease-cloud-music
sudo pacman -S ttf-wps-fonts wps-office
sudo pacman -S visual-studio-code-bin
```

### shadowsocks

```shell
sudo pacman -S shadowsocks-libev
ss-local -c config.json

# test by curl
curl -x socks5h://127.0.0.1:1080 http://www.google.com

# example config.json
{
    "server":"my_server_ip",
    "server_port":8388,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"mypassword",
    "timeout":300,
    "method":"chacha20-ietf-poly1305",
    "fast_open": false,
    "workers": 1
}

# then set the browser's proxy to socks5://127.0.0.1:1080
# SwitchyOmega extension autoswitch with gfwlist
```