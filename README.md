# ArchWSL
ArchLinux on WSL (Windows 10 FCU or later),
based on [wsldl](https://github.com/yuk7/wsldl).


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[![Build status zip](https://img.shields.io/github/workflow/status/yuk7/ArchWSL/Build%20Zip%20CI?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABEWlDQ1BTa2lhAAAokYWRoU7DUBSGPwqGhAQEYgJxBQIDAZYQBGqIBlu2ZODarhSStWtuu4wXIBgMBk14CHgFPAEDD4EgaP6uojUb%2F82558vJyb33PxecFpKzBklaWM%2FtmP7ZuaEhP8wzZmsBfj%2FKHd625%2FTN0vIgykPlb0VhdbmOHIjX44qvSw4qvivZdr1j8aN4K25w0OBJkRXi17I%2FzGzJX%2BKjZDgO63ezEqW9U%2BW%2BYoN9dhSGLhaflJwLIrFhwhUFl6IcD5eOyFVPwlj1f1TPc6S3Hf7A4n1dCx7g5RZan3Vt8wlWb%2BD5PfOtPy0tKZx2u5rzvDvqv5jh1Uy9uoy0YoZyaDiR21DujfzvssfBH0tmRP2ZPyMqAAAABHNCSVQICAgIfAhkiAAAAzpJREFUaIHtmc9qFFkUxn%2F3VnWHmMSgouMYJepIEFFxMQPjA7h3JcwT%2BAyzm93gE%2BhCdOufhUuRwTdwIXGhwZlEF4ITRzSKSaeq7jmzuFXVf5Ku6lZJ30B%2F0HTRnOKer873nXNvF4wxxhhjjPENMMXFym2OJ3FjduA7V1NYrQ979OoE75I9lTFJvPHq2v3ltYHX7oAB%2BPsWx1yzsQImGurmpQRcdYxTw72XZ3BqqsK%2BpJLN%2F%2Fngxfth1geIATZpzlghWjhqUB38ZmMj7L81DFB%2Bba3z8uOBvhHvP29OaRRdAu4MvrqHLZcREAcig3%2FcvsEKdmr2A1XPZaJhMaJXhk0e8gqQJEizgat7mL0wkM7F2C9SGXZoZp0zcX91bGbCf5%2FSS4s3G1eNoVJroMtnZ7LH5ooXb1z8LOKrMISC%2FH3TFqZtZUwEXDzypn9KCqsfdDpz3KhbbzM1PFtrLKqmF4xBcw%2FQiB3DV%2BA74uBszYPvwD9v9PyT6ywAS2UFXO6BEsO4eSdhQBRiZRJKD4BaLQk0fpxn8qdzUCfHEWHi6WtaS4sKabcHxAGq7Dn98wjTq0d84DD7Lx6y8NATSFMwdrQeGAbGQMv6obvVA0q4%2Bi%2BgCpm%2FjAGSFKLcAxp68j1oV8CREyAfBgET6Uit7EISeRJaJB9w%2Fj453yG9iQHTVYGgs%2Ff5pd4EvgIpiAWXlfoJm8QWCZHvRDsrsJsIJEk%2BB7Kii4ZNQDsYlBJy8W6qQC8BQEXzLqS7gIDQ1YXWU4hjkCzPWwInID1dKHMYayArtxJfcbLZSfRKyDpiMflWQvAMQ2bQr426jLb%2BQ5aQts%2Fg7UEWdXqg%2BpA%2BcohCus1WwnW0UZVAK2AodA50zgGrZQVUJFwJafeWv2yjzRiyrAiS3MiBQtTLhq5Bln8r4AI3sfRsp7cg%2BAoUA6sfARewB2D7OdAFkbDPxtL%2BG3FbAkF3IfAKydGnAi5sD6hC5ttQhQd2MqMhIbUVCLgLGfIuVFOBYE1s%2FOGreDfnCSipAh83vLzevmthq99ZjAyqIJnTiaZdg3yc%2FQH25G%2F8robjKrT2%2FjAlp3%2BZm8QQHA0LzExFf81dfn531Ll8F%2FwPo73Ufbbb6f8AAAAASUVORK5CYII%3D&style=flat-square)](https://github.com/yuk7/ArchWSL/actions/workflows/build-zip.yaml?query=event%3Apush)
[![AppVeyor](https://img.shields.io/appveyor/ci/yuk7/ArchWSL.svg?logo=Windows&style=flat-square)](https://ci.appveyor.com/project/yuk7/archwsl)
[![Travis (.org)](https://img.shields.io/travis/yuk7/ArchWSL-FS.svg?logo=Linux&style=flat-square)](https://travis-ci.org/yuk7/ArchWSL-FS)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
[![License](https://img.shields.io/github/license/yuk7/ArchWSL.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/blob/master/LICENSE)

[日本語](i18n/README_ja.md) | [简体中文](i18n/README_zh-cn.md) | [繁體中文](i18n/README_zh-tw.md) | [Español](i18n/README_es.md) | [Português](i18n/README_pt-br.md) | [한국어](i18n/README_ko-kr.md)

### [⬇Download](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Docs](https://wsldl-pg.github.io/ArchW-docs/)

## 💻Requirements
* Windows 10 1903 x64 or later / Windows 11 x64.
* Windows Subsystem for Linux feature is enabled.
* WSL2 and Linux kernel package.

## 💾Install
**For more details, refer to [docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**.
### 📁zip
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer zip file.

#### 2. Extract all files in zip file to same directory.
Please extract to a folder that you has full access permission.
For example, 'Program Files' can not be used.

#### 3. Run Arch.exe to Extract rootfs and Register to WSL.
Also, the name of the EXE file is used as the name of your WSL instance.
That means, if you copy multiple EXE files and rename them to different names, you can have multiple different ArchWSL at the same time without conflict.

#### 4. Initialize keyring of the pacman. (Optional)
This is not required, but you will need to do this if you want to use pacman.
See [docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#initialize-keyring).

### 📦appx
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer appx and cer file.
#### 2. Install cer file to "Trusted Root Certification Authorities" of the local machine.
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
      - `--append-path <on|off>`: Switch of Append Windows PATH to $PATH
      - `--mount-drive <on|off>`: Switch of Mount drives
      - `--default-term <default|wt|flute>`: Set default type of terminal window.

    get [setting]
      - `--default-uid`: Get the default user uid in this instance.
      - `--append-path`: Get on/off status of Append Windows PATH to $PATH.
      - `--mount-drive`: Get on/off status of Mount drives.
      - `--wsl-version`: Get the version os the WSL (1/2) of this instance.
      - `--default-term`: Get Default Terminal type of this instance launcher.
      - `--lxguid`: Get WSL GUID key for this instance.

    backup [contents]
      - `--tar`: Output backup.tar to the current directory.
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
