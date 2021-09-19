# ArchWSL
WSL 的 ArchLinux 封装，适用于 Windows 10 1709 或更高版本，
基于 [wsldl](https://github.com/yuk7/wsldl)。


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)



[English](https://github.com/yuk7/ArchWSL/blob/master/README.md)

### [⬇GH下载](https://github.com/yuk7/ArchWSL/releases/latest) | [⬇镜像下载](https://gitee.com/yuk7/archwsl-mirror) | [📓文档](https://wsldl-pg.github.io/ArchW-docs/)

## 💻系统需求
* Windows 10 1709 秋季创意者更新或者更高版本 / 任何版本的 Windows 11
* 开启 `适用于 Linux 的 Windows 子系统` 功能
* WSL2 的 Linux 内核包

## 💾安装
**[更多详情，请查看文档](https://wsldl-pg.github.io/ArchW-docs/locale/zh-CN/How-to-Setup/)**

**※若你使用 WSL1 ，你将必须修改一下 glibc 包。更多详情，请查看[文档对应章节](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**

### 📁Zip
#### 1. 下载 [[GH](https://github.com/yuk7/ArchWSL/releases/latest)/[镜像](https://gitee.com/yuk7/archwsl-mirror)] zip 安装包。

#### 2. 解压缩 zip 文件中的全部内容到相同的目录。
请解压到一个你拥有写权限的目录。

例如， `C:\Program Files` 就不该被使用。

#### 3. 运行 `Arch.exe` 来安装 rootfs 和注册表配置。

另外，EXE 文件的名称会同时用作你的 WSL 实例名称。

也就是说，如果复制多个 EXE 文件，并重命名成不同的名称，你就同时拥有了多个不同的 ArchWSL 并且互不冲突。

#### 4. 初始化 pacman keyring (可选)
这并不是必须的，但若是你想要使用 pacman，则你需要进行此操作。
请查看对应[文档页面](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#initialize-keyring)。

### 📦appx
#### 1. 从 [[GH](https://github.com/yuk7/ArchWSL/releases/latest)/[镜像](https://gitee.com/yuk7/archwsl-mirror)] 下载发布的 .appx 和 .cer 文件。

#### 2. 安装 .cer 文件到 “本地计算机” 的 “受信任人”。
更多详情，请查看对应[文档页面](https://wsldl-pg.github.io/ArchW-docs/locale/zh-CN/Install-Certificate/)。

你必须有管理员权限才能安装证书！
#### 3. 安装 .appx 。

### 🥄 Scoop
`scoop bucket add extras `

`scoop install archwsl `

## 📝如何使用(对于已安装的实例)
#### exe 用法
```shell
用法 :
    <无参数>
      - 以你的默认设置打开一个新的Shell。

    run <命令行>
      - 在此实例中运行你所给出的命令，继承当前Shell的所在目录。

    runp <命令行 (包含 windows 路径)>
      - 在此实例里运行转译过的命令行。

    config [setting [值]]
      - `--default-user <用户>`: 设定此实例的默认用户到 <用户>。
      - `--default-uid <uid>`: 设定此实例的默认用户 UID 到 <uid>。
      - `--append-path <on|off>`: 加入 Windows PATH 到 $PATH 的开关。
      - `--mount-drive <on|off>`: 挂载驱动器的开关。
      - `--wsl-version <1|2>`: Set the WSL version of this instance to <1 or 2>
      - `--default-term <default|wt|flute>`: 设置默认的终端窗口样式。

    get [setting]
      - `--default-uid`: 输出此实例的默认用户UID。
      - `--append-path`: 输出”加入 Windows PATH 到 $PATH“的开关状态。
      - `--mount-drive`: 输出”挂载驱动器”的开关状态。
      - `--wsl-version`: 输出此实例的WSL版本（1/2）。
      - `--default-term`: 输出此实例启动器的默认终端样式。
      - `--lxguid`: 输出此实例的 WSL GUID key。

    backup [contents]
      - `--tar`: 在当前目录输出 backup.tar 文件。
      - `--tgz`: 在当前目录输出 backup.tar.tar 文件。
      - `--vhdx`: 在当前目录输出 backup.ext4.vhdx 文件。（仅 WSL2）
      - `--vhdxgz`: 在当前目录输出 backup.ext4.vhdx.gz 文件。（仅 WSL2）
      - `--reg`: 在当前目录输出注册表配置文件。

    clean
      - 卸载此实例。

    help
      - 显示此帮助信息。
```

## ⬆️更新
### 📁zip
#### 1. [下载](https://github.com/yuk7/ArchWSL/releases/latest) 发布的 zip 文件。
#### 2. 从 zip 包中解压 .exe 和 rootfs.tar.gz，然后覆盖你已有的文件。

### 📦appx
#### 1. [下载](https://github.com/yuk7/ArchWSL/releases/latest) 发布的 .appx 文件。
#### 2. 覆盖已有的 .appx 文件。

## 🚫已知问题
请查看 [文档](https://wsldl-pg.github.io/ArchW-docs/locale/zh-CN/)。
