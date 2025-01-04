[int]$horas=Read-Host "Horas trabajadas"
[int]$coste=read-host "Coste por hora"

$salario=$horas*$coste

Write-Host "El salario total es" $salario