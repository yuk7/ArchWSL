# ArchWSL
ArchLinux on WSL (Windows 10 FCU oder später),
based on [wsldl](https://github.com/yuk7/wsldl).


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[![AppVeyor](https://img.shields.io/appveyor/ci/yuk7/ArchWSL.svg?logo=Windows&style=flat-square)](https://ci.appveyor.com/project/yuk7/archwsl)
[![FS-Workflows](https://img.shields.io/github/workflow/status/yuk7/ArchWSL-FS/Continuous%20Integration?logo=Linux&style=flat-square)](https://github.com/yuk7/ArchWSL-FS/actions)
[![Github Alle veröffentlichungen](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)
[![PRs sind Wilkommen](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
[![Lizenz](https://img.shields.io/github/license/yuk7/ArchWSL.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/blob/master/LICENSE)

[日本語](i18n/README_ja.md) | [简体中文](i18n/README_zh-cn.md) | [繁體中文](i18n/README_zh-tw.md) | [Español](i18n/README_es.md) | [Português](i18n/README_pt-br.md) | [한국어](i18n/README_ko-kr.md) | [English](README.md)

### [⬇Download](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Dokumentation](https://wsldl-pg.github.io/ArchW-docs/)

## 💻Requirements
* Windows 10 1709 FCU x64 oder später/ Windows 11 x64.
* Windows Subsystem für Linux feature muss aktiviert sein.

## 💾Install
**Für mehr Deteils, lese dies [Dokumentation](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**.

**※WENN DU WSL1 VERWENDEST, MUSST DU, VOR DEM ERSTEN START DER INSTANZ, DAS GLIBC PAKET AUSTAUSCHEN, lese hierfür die [Dokumentation](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**

### 📁zip
#### 1. Lade die installations Datei im ZIP Format herunter. [Downloads](https://github.com/yuk7/ArchWSL/releases/latest).

#### 2. Entpacke alle Dateien aus dem ZIP-Archiv in den selben Ordner.
Bitte entpacke das ZIP-Archiv in einen Ordner für den du den Vollzugriff besitzt.
Als Beispiel: 'Program Files' kann nicht genutzt werden.

#### 3. Führe Arch.exe aus um das rootfs zu entpacken und die Instance in WSL zu registrieren.
Zudem wird der name der EXE-Datei als Namen für die WSL Instanz genutzt.
Das bedeutet, dass wenn du die EXE-Datei kopierst und jedes mal umbenennst, kannst du, ohne Probleme, mehrere ArchWSL Instanzen haben.

#### 4. Initsialisiere Pacman's Keyring. (Optional)
Diesen schritt musst du nur durchführen, wenn du pacman nutzen möchtest.
Siehe die [Dokumentation](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#initialize-keyring).

### 📦appx
#### 1. Lade die appx und cer Datei herunter. [Download](https://github.com/yuk7/ArchWSL/releases/latest).
#### 2. Installiere die cer Datei als "Vertauenswürdigen Personen" mit dem Speicherort "Lokalen Computer".
Für weitere Informationen, siehe die [Dokumentation](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate) zu rate.
Damit du das Zertifikat installieren kannst, benötigst du Administratorrechte.

#### 3. Doppelklicke die appx Datei um sie zu installieren.

### 🥄 Scoop
#### 1. `scoop bucket add extras `
#### 2. `scoop install archwsl `

## 📝Wie wird es verwendet (für installierte Instanzen)
#### exe Benutzung
```dos
Benutzung:
    <keine Argumente>
      - Öffnet eine neue Konsole mit den standard Einstellungen.

    run <Befehl>
      - Führt den Befehl in der Instanz aus. Dabei wird der aktuelle Ordner als Ausführungspunkt verwendet.

    runp <Befehl (inklusive des Windows Paths)>
      - Führt den Befehl in der Instanz aus nachdem der Windows Path eingebunden wurde.

    config [einstellung [wert]]
      - `--default-user <Benutzer>`: Setzt den standard Benutzer der Instanz zu <Benutzer>.
      - `--default-uid <uid>`: Setzt die standard uid der Instanz auf <uid>.
      - `--append-path <true|false>`: Schalter um zu entscheiden, ob der Windows Path nach $PATH eingepflegt werden soll.
      - `--mount-drive <true|false>`: Schalter um zu entscheiden, ob die Laufwerke eingebunden werden sollen.
      - `--wsl-version <1|2>`: Setzt die zu verwendene WSL Version der Instanz <1 oder 2>
      - `--default-term <default|wt|flute>`: Entscheidet welcher Terminal Typ verwendet werden soll.

    get [setting]
      - `--default-uid`: Gibt die standard Nutzer uid aus.
      - `--append-path`: Gibt aus ob der Windows Path eingepflegt wird.
      - `--mount-drive`: Gibt aus ob die Laufwerke eingebunden werden.
      - `--wsl-version`: Gibt die aktuell verwendete WSL Version aus.
      - `--default-term`: Gibt dem Terminal Typ aus.
      - `--lxguid`: Gibt den WSL GUID Schlüssel für diese Instanz aus.

    backup [contents]
      - `--tar`: Erstellt eine Backup Namens backup.tar in dem aktuellen Ordner.
      - `--tgz`: Erstellt eine Backup Namens backup.tar.gz in dem aktuellen Ordner.
      - `--vhdx`: Erstellt eine Backup Namens backup.ext4.vhdx in dem aktuellen Ordner. (WSL2 only)
      - `--vhdxgz`: Erstellt eine Backup Namens backup.ext4.vhdx.gz in dem aktuellen Ordner. (WSL2 only)
      - `--reg`: Erstellt eine Backup Einstellungen als Registry Datei in dem aktuellen Ordner.

    clean
      - Deinstalliert die aktuelle Instanz.

    help
      - Zeigt diese Hilfe seite.
```

## ⬆️Update
### 📁zip
#### 1. Lade die ZIP-Datei herunter. [Download](https://github.com/yuk7/ArchWSL/releases/latest).
#### 2. Entpacke die exe-Datei und die Datei namens `rootfs.tar.gz` und überschreibe damit die alten in dem Ordner der Instanz.

### 📦appx
#### 1. Lade die appx-Datei herunter. [Download](https://github.com/yuk7/ArchWSL/releases/latest).
#### 2. Doppelklicke die Datei um das Update zu installieren.

## 🚫Bekante Fehler
Siehe [Dokumentation](https://wsldl-pg.github.io/ArchW-docs/).
