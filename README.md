# macOS
## bash proxy
```
export {http,https,ftp}_proxy='http://127.0.0.1:1080'
export socks5_proxy='socks5://localhost:1080'
```
## brew
### 替换homebrew默认源
替换brew.git:
```
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
```
替换homebrew-core.git:
```
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
```
如果替换源之后brew update 没反应
```
cd "$(brew --repo)"
git pull origin master
```
切回官方源
重置brew.git:
```
cd "$(brew --repo)"
git remote set-url origin https://github.com/Homebrew/brew.git
```
重置homebrew-core.git:
```
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://github.com/Homebrew/homebrew-core.g
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
brew info python
brew install python
brew link python
brew cleanup
## other
- 通信自动音量调整关闭
```
通信前
printf "p *(char*)(void(*)())AudioDeviceDuck=0xc3\nq" | lldb -n QQ
printf "p *(char*)(void(*)())AudioDeviceDuck=0xc3\nq" | lldb -n WeChat
```
## Software
### Basic & Tools
- vscode
- iterm2
    - zsh z-plugin
- textastic

- 010 editor
- wireshark
- charles https://www.zzzmode.com/mytools/charles/
- proxyfier
- antsword
- ida
    - keypatch https://github.com/fjh658/keystone-engine
    - https://github.com/L4ys/LazyIDA
    - fix 10.14 crash https://github.com/fjh658/IDA7.0_SP
- burpsuite

### python
- brew install python
- brew install python@2
- pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some
### Note
- Mweb
    - with hexo
- Onenote
- 滴答清单
### 效率
- Alfred
    - find
    - clipboard
- Reeder (RSS)
    - with sync inoreader
### FTP
- transmit
### convenient
- Default Folder（finder 快速切换目录）
- New file nemu 新建文件
- bandzip 压缩
- bingpaper 壁纸
- iina 播放器
- source tree （git gui）
- teamviewer (anydesk/microsoft remote desktop)
- go2shell
- FDM 下载器
- 迅雷
- Scroll reverser 鼠标滚轮反转
### Visual
- PD/VMFUSION
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
    - 可分区，希捷移动硬盘 （配套 NTFS 管理)
- onedirve(不知道文件标识符问题修复了没，10.13没问题)
### access google
- https://github.com/JadaGates/ShadowsocksBio
- https://teddysun.com/486.html libdev
- https://github.com/Tsuk1ko/SS-and-SSR-Collection
- https://github.com/Captain-Alan/VPS-Recommendation
