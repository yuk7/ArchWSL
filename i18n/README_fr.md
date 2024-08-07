# ArchWSL
ArchLinux sur WSL (Windows 10 FCU ou version ultérieure), basé sur [wsldl](https://github.com/yuk7/wsldl).

![logo](https://github.com/yuk7/ArchWSL/assets/29954265/469eff8a-e243-4087-a5fa-f8013fc99ee4)

[![AppVeyor](https://img.shields.io/appveyor/ci/yuk7/ArchWSL.svg?logo=Windows&style=flat-square)](https://ci.appveyor.com/project/yuk7/archwsl)
[![FS-Workflows](https://img.shields.io/github/actions/workflow/status/yuk7/ArchWSL-FS/ci.yml?logo=Linux&style=flat-square)](https://github.com/yuk7/ArchWSL-FS/actions)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/ArchWSL/total.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
[![License](https://img.shields.io/github/license/yuk7/ArchWSL.svg?style=flat-square)](https://github.com/yuk7/ArchWSL/blob/master/LICENSE)

[English](../README.md) | [日本語](README_ja.md) | [简体中文](README_zh-cn.md) | [繁體中文](README_zh-tw.md) | [Español](README_es.md) | [Português](README_pt-br.md) | [한국어](README_ko-kr.md) | [Deutsch](README_de.md)

### [⬇Télécharger](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Documentation](https://wsldl-pg.github.io/ArchW-docs/)

## 💻Pré-requis
* Windows 10 1709 FCU x64 ou version ultérieure / Windows 11 x64.
* La fonctionnalité Windows Subsystem for Linux doit être activée.

## 💾Installation
**Pour plus de détails, veuillez vous référer à la [documentation](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**.

**※SI VOUS UTILISEZ WSL1, VOUS DEVEZ REMPLACER LE PAQUET GLIBC LORS DU PREMIER LANCEMENT DE L'INSTANCE. Veuillez consulter la [documentation](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**

### 📁zip
#### 1. [Téléchargez](https://github.com/yuk7/ArchWSL/releases/latest) le fichier zip de l'installateur.

#### 2. Extrayez tous les fichiers du fichier zip dans le même répertoire.
Veuillez extraire dans un dossier auquel vous avez un accès complet. Par exemple, 'Program Files' ne peut pas être utilisé.

#### 3. Exécutez Arch.exe pour extraire rootfs et enregistrer dans WSL.
De plus, le nom du fichier EXE est utilisé comme nom de votre instance WSL. Cela signifie que si vous copiez plusieurs fichiers EXE et les renommez avec des noms différents, vous pouvez avoir plusieurs instances ArchWSL différentes en même temps sans conflit.

#### 4. Initialisez la clé de signature de pacman. (Optionnel)
Ce n'est pas obligatoire, mais vous devrez le faire si vous souhaitez utiliser pacman.
Voir [documentation](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#initialize-keyring).

### 📦appx
#### 1. [Téléchargez](https://github.com/yuk7/ArchWSL/releases/latest) le fichier appx de l'installateur et le fichier cer.
#### 2. Installez le fichier cer dans "Personnes de confiance" de l'ordinateur local.
Pour plus de détails à ce sujet, veuillez consulter la [documentation](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate).

Vous aurez besoin de privilèges administrateur pour installer le certificat !
#### 3. Double-cliquez pour installer le fichier appx.

### 🥄 Scoop
#### 1. `scoop bucket add extras `
#### 2. `scoop install archwsl `

## 📝Comment utiliser (pour une instance installée)
#### Utilisation de exe
```dos
Usage :
    <sans arguments>
      - Ouvrez un nouveau shell avec vos paramètres par défaut.

    run <ligne de commande>
      - Exécutez la ligne de commande donnée dans cette instance. Hérite du répertoire courant.

    runp <ligne de commande (inclut le chemin windows)>
      - Exécutez la ligne de commande donnée dans cette instance après conversion de son chemin.

    config [setting [value]]
      - `--default-user <utilisateur>`: Définit l'utilisateur par défaut de cette instance sur <utilisateur>.
      - `--default-uid <uid>`: Définit l'uid utilisateur par défaut de cette instance sur <uid>.
      - `--append-path <true|false>`: Active/Désactive l'ajout du chemin Windows à $PATH.
      - `--mount-drive <true|false>`: Active/Désactive le montage des disques.
      - `--wsl-version <1|2>`: Définit la version WSL de cette instance à <1 ou 2>.
      - `--default-term <default|wt|flute>`: Définit le type de fenêtre de terminal par défaut.

    get [setting]
      - `--default-uid`: Obtenez l'uid utilisateur par défaut dans cette instance.
      - `--append-path`: Obtenez le statut true/false de l'ajout du chemin Windows à $PATH.
      - `--mount-drive`: Obtenez le statut true/false du montage des disques.
      - `--wsl-version`: Obtenez la version de WSL (1/2) de cette instance.
      - `--default-term`: Obtenez le type de terminal par défaut de cette instance.
      - `--lxguid`: Obtenez la clé GUID WSL pour cette instance.

    backup [contents]
      - `--tar`: Exporte backup.tar vers le répertoire courant.
      - `--tgz`: Exporte backup.tar.gz vers le répertoire courant.
      - `--vhdx`: Exporte backup.ext4.vhdx vers le répertoire courant. (WSL2 seulement)
      - `--vhdxgz`: Exporte backup.ext4.vhdx.gz vers le répertoire courant. (WSL2 seulement)
      - `--reg`: Exporte le fichier de registre des paramètres vers le répertoire courant.

    clean
      - Désinstalle cette instance.

    help
      - Affiche ce message d'utilisation.
```

## ⬆️️Mise à jour
### 📁zip
#### 1. [Téléchargez](https://github.com/yuk7/ArchWSL/releases/latest) le fichier zip de l'installateur.
#### 2. Extrayez le fichier exe et `rootfs.tar.gz` du fichier zip et écrasez vos fichiers existants.

### 📦appx
#### 1. [Téléchargez](https://github.com/yuk7/ArchWSL/releases/latest) le fichier appx de l'installateur.
#### 2. Double-cliquez pour installer la mise à jour.

## 🚫Problèmes connus
Voir  [documentation](https://wsldl-pg.github.io/ArchW-docs/).
