# ArchWSL
Arch LinuxベースのWSLディストリビューション (Windows 10 FCU以降対応/[wsldl](https://github.com/yuk7/wsldl)ベース)

![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[English](https://github.com/yuk7/ArchWSL/blob/master/README.md)

### [⬇Download](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Docs](https://git.io/arch-doc)

## 💻システム要件
* Windows 10 1709 Fall Creators Update x64以上
* Windows Subsystem for Linux機能が有効であること.

## 💾インストール
**詳細は[docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)を参照してください**

**※WSL1を使用する場合は初回起動時にglibcパッケージを必ず置き換える必要があります、[docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)を参照してください**

### 📁zipバージョン
このバージョンの場合は、複数インストールや任意名でのインストール等の機能が使用可能です
#### 1. zipファイルを[ダウンロード](https://github.com/yuk7/ArchWSL/releases/latest)

#### 2. zip内のファイルをすべて同じ場所に展開
フルアクセス権が付与されたフォルダにインストールしてください。
たとえば、'Program Files'は使えません。

#### 3. Arch.exeを実行してWSLにインストールします。
exeのファイル名はインストール名に使用されます。
リネームすることでご自由な名前でインストールすることが出来、複数インストールも可能です。

### 📦appxバージョン
このバージョンの場合は、ストアアプリパッケージとしてインストール/管理できます。
#### 1. .appxと署名ファイル.cerを[ダウンロード](https://github.com/yuk7/ArchWSL/releases/latest)
#### 2. .cerを信頼されたルート証明書としてインストール
「ローカルコンピューター」 の 「信頼されたルート証明機関」を手動で選択してインストールしてください。

詳細手順は[ドキュメントを参照してください](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate)を参照
#### 3. .appxをインストール

### 🥄 Scoop
`scoop bucket add extras `

`scoop install archwsl `

## 📝使い方(インストール後)
#### exe Usage
```dos
Usage :
    <引数なし>
      - デフォルト設定で新しいシェルを起動します

    run <command line>
      - 与えられたコマンドラインをインスタンス内で実行します。 カレントディレクトリが引き継がれます。

    runp <command line (windowsのパスを含む)>
      - 与えられたコマンドラインのパスを変換した上でインスタンス内で実行します。

    config [setting [value]]
      - `--default-user <user>`: インスタンスのデフォルトユーザーを<user>に設定します。
      - `--default-uid <uid>`: インスタンスのデフォルトユーザーのuidを<uid>に設定します。
      - `--append-path <true|false>`: Windows側のPATH設定をLinux側に引き継ぐ機能のtrue/falseを設定します。
      - `--mount-drive <true|false>`: Windowsのドライブをマウントする機能のtrue/falseを設定します。
      - `--wsl-version <1|2>`: インスタンスのWSLバージョンの1/2を設定します。
      - `--default-term <default|wt|flute>`: デフォルトのターミナルを設定します。

    get [setting]
      - `--default-uid`: インスタンスのデフォルトユーザーのuidを取得します。
      - `--append-path`: Windows側のPATH設定をLinux側に引き継ぐ機能のtrue/falseを確認します。
      - `--mount-drive`: Windowsのドライブをマウントする機能のtrue/falseを確認します。
      - `--wsl-version`: WSLのバージョン(1/2)を確認します。
      - `--default-term`: このランチャーに設定されたデフォルトのターミナルを確認します。
      - `--lxguid`: システム内部で使用されているLxGUIDを取得します。

    backup [contents]
      - `--tar`: カレントディレクトリにbackup.tarを出力します。
      - `--tar`: カレントディレクトリにbackup.tarを出力します。
      - `--tgz`: カレントディレクトリにbackup.tar.gzを出力します。
      - `--vhdx`: カレントディレクトリにbackup.ext4.vhdxを出力します。 (WSL2のみ)
      - `--vhdxgz`: カレントディレクトリにbackup.ext4.vhdx.gzを出力します。 (WSL2のみ)
      - `--reg`: 設定のレジストリファイルをbackup.regとしてカレントディレクトリに出力します。
      
    clean
      - インスタンスをアンインストールします。

    help
      - helpを表示します。
```

## 🚫既知の問題
[Docs](https://git.io/arch-doc)を参照してください。
