$WSLName = "Artix.exe"

$WSLExecutable = Join-Path $PSScriptRoot $WSLName

& $WSLExecutable run @'
/bin/bash <<EOF
mkdir -p /etc/runit/runsvdir/wsl
runsvchdir wsl
[ -d /service ] || ln -s /etc/runit/runsvdir/current /service
runsvdir /service
EOF
'@
