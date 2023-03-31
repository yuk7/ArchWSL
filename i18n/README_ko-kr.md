# ArchWSL
WSL 위에서 돌아가는 아치 리눅스 (Windows 10 1909 이상,
[wsldl](https://github.com/yuk7/wsldl) 기반)


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)



[English](https://github.com/yuk7/ArchWSL/blob/master/README.md) | [Deutsch](https://github.com/yuk7/ArchWSL/blob/master/README_de.md)

### [⬇다운로드](https://github.com/yuk7/ArchWSL/releases/latest) || [📓문서](https://wsldl-pg.github.io/ArchW-docs/)

## 💻필수사양
* Windows 10 1903 x64 이상 / Windows 11 x64
* WSL 기능 켜져 있기
* WSL2, 리눅스 커널 패키지

## 💾설치하기
**[자세한 내용은 관련 문서를 참조해주십시오.](https://wsldl-pg.github.io/ArchW-docs/locale/ko-KR/How-to-Setup)**
### 📁zip
#### 1. 설치파일 zip [다운로드하기](https://github.com/yuk7/ArchWSL/releases/latest)

#### 2. zip 파일에 있는 모든 파일들을 같은 디렉토리에 압축해제하십시오.
쓰기 권한이 있는 경로에 압축 해제 하십시오.
예를 들어, C:\Program Files 는 사용될 수 없습니다.

#### 3. Arch.exe 를 실행해 루트 파일시스템을 압축해제하고 WSL에 등록하십시오.
`.exe`의 이름이 설치될 인스턴스의 이름입니다. 이를 이용하여 같은 배포판을 여러개 설치 가능합니다.

### 📦appx 패키지

#### 1. [`.appx` 와 `.cer` 를 다운로드하십시오](https://github.com/yuk7/ArchWSL/releases/latest)
#### 2. `.cer` 파일을 기기의 "신뢰할 수 있는 루트 인증 기관" 에 설치하십시오.
   인증서 설치를 위해서는 관리자 권한이 필요합니다.


#### 3. .appx 설치하기

### 🥄 Scoop
#### 1. `scoop bucket add extras `
#### 2. `scoop install archwsl `

## 📝사용법(설치된 인스턴스)
#### exe 사용법
```dos
사용법 :
    <인수 없음>
      - 기본 설정으로 새로운 쉘을 엽니다.


    run <command line>
      - 현재 디렉토리에서 주어진 명령을 실행합니다.

    runp <command line (실행할 디렉토리 경로)>
      - 주어진 경로에서 명령을 실행합니다.

    config [setting [value]]
      - `--default-user <user>`: 배포판의 기본 유저를 <user> 로 설정
      - `--default-uid <uid>`: 배포판의 기본 유저 uid를 <uid> 로 설정
      - `--append-path <on|off>`: 환경 변수 PATH 를 $PATH 에 추가하기
      - `--mount-drive <on|off>`: 드라이브 마운트 켜기/끄기

    get [setting]
      - `--default-uid`: 배포판의 기본 uid 출력
      - `--append-path`: PATH를 $PATH에 추가했는지 확인하기
      - `--mount-drive`: 드라이브 마운트 설정 확인하기
      - `--lxguid`: 본 배포판의 WSL GUID 키 가져오기

    backup [contents]
      - `--tar`: backup.tar을 현재 디렉토리에 생성하기
      - `--reg`: 설정 레지스트리 파일을 현재 디렉토리에 생성하기

    clean
      - 설치를 제거합니다.

    help
      - 본 사용법 메시지를 출력합니다.

```

## ⬆️업데이트하기
### 📁zip
#### 1. 설치파일 zip [다운로드하기](https://github.com/yuk7/ArchWSL/releases/latest)
#### 2. 루트 파일시스템과 .exe를 zip파일에서 추출하고 덮어쓰십시오.

### 📦appx
#### 1. 설치파일 .appx [다운로드하기](https://github.com/yuk7/ArchWSL/releases/latest)
#### 2.Overwrite install .appx

## 🚫알려진 문제점
[관련 문서](https://wsldl-pg.github.io/ArchW-docs/)를 참조해주십시오.
