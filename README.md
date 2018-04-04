# ArchWSL
ArchLinux on WSL (Windows 10 FCU or later)


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/WSL-DistroLauncher/img/Arch_Alpine_Ubuntu.png)

[![Build Status](https://img.shields.io/travis/yuk7/ArchWSL.svg?style=flat-square)](https://travis-ci.org/yuk7/ArchWSL)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)

### [Download](https://github.com/yuk7/ArchWSL/releases/latest)


## Requirements
* Windows 10 1709 Fall Creators Update 64bit or later.
* Windows Subsystem for Linux feature is enabled.

## Install
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer zip

#### 2. Extract all files in zip file to same directory

#### 3.Run Arch.exe as Administrator to Extract rootfs and Register to WSL
Exe filename is using to the instance name to register.
If you rename it you can register with a diffrent name.


#### 4. before use pacman,please initialize keyring.
```dos
>Arch.exe
[root@PC-NAME user]# pacman-key --init

[root@PC-NAME user]# pacman-key --populate

```


## How-to-Use(for Installed Instance)
#### exe Usage
```dos
Useage :
    <no args>
      - Launches the distro's default behavior. By default, this launches your default shell.

    run <command line>
      - Run the given command line in that distro.

    config [setting [value]]
      - `--default-user <user>`: Set the default user for this distro to <user>
      - `--default-uid <uid>`: Set the default user uid for this distro to <uid>
      - `--append-path <on|off>`: Switch of Append Windows PATH to $PATH
      - `--mount-drive <on|off>`: Switch of Mount drives

    get [setting]
      - `--default-uid`: Get the default user uid in this distro
      - `--append-path`: Get on/off status of Append Windows PATH to $PATH
      - `--mount-drive`: Get on/off status of Mount drives
      - `--lxuid`: Get LxUID key for this distro

    clean
     - Uninstalls the distro.

    help
      - Print this usage message.
```


#### Just Run exe
```dos
>Arch.exe
[root@PC-NAME user]#
```

#### Run with command line
```dos
>Arch.exe run uname -r
4.4.0-43-Microsoft

```

#### Change Default User(id command required)
```dos
>Arch.exe config --default-user user

>Arch.exe
[user@PC-NAME dir]$
```
If the default user has not been changed, please reboot the computer.(issue [#7](https://github.com/yuk7/ArchWSL/issues/7))


#### How to uninstall instance
```dos
>Arch.exe clean

```
