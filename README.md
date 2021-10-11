# ArchWSL
ArchLinux on WSL (Windows 10 FCU or later),
based on [wsldl](https://github.com/yuk7/wsldl).


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[![AppVeyor](https://img.shields.io/appveyor/ci/yuk7/ArchWSL.svg?logo=Windows&style=flat-square)](https://ci.appveyor.com/project/yuk7/archwsl)
[![FS-Workflows](https://img.shields.io/github/workflow/status/yuk7/ArchWSL-FS/Continuous%20Integration?logo=Linux&style=flat-square)](https://github.com/yuk7/ArchWSL-FS/actions)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
[![License](https://img.shields.io/github/license/yuk7/ArchWSL.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/blob/master/LICENSE)

[日本語](i18n/README_ja.md) | [简体中文](i18n/README_zh-cn.md) | [繁體中文](i18n/README_zh-tw.md) | [Español](i18n/README_es.md) | [Português](i18n/README_pt-br.md) | [한국어](i18n/README_ko-kr.md)

### [⬇Download](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Docs](https://wsldl-pg.github.io/ArchW-docs/)

## 💻Requirements
* Windows 10 1709 FCU x64 or later/ Windows 11 x64.
* Windows Subsystem for Linux feature is enabled.

## 💾Install
**For more details, refer to [docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**.

**※IF YOU USE WSL1, YOU MUST REPLACE GLIBC PACKAGE ON THE FIRST RUN OF INSTANCE, Please refer to [docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**

### 📁zip
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer zip file.

#### 2. Extract all files in the zip file to the same directory.
Please extract to a folder that you have full access permission.
For example, 'Program Files' can not be used.

#### 3. Run Arch.exe to Extract rootfs and Register to WSL.
Also, the name of the EXE file is used as the name of your WSL instance.
That means, if you copy multiple EXE files and rename them to different names, you can have multiple different ArchWSL at the same time without conflict.

#### 4. Initialize keyring of the pacman. (Optional)
This is not required, but you will need to do this if you want to use pacman.
See [docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#initialize-keyring).

### 📦appx
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer appx and cer file.
#### 2. Install cer file to "Trusted People" of the local machine.
For more details about this, please refer to [docs](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate).

You'll need administrator privileges to install the certificate!
#### 3. Double-click, install the appx file.

### 🥄 Scoop
#### 1. `scoop bucket add extras `
#### 2. `scoop install archwsl `

## 📝How-to-Use(for Installed Instance)
#### exe Usage
```dos
Usage :
    <no args>
      - Open a new shell with your default settings.

    run <command line>
      - Run the given command line in that instance. Inherit current directory.

    runp <command line (includes windows path)>
      - Run the given command line in that instance after converting its path.

    config [setting [value]]
      - `--default-user <user>`: Set the default user of this instance to <user>.
      - `--default-uid <uid>`: Set the default user uid of this instance to <uid>.
      - `--append-path <true|false>`: Switch of Append Windows PATH to $PATH
      - `--mount-drive <true|false>`: Switch of Mount drives
      - `--wsl-version <1|2>`: Set the WSL version of this instance to <1 or 2>
      - `--default-term <default|wt|flute>`: Set default type of terminal window.

    get [setting]
      - `--default-uid`: Get the default user uid in this instance.
      - `--append-path`: Get true/false status of Append Windows PATH to $PATH.
      - `--mount-drive`: Get true/false status of Mount drives.
      - `--wsl-version`: Get the version os the WSL (1/2) of this instance.
      - `--default-term`: Get Default Terminal type of this instance launcher.
      - `--lxguid`: Get WSL GUID key for this instance.

    backup [contents]
      - `--tar`: Output backup.tar to the current directory.
      - `--tgz`: Output backup.tar.gz to the current directory.
      - `--vhdx`: Output backup.ext4.vhdx to the current directory. (WSL2 only)
      - `--vhdxgz`: Output backup.ext4.vhdx.gz to the current directory. (WSL2 only)
      - `--reg`: Output settings registry file to the current directory.

    clean
      - Uninstall that instance.

    help
      - Print this usage message.
```

## ⬆️Update
### 📁zip
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer zip file.
#### 2. Extract exe file and `rootfs.tar.gz` from zip file and overwrite your existing ones.

### 📦appx
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer appx file.
#### 2. Double-click to install the update.

## 🚫Known issues
See [docs](https://wsldl-pg.github.io/ArchW-docs/).
