$fichero=Read-Host "Introduce un fichero o una carpeta"
if (Test-Path $fichero) {
    Write-Host "El archivo/carpeta $fichero existe"
}else {
    Write-Host "El archivo/carpeta $fichero no existe"
}