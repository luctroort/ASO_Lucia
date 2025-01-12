$nombre = Read-Host "Escribe tu nombre"
[int]$num = Read-Host "Introduce un número entero"
[int]$cont=0

do {
    Write-Host $nombre
    $cont++
    
} until ($cont -eq $num )