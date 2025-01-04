$dir=read-host "Introduce un directorio"
if (Test-Path $dir -PathType Container) {
    Write-Host "El directorio existe"
    Get-ChildItem -Path $dir -Recurse
} else {
    Write-Host "El directorio no existe"
}