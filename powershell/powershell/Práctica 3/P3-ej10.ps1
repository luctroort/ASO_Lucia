[double]$puntos=read-host "Dime tus puntos"

[double]$cant=$puntos*2400

if ($puntos -ge 0.6) {
    Write-Host "Tu puntuación es meritoria, recibirás $cant"
}elseif ($puntos -eq 0.4) {
    Write-Host "Tu puntuación es aceptable, recibirás $cant"
}else  {
    Write-Host "Tu puntuación es inaceptable, recibirás $cant"
}