$contraseña="contraseña" 

$contraseña2=Read-Host "Introduce la contraseña"

if ($contraseña -eq $contraseña2) {
    Write-Host "Contraseña correcta"
} else {
    Write-Host "Contraseña incorrecta"
}