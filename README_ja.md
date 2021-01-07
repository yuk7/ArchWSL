# ArchWSL
Arch LinuxベースのWSLディストリビューション (Windows 10 FCU以降対応/[wsldl](https://github.com/yuk7/wsldl)ベース)

![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[![Build status zip](https://img.shields.io/github/workflow/status/yuk7/ArchWSL/Build%20zip%20CI?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABEWlDQ1BTa2lhAAAokYWRoU7DUBSGPwqGhAQEYgJxBQIDAZYQBGqIBlu2ZODarhSStWtuu4wXIBgMBk14CHgFPAEDD4EgaP6uojUb%2F82558vJyb33PxecFpKzBklaWM%2FtmP7ZuaEhP8wzZmsBfj%2FKHd625%2FTN0vIgykPlb0VhdbmOHIjX44qvSw4qvivZdr1j8aN4K25w0OBJkRXi17I%2FzGzJX%2BKjZDgO63ezEqW9U%2BW%2BYoN9dhSGLhaflJwLIrFhwhUFl6IcD5eOyFVPwlj1f1TPc6S3Hf7A4n1dCx7g5RZan3Vt8wlWb%2BD5PfOtPy0tKZx2u5rzvDvqv5jh1Uy9uoy0YoZyaDiR21DujfzvssfBH0tmRP2ZPyMqAAAABHNCSVQICAgIfAhkiAAAAzpJREFUaIHtmc9qFFkUxn%2F3VnWHmMSgouMYJepIEFFxMQPjA7h3JcwT%2BAyzm93gE%2BhCdOufhUuRwTdwIXGhwZlEF4ITRzSKSaeq7jmzuFXVf5Ku6lZJ30B%2F0HTRnOKer873nXNvF4wxxhhjjPENMMXFym2OJ3FjduA7V1NYrQ979OoE75I9lTFJvPHq2v3ltYHX7oAB%2BPsWx1yzsQImGurmpQRcdYxTw72XZ3BqqsK%2BpJLN%2F%2Fngxfth1geIATZpzlghWjhqUB38ZmMj7L81DFB%2Bba3z8uOBvhHvP29OaRRdAu4MvrqHLZcREAcig3%2FcvsEKdmr2A1XPZaJhMaJXhk0e8gqQJEizgat7mL0wkM7F2C9SGXZoZp0zcX91bGbCf5%2FSS4s3G1eNoVJroMtnZ7LH5ooXb1z8LOKrMISC%2FH3TFqZtZUwEXDzypn9KCqsfdDpz3KhbbzM1PFtrLKqmF4xBcw%2FQiB3DV%2BA74uBszYPvwD9v9PyT6ywAS2UFXO6BEsO4eSdhQBRiZRJKD4BaLQk0fpxn8qdzUCfHEWHi6WtaS4sKabcHxAGq7Dn98wjTq0d84DD7Lx6y8NATSFMwdrQeGAbGQMv6obvVA0q4%2Bi%2BgCpm%2FjAGSFKLcAxp68j1oV8CREyAfBgET6Uit7EISeRJaJB9w%2Fj453yG9iQHTVYGgs%2Ff5pd4EvgIpiAWXlfoJm8QWCZHvRDsrsJsIJEk%2BB7Kii4ZNQDsYlBJy8W6qQC8BQEXzLqS7gIDQ1YXWU4hjkCzPWwInID1dKHMYayArtxJfcbLZSfRKyDpiMflWQvAMQ2bQr426jLb%2BQ5aQts%2Fg7UEWdXqg%2BpA%2BcohCus1WwnW0UZVAK2AodA50zgGrZQVUJFwJafeWv2yjzRiyrAiS3MiBQtTLhq5Bln8r4AI3sfRsp7cg%2BAoUA6sfARewB2D7OdAFkbDPxtL%2BG3FbAkF3IfAKydGnAi5sD6hC5ttQhQd2MqMhIbUVCLgLGfIuVFOBYE1s%2FOGreDfnCSipAh83vLzevmthq99ZjAyqIJnTiaZdg3yc%2FQH25G%2F8robjKrT2%2FjAlp3%2BZm8QQHA0LzExFf81dfn531Ll8F%2FwPo73Ufbbb6f8AAAAASUVORK5CYII%3D&style=flat-square)](https://github.com/yuk7/ArchWSL/actions)
[![AppVeyor](https://img.shields.io/appveyor/ci/yuk7/ArchWSL.svg?logo=Windows&style=flat-square)](https://ci.appveyor.com/project/yuk7/archwsl)
[![Travis (.org)](https://img.shields.io/travis/yuk7/ArchWSL-FS.svg?logo=Linux&style=flat-square)](https://travis-ci.org/yuk7/ArchWSL-FS)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
![License](https://img.shields.io/github/license/yuk7/ArchWSL.svg?style=flat-square)

[English](https://github.com/yuk7/ArchWSL/blob/master/README.md)

### [⬇Download](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Docs](https://git.io/arch-doc)

## 💻システム要件
* Windows 10 1709 Fall Creators Update x64以上
* Windows Subsystem for Linux機能が有効であること.

## 💾インストール
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
「ローカルマシン」 の 「信頼されたルート証明書ストア」を手動で選択してインストールしてください。

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
      - `--append-path <on|off>`: Windows側のPATH設定をLinux側に引き継ぐ機能のon/offを設定します。
      - `--mount-drive <on|off>`: Windowsのドライブをマウントする機能のon/offを設定します。
      - `--default-term <default|wt|flute>`: デフォルトのターミナルを設定します。

    get [setting]
      - `--default-uid`: インスタンスのデフォルトユーザーのuidを取得します。
      - `--append-path`: Windows側のPATH設定をLinux側に引き継ぐ機能のon/offを確認します。
      - `--mount-drive`: Windowsのドライブをマウントする機能のon/offを確認します。
      - `--wsl-version`: WSLのバージョン(1/2)を確認します。
      - `--default-term`: このランチャーに設定されたデフォルトのターミナルを確認します。
      - `--lxuid`: システム内部で使用されているLxUIDを取得します。

    backup [contents]
      - `--tar`: カレントディレクトリにbackup.tarを出力します。
      - `--reg`: 設定のレジストリファイルをbackup.regとしてカレントディレクトリに出力します。
      
    clean
      - インスタンスをアンインストールします。

    help
      - helpを表示します。
```

## 🚫既知の問題
[Docs](https://git.io/arch-doc)を参照してください。
