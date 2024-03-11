# ArchWSL

适用于 Windows 10 秋季创意者更新及更新版本的，基于 [wsldl](https://github.com/yuk7/wsldl) 的，运行在 WSL 上的 Arch Linux。

<div align="center">

![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[![AppVeyor](https://img.shields.io/appveyor/ci/yuk7/ArchWSL.svg?logo=Windows&style=flat-square)](https://ci.appveyor.com/project/yuk7/archwsl)
[![FS-Workflows](https://img.shields.io/github/workflow/status/yuk7/ArchWSL-FS/Continuous%20Integration?logo=Linux&style=flat-square)](https://github.com/yuk7/ArchWSL-FS/actions)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
[![License](https://img.shields.io/github/license/yuk7/ArchWSL.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/blob/master/LICENSE)

[English](https://github.com/yuk7/ArchWSL/blob/master/README.md) | [日本語]([README_ja.md](https://github.com/yuk7/ArchWSL/blob/master/i18n/README_ja.md)) | [简体中文](https://github.com/yuk7/ArchWSL/blob/master/i18n/README_zh-cn.md) | [繁體中文](https://github.com/yuk7/ArchWSL/blob/master/README_zh-tw.md) | [Español](https://github.com/yuk7/ArchWSL/blob/master/README_es.md) | [Português](https://github.com/yuk7/ArchWSL/blob/master/README_pt-br.md) | [한국어](https://github.com/yuk7/ArchWSL/blob/master/README_ko-kr.md)

[⬇ GitHub 下载](https://github.com/yuk7/ArchWSL/releases/latest) | [⬇ Gitee 镜像下载](https://gitee.com/yuk7/archwsl-mirror) | [📓 文档](https://wsldl-pg.github.io/ArchW-docs/)

</div>

## 💻 需求
- Windows 10 1709 秋季创意者更新及之后的 x64 版本，或 Windows 11 的任意版本；
- `适用于 Linux 的 Windows 子系统` 功能已打开。

## 💾 安装
**如果需要更多信息，请参考 [文档](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**。

**如果你使用 WSL1，在实例的初次运行时，你必须更换其 glibc 包。详情请参考 [文档](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**。

### 📁 zip

1. [此处](https://github.com/yuk7/ArchWSL/releases/latest) 下载 `zip` 形式的安装包。

2. 将 `zip` 安装包中的所有文件解压到同一个目录里。

    ⚠️ 请确保 `zip` 安装包解压在一个程序拥有写权限的目录里。例如，`Program Files` 就是一个不恰当的目录。

3. 运行**解压后的** `Arch.exe` 来解包 `rootfs`，并将实例注册到 WSL。

    同时，`exe` 文件的文件名将会作为新的 WSL 实例的名称。

    这说明，如果你复制多个具有不同的文件名的 `exe` 文件，则安装后，你将拥有互不冲突的，不同的 `ArchWSL` 实例。

4. （可选）注册 Pacman Keyring。

    这并不是必须的操作。如果你想要使用 Pacman，请参见 [文档](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#initialize-keyring)。

### 📦 appx

1. [此处](https://github.com/yuk7/ArchWSL/releases/latest) 下载 `zip` 形式的安装包和 `cer` 文件。

2. 安装 `cer` 文件到 **本地计算机** 的 **受信任人**。

    更多详情，请参见 [文档](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate)。你需要管理员权限来安装证书。

3. 双击以安装 `.appx` 文件。

### 🥄 Scoop

1. 输入 `scoop bucket add extras` 为 `scoop` 添加 `bucket`

2. 输入 `scoop install archwsl` 以安装 `archwsl`

## 📝 如何使用（适用于已安装的实例）

### 对于 `exe` 文件

```dos
用例:
    <无参数>
      - 使用默认参数打开一个新的 Shell。

    run <command line>
      - 继承当前目录并运行给定的命令行指令。

    runp <command line (includes windows path)>
      - 在切换目录后运行给定的命令行指令。

    config [setting [value]]
      - `--default-user <user>`: 将 <user> 设置为该实例的默认用户。
      - `--default-uid <uid>`: 将 <uid> 设置为该实例默认用户的 uid。
      - `--append-path <true|false>`: 是否将 Windows Path 加入 $PATH。
      - `--mount-drive <true|false>`: 是否挂载驱动器。
      - `--wsl-version <1/2>`: 切换该实例的 WSL 版本到 1 或 2。
      - `--default-term <default|wt|flute>`: 设置终端窗口的默认样式。

    get [setting]
      - `--default-uid`: 获取该实例中默认用户的 uid。
      - `--append-path`: 获取是否已经将 Windows Path 加入了 $PATH。
      - `--mount-drive`: 获取是否已经挂载了驱动器。
      - `--wsl-version`: 获取当前实例的 WSL 版本（1 或 2）。
      - `--default-term`: 获取当前终端窗口的默认样式。
      - `--lxguid`: 获取当前实例的 WSL GUID key。

    backup [contents]
      - `--tar`: 在当前文件夹下输出 backup.tar。
      - `--tgz`: 在当前文件夹下输出 backup.tar.gz。
      - `--vhdx`: （仅 WSL2）在当前文件夹下输出 backup.ext4.vhdx。
      - `--vhdxgz`: （仅 WSL2）在当前文件夹下输出 backup.ext4.vhdx.gz。
      - `--reg`: 在当前文件夹下输出注册表配置文件。

    clean
      - 卸载该实例。

    help
      - 打印该用例信息。
```

## ⬆️ 更新

### 📁 zip

1. [此处](https://github.com/yuk7/ArchWSL/releases/latest) 下载 `zip` 形式的安装包。

2. 从安装包中解压 `exe` 文件和 `rootfs.tar.gz`，并覆盖已有文件。

### 📦 appx

1. [此处](https://github.com/yuk7/ArchWSL/releases/latest) 下载 `appx` 形式的安装包。

2. 双击以安装更新。

## 🚫 已知问题

详见 [文档](https://wsldl-pg.github.io/ArchW-docs/)。
