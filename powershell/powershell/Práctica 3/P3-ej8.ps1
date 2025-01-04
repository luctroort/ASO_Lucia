$nombre=read-host "Introduce tu nombre"
$sexo=read-host "Dime tu sexo (H o M)"

if ($nombre -lt "M" -and $sexo -ieq "M") {
    Write-Host "Perteneces al grupo A"
}elseif ($nombre -gt "N" -and $sexo -ieq "H") {
    Write-Host "Perteneces al grupo A"
}else {
    Write-Host "Perteneces al grupo B"
}
