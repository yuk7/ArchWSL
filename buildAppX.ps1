$appx_ver="20.11.25.0"
$wsldl_ver="20112500"
$fs_ver="20101600"

$wsldl_zip="icons.zip"
$wsldl_url="https://github.com/yuk7/wsldl/releases/download/${wsldl_ver}/${wsldl_zip}"
$fs_rootfs="rootfs.tar.gz"
$fs_url="https://github.com/yuk7/ArchWSL-FS/releases/download/${fs_ver}/${fs_rootfs}"


$ErrorActionPreference = "Stop"
Invoke-WebRequest ${wsldl_url} -OutFile icons.zip -UseBasicParsing
Expand-Archive icons.zip -DestinationPath appx\wsldl-AppX\
Invoke-WebRequest ${fs_url} -OutFile appx\wsldl-AppX\rootfs.tar.gz -UseBasicParsing
$vtxt = 'Version="'+${env:appx_ver}+'"'
$file_contents = $(Get-Content "appx\wsldl-AppX\package.appxmanifest") -replace 'Version="19.0.0.0"',$vtxt
$file_contents | Out-File "appx\wsldl-AppX\package.appxmanifest" -Encoding utf8