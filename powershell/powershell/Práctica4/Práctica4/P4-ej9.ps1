$contraseña = "contraseña"
$intento = ""
while ($intento -ne $contraseña) {
    $intento = Read-Host "Introduce la contraseña"
    if ($intento -ne $contraseña) {
        Write-Host "Contraseña incorrecta"
    }
}
Write-Host "Contraseña correcta"