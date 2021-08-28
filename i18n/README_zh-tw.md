# ArchWSL
WSL 的 ArchLinux 封裝，可用於 Windows 10 1709 或是更高的版本，
基於 [wsldl](https://github.com/yuk7/wsldl)。


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[English](https://github.com/yuk7/ArchWSL/blob/master/README.md)

### [⬇下載](https://github.com/yuk7/ArchWSL/releases/latest) | [📓文檔](https://git.io/arch-doc)

## 💻系統需求
* Windows 10 1709 秋季創意者更新 64位元版本，或是更新。
* “適用於 Linux 的 Windows 子系統” 功能處於開啓狀態。

## 💾安裝
**[更多詳情，請查看文檔](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**
### 📁Zip
#### 1. [下載](https://github.com/yuk7/ArchWSL/releases/latest) 安裝 zip 檔案。

#### 2. 釋放壓縮檔中的所有檔案至相同目錄。
請使用一個你擁有全部訪問權限的資料夾！

例如，不要使用”Program Files“。

#### 3. 執行 Arch.exe 以釋放rootfs及登錄檔配置至WSL。

順帶一提，EXE執行檔文件名會被用作WSL實例名稱。

也就是說，若是爲其指定新的文件名，則可以多次安裝。

### 📦appx
#### 1. [下載](https://github.com/yuk7/ArchWSL/releases/latest) 安裝器 .appx 和 .cer 檔案。
#### 2. 裝入 .cer 檔案至 “本地計算機” 的 "Trusted Root Certification Authorities"
[更多詳情，請查看文檔](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate)。

你必須具有管理者特權才可以安裝證書檔！
#### 3. 安裝 .appx

### 🥄 Scoop
`scoop bucket add extras `

`scoop install archwsl `

## 📝如何使用(對於安裝後的實例)
#### exe 用法
```dos
用法 :
    <無參數>
      - 以你的預先設定打開一個新的Shell。

    run <命令行>
      - 在指定的發行版中運行你所給出的命令，繼承當前Shell的所在位址。

    runp <命令行 (包含 windows 位址)>
      - 在指定的發行版裡運行轉譯過的命令行。

    config [setting [值]]
      - `--default-user <使用者>`: 在此發行版中設定默認使用者到 <使用者>。
      - `--default-uid <uid>`: 在此發行版中設置默認使用者 UID 成 <uid>。
      - `--append-path <on|off>`: 加入 Windows PATH 到 $PATH 的開關。
      - `--mount-drive <on|off>`: 裝載驅動器的開關。
      - `--default-term <default|wt|flute>`: 設置默認的終端窗口。

    get [setting]
      - `--default-uid`: 顯示此發行版的默認使用者UID。
      - `--append-path`: 顯示”加入 Windows PATH 到 $PATH“的開關狀態。
      - `--mount-drive`: 顯示”自動裝載驅動器”的開關狀態。
      - `--wsl-version`: 顯示此發行版的WSL版本（1/2）。
      - `--default-term`: 顯示此發行版啟動器的默認終端。
      - `--lxguid`: 顯示此發行版的 WSL GUID key。

    backup [contents]
      - `--tar`: 輸出 backup.tar 到當前目錄
      - `--reg`: 輸出設置登錄檔檔案到當前目錄。

    clean
      - 解除安裝此發行版。

    help
      - 顯示此幫助資訊。
```

## ⬆️更新
### 📁zip
#### 1. [下載](https://github.com/yuk7/ArchWSL/releases/latest) 安裝器 zip 檔案。
#### 2. 提取 Zip 檔案中的 .exe 和 rootfs.tar.gz，然後覆寫你已有的檔案。

### 📦appx
#### 1. [下載](https://github.com/yuk7/ArchWSL/releases/latest) 安装器 .appx 檔案。
#### 2. 覆寫已有的 .appx 檔案。

## 🚫已知問題
請查看 [文檔](https://git.io/arch-doc).
