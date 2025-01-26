# 
# WSL: Windwos Subsystem Linux
#       wsl
#           --status: 状态
#           --list --all: 列出
#           --distribution <Distro>: 运行指定发行版
#           --terminate <Distro>: 停止指定发行版本
#           --shudown: 关闭WSL
#           --update: 更新WSL
#           --setdefault <Distro>: 设置默认发行版
#           --install <Distro>: 安装指定发行版
#           --export <Distro> <FileName> [Options]
#           --import <Distro> <InstallLocation> <FileName> [Options]
#           --unregister <Distro>
#       wslenv
#           /p: 在 WSL/Linux 样式路径与 Win32 路径之间转换路径。
#           /l: 指示环境变量是路径列表。
#           /u: 指示仅当从 Win32 运行 WSL 时，才应包含此环境变量。
#           /w: 指示仅当从 WSL 运行 Win32 时，才应包含此环境变量。
#           WSLENV=GOPATH/l:USERPROFILE/w:SOMEVAR/wp
#       必要配置:
#           Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
#           Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
#       文件系统:
#           \\wsl$

# 
# 解压 Arch.zip
# 运行 Arch.exe
# 

# 解压后配置环境
passwd

# 配置pacman
pacman-key --init
pacman-key --populate
pacman -Sy archlinux-keyring

# 配置普通用户
pacman -Sy zsh
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
useradd --create-home --groups wheel --shell /bin/zsh china
passwd china

exit

# 设置WSL默认登陆用户
Arch.exe config --default-user china

# 安装docker
pacman -Sy make fzf \
            clang \
            rust \
            docker docker-compose

cargo install cargo-update \
    zoxide \
    lsd \
    fd-find \
    ripgrep \
    sd \
    bat \
    tre-command \
    huniq \
    procs \
    bottom \
    hyperfine \
    git-delta \
    vivid \
    navi