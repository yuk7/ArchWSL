# ArchWSL

WSL 환경 (Windows 10 FCU 버전 이상)에서 실행되는, [wsldl](https://github.com/yuk7/wsldl) 기반의 Arch Linux 배포판입니다.

![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[English](https://github.com/yuk7/ArchWSL/blob/master/README.md) | [日本語](i18n/README_ja.md) | [简体中文](i18n/README_zh-cn.md) | [繁體中文](i18n/README_zh-tw.md) | [Español](i18n/README_es.md) | [Português](i18n/README_pt-br.md) | [Deutsch](i18n/README_de.md)

### [⬇ 다운로드](https://github.com/yuk7/ArchWSL/releases/latest) | [📓 개발 문서](https://wsldl-pg.github.io/ArchW-docs/)

## 💻 선행 조건
* Windows 10, 1709 FCU (x64) 또는 그 이상의 버전 / Windows 11 (x64)
* Windows 기능 켜기/끄기에서 'Linux용 Windows 하위 시스템' 기능 활성화

## 💾 설치 방법

**자세한 내용은 [관련 문서](https://wsldl-pg.github.io/ArchW-docs/locale/ko-KR/How-to-Setup)를 참조하세요.**

### 📁 zip

#### 1. [.zip 압축 파일](https://github.com/yuk7/ArchWSL/releases/latest)을 다운로드하세요.

#### 2. zip 파일에 포함된 모든 파일을 같은 디렉토리에 압축 해제해주세요.

쓰기 권한이 있는 경로에 압축 해제해주세요.
예를 들어, 'C:\Program Files'에는 압축 해제할 수 없습니다.

#### 3. Arch.exe를 실행해 루트 파일 시스템 (rootfs)을 압축 해제하고 WSL에 새로운 배포판을 등록하세요.

이때, `.exe` 파일의 이름은 새로 생성할 WSL 인스턴스의 이름으로 사용되며, 이를 이용해 같은 종류의 배포판을 여러 개 설치 가능합니다.

### 📦 appx

#### 1. [`.appx` 패키지 파일과 `.cer` 인증서 파일](https://github.com/yuk7/ArchWSL/releases/latest)을 다운로드하세요.

#### 2. `.cer` 인증서 파일을 "Trusted People" 저장소에 설치하세요.

자세한 내용은 [관련 문서](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate)를 참조하세요.

인증서 설치를 위해서는 관리자 권한이 필요합니다.

#### 3. .appx 파일을 실행하여 설치를 진행하세요.

### 🥄 Scoop
#### 1. `scoop bucket add extras`
#### 2. `scoop install archwsl`

## 📝 사용법 (설치된 인스턴스)

#### .exe 사용법

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

## ⬆️ 업데이트 방법

### 📁 zip

#### 1. [.zip 압축 파일](https://github.com/yuk7/ArchWSL/releases/latest)을 다운로드하세요.

#### 2. .exe 파일과 루트 파일 시스템 (`rootfs.tar.gz`)을 압축 해제하고, 기존 파일에 덮어쓰세요.

### 📦 appx

#### 1. [`.appx` 패키지 파일](https://github.com/yuk7/ArchWSL/releases/latest)을 다운로드하세요.

#### 2. .appx 파일을 실행하여 업데이트를 시작하세요.

## 🚫 알려진 문제점
[관련 문서](https://wsldl-pg.github.io/ArchW-docs/)를 참조하세요.
