
# ArchWSL
ArchLinux en WSL (Windows 10 FCU o más reciente)
basado en [wsldl](https://github.com/yuk7/wsldl)


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[日本語](https://github.com/yuk7/ArchWSL/blob/master/README_ja.md) | [简体中文](https://github.com/yuk7/ArchWSL/blob/master/README_zh-cn.md) | [繁體中文](https://github.com/yuk7/ArchWSL/blob/master/README_zh-tw.md) | [Español](https://github.com/yuk7/ArchWSL/blob/master/README_es.md) | [Deutsch](https://github.com/yuk7/ArchWSL/blob/master/README_de.md)

### [⬇Descarga](https://github.com/yuk7/ArchWSL/releases/latest) | [📓Documentación](https://git.io/arch-doc)

## 💻Requisitos
* Windows 10 1709 Fall Creators Update de 64bit o más reciente.
* Que la función de subsistema de Windows para Linux esté activada.

## 💾Instalación
**[Para más detalles, consulta la documentación](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)**
### 📁zip
#### 1. [Descarga](https://github.com/yuk7/ArchWSL/releases/latest) el instalador .zip

#### 2. Extrae todos los archivos del zip en la misma carpeta
Extraelo en un carpeta en la que tengas acceso completo
Por ejemplo, la carpeta 'Archivos de Programa' no puede ser usado.

#### 3. Ejecuta Arch.exe para extraer rootfs y registrarlo en WSL
El nombre del .exe se utilizara para registrar la instancia
Si cambias el nombre del .exe, puedes registrarlo con otro nombre y con múltiples instalaciones.

### 📦appx
#### 1. [Descarga](https://github.com/yuk7/ArchWSL/releases/latest) el instalador de .appx y .cer
#### 2. Instala el .cer en "Trusted Root Certification Authorities" de la maquina local
[Para más detalles, consulta la documentación](https://wsldl-pg.github.io/ArchW-docs/Install-Certificate)

Necesitaras permisos de administrador para instalar el certificado
#### 3. Instala el .appx

### 🥄 Scoop
`scoop bucket add extras `

`scoop install archwsl `

## 📝Como usar (Para instancias ya instaladas)
#### uso del .exe
```dos
Usage :
    <no args>
      - Abre una nueva consola con tus configuraciones

    run <command line>
      - Ejecuta el comando puesto en esa distribución. Hereda el directorio actual.

    runp <command line (includes windows path)>
      - Ejecuta la ruta traducida del comando en esa distribución.

    config [setting [value]]
      - `--default-user <user>`: Establece el usuario por defecto de esta distribución <user>
      - `--default-uid <uid>`: Establece la UID del usuario por defecto de esta distribución <user>
      - `--append-path <on|off>`: Cambia el anexo de windows entre PATH a $PATH
      - `--mount-drive <on|off>`: Cambia los dispositivos montados
      - `--default-term <default|wt|flute>`: Cambia el terminal usado por defecto

    get [setting]
      - `--default-uid`: Obtiene la UID del usuario por defecto de esta distribución
      - `--append-path`: Obtiene el estado del anexo de windows entre PATH a $PATH
      - `--mount-drive`: Obtiene el estado de los dispositivos montados
      - `--wsl-version`: Obtiene la version de WSL de esta distribución (1 o 2)
      - `--default-term`: Obtiene el terminal usado por defecto
      - `--lxguid`: Obtiene la WSL GUID de esta distribución

    backup [contents]
      - `--tar`: Salida de backup.tar en la carpeta actual
      - `--reg`: Salida del archivo de registro en la carpeta actual

    clean
      - Desinstala la distribución.

    help
      - Muestra este mensaje.
```

## ⬆️Actualizar
### 📁zip
#### 1. [Descarga](https://github.com/yuk7/ArchWSL/releases/latest) el instalador .zip
#### 2. Extrae los archivos .exe y rootfs.tar.gz del .zip y sobreescribe los que ya existen.

### 📦appx
#### 1. [Descarga](https://github.com/yuk7/ArchWSL/releases/latest) el instalador .appx
#### 2. Sobrescribe la instalación de .appx

## 🚫Fallos conocidos
Por favor ve la [documentación](https://git.io/arch-doc).
