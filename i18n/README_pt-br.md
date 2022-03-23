# ArchWSL
ArchLinux no WSL (Windows 10 FCU ou posterior)
com base em [wsldl](https://github.com/yuk7/wsldl)


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)



[日本語](./README_ja.md) | [简体中文](./README_zh-cn.md) | [繁體中文](./README_zh-tw.md) | [Español](./README_es.md)

### [⬇Download](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Documentações](https://wsldl-pg.github.io/ArchW-docs/)

## 💻Requisitos

* Windows 10 1903 x64 ou posterior / Windows 11 x64.
* O recurso Windows Subsystem for Linux estar habilitado.
* [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-2---check-requirements-for-running-wsl-2) e [pacote do kernel Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package) .

## 💾Instalação
**[Para detalhes, consulte a documentação](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**
### 📁zip
#### 1. [Baixe](https://github.com/yuk7/ArchWSL/releases/latest) o instalador zip

#### 2. Extraia todos os arquivos do arquivo zip para o mesmo diretório;
Por favor, extraia para uma pasta que tenha permissão de acesso total.
Por exemplo, 'Program Files' não pode ser usada.

#### 3. Execute Arch.exe para extrair rootfs e registrar no WSL.
O nome do arquivo Exe está sendo usado como nome de instância para registrar.
Se você renomeá-lo, poderá se registrar com um nome diferente e ter várias instalações.


### 📦appx
#### 1. [Baixe](https://github.com/yuk7/ArchWSL/releases/latest) o instalador `.appx` e `.cer`
#### 2. Instale `.cer` para "Autoridades de certificação raíz confiáveis" (Trusted Root Certification Authorities) da máquina local
[Para obter detalhes, por favor, consulte a documentação](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate).

Você precisa de privilégios de administrador para instalar o certificado.
#### 3. Instale o `.appx`

### 🥄 Scoop
`scoop bucket add extras `

`scoop install archwsl `

## 📝Como usar (para instância instalada)
#### Uso do `.exe`
```dos
Usage :
    <nenhum argumentos>
      - Abre um novo shell com suas configurações padrão.

    run <linha de comando>
      - Executa a linha de comando fornecida nessa distro. Herdar o diretório atual.

    runp <linha de comando (inclui o path do windows)>
      - Executa a linha de comando traduzida do caminho nessa distro.

    config [setting [valor]]
      - `--default-user <user>`: Define o usuário padrão para esta distro como <user>
      - `--default-uid <uid>`: Define o uid do usuário padrão para esta distro como <uid>
      - `--append-path <on|off>`: Anexa Windows PATH à $PATH
      - `--mount-drive <on|off>`: Altera para unidade de montagem
      - `--default-term <default|wt|flute>`: Define a janela de terminal padrão

    get [setting]
      - `--default-uid`: Obtém o uid de usuário padrão nesta distro
      - `--append-path`: Obtém o estado ativado / desativado de Anexar PATH do Windows à $ PATH
      - `--mount-drive`: Obtém o estado ligado / desligado das unidades de montagem
      - `--wsl-version`: Obtém a versão 1/2 do WSL para esta distro
      - `--default-term`: Obtém Terminal Padrão para este lançador de distro
      - `--lxguid`: Obtém a chave WSL GUID desta versão
      
    backup [contents]
      - `--tar`: Exporta backup.tar para o diretório atual.
      - `--tgz`: Exporta backup.tar.gz para o diretório atual.
      - `--vhdx`: Exporta backup.ext4.vhdx para o diretório atual. (Somente WSL2)
      - `--vhdxgz`: Exporta backup.ext4.vhdx.gz para o diretório atual. (Somente WSL2)
      - `--reg`: Exporta arquivo de registro de configurações para o diretório atual


    clean
      - Desinstala essa instância..

    help
      - Imprime esta mensagem de ajuda.
```

## ⬆️Atualizar
### 📁zip
#### 1. [Baixe](https://github.com/yuk7/ArchWSL/releases/latest) o instalador zip
#### 2. Extraia .exe e rootfs.tar.gz de .zip e substitua os existentes.

### 📦appx
#### 1. [Baixe](https://github.com/yuk7/ArchWSL/releases/latest) o instalador .appx
#### 2.Sobrescreva o instalador .appx

## 🚫Problemas conhecidos
Por favor, veja a [documentação](https://wsldl-pg.github.io/ArchW-docs/).
