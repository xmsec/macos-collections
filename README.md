# macOS
因为 github 上预览看不到目录，在 [gitpages](https://blog.xmsec.cc/blog/2019/06/03/macos-collections/) 也放一份
## bash
### iterm2 ohmyzsh
- https://www.jianshu.com/p/9c3439cc3bdb
- https://zhuanlan.zhihu.com/p/68876098
- zsh 
    - git/z/zsh-autosuggestions

### command
- 查看监听端口
- sudo lsof -nP -iTCP[:端口号] -sTCP:LISTEN
- netstat -an -p 'tcp'


### proxy
```
export {http,https,ftp}_proxy='http://127.0.0.1:1080'
export socks5_proxy='socks5://localhost:1080'
```
or proxychains4

### 双网卡 route 
`sudo route add -net 10.10.15.0 -netmask 255.255.255.0 10.10.15.255`  ip mask gateway 适用内网与外网网关不同时

## brew
### 替换homebrew默认源
```
git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git
brew update
```
如果替换源之后brew update 没反应
```
cd "$(brew --repo)"
git pull origin master
```
切回官方源
```
git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/homebrew-core.git
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://github.com/Homebrew/homebrew-cask.git
brew update
```

### 替换Homebrew Bottles源
Homebrew Bottles是Homebrew提供的二进制代码包，目前镜像站收录了以下仓库：

对于bash用户
```
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
```
对于zsh用户
```
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```

### install command
`brew info python`    
`brew install python`    
`brew link python`    
`brew cleanup`    

## system
### volumn
- 通信自动音量调整关闭
```
通信前
printf "p *(char*)(void(*)())AudioDeviceDuck=0xc3\nq" | lldb -n QQ
printf "p *(char*)(void(*)())AudioDeviceDuck=0xc3\nq" | lldb -n WeChat
```

## docker
- mirror
    - RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
- mysql error
    - run into this under **ubuntu14.04** with updating password
    - [ERROR] Fatal error: Can't open and lock privilege tables: Got error 140 from storage engine
    - mkdir /var/run/mysqld ; chown -R mysql:mysql /var/lib/mysql /var/run/mysqld && service mysql start
- other error
    - maybe `mkdir /var/run/xxx`
- gdb
    - `docker run --privileged`
    - `docker run --cap-add=SYS_PTRACE` (or `ALL`)  
- configure proxy server
    - https://docs.docker.com/network/proxy/
    
## software collection
### resource url
- https://bbs.feng.com/
- https://macbed.com

### Basic & Tools
- vscode
- textastic
- 010 editor https://www.52pojie.cn/thread-847145-1-1.html
- wireshark
- charles https://www.zzzmode.com/mytools/charles/
- proxyfier
- antsword
- ida
    - keypatch https://github.com/fjh658/keystone-engine
    - https://github.com/L4ys/LazyIDA
    - fix 10.14 crash https://github.com/fjh658/IDA7.0_SP
- burpsuite
- android
    - jeb https://bbs.pediy.com/thread-230293-1.htm
    - jadx
    - apktool
- ssh manage
    - termius
- document
    - dash

### python
- brew install python
- brew install python@2
- pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some

### Note
- Mweb / yu writer
    - with hexo
- Onenote
- notion
- 滴答清单

### 效率
- Alfred
    - find
    - clipboard
    - workflow
        - https://github.com/liberize/alfred-dict-workflow
- Reeder (RSS)
    - with sync [inoreader](https://www.inoreader.com/)
    - https://github.com/zer0yu/CyberSecurityRSS
    
### FTP
- transmit

### convenient
- [WeChatExtension](https://github.com/MustangYM/WeChatExtension-ForMac)
- bandzip 压缩
- iina 播放器
- source tree （git gui）
- teamviewer (anydesk/microsoft remote desktop)
- easy new file (新建文件，快速打开终端)
- FDM 下载器
- 迅雷
- Scroll reverser 鼠标滚轮反转
- PDF element PRO
- termius (ssh management)
- fine reader ocr
- magnet (窗口管理)
- [PicGo](https://github.com/Molunerfinn/PicGo) 图片上传客户端
- dozer `brew cask install dozer` 状态菜单图标隐藏
- 自动切换输入法

### Visual
- PD/VMFUSION https://www.vmware.com/go/getfusion
- wine winetricks
- docker

### DB
- navicat
    - 旧版本可构造公私钥对
- datum

### Develope
- pycharm
- idea
- android studio
- anaconda

### Backup
- timemachine
    - 可分区，希捷移动硬盘 （ NTFS 管理)
    - https://support.apple.com/zh-cn/HT203981
- 坚果云
- onedirve(不知道文件标识符问题修复了没，10.13没问题)
- dropbox
### clean
- ominidisksweeper
- clean my mac
- tencent lemon
### access google
- https://github.com/JadaGates/ShadowsocksBio
- install
    - https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh libdev
    - https://github.com/shadowsocks/shadowsocks-libev
    - https://github.com/shadowsocks/v2ray-plugin
- https://github.com/Tsuk1ko/SS-and-SSR-Collection
- https://github.com/Captain-Alan/VPS-Recommendation

### office
- office 2019
`https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Office_16.25.19051201_Installer.pkg`
- 来源
https://bbs.feng.com/read-htm-tid-10731033.html
