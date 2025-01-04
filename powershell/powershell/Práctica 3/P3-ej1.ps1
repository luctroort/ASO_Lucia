[int]$num=read-host "Escribe un número"

if ($num % 2 -eq 0) {
    Write-Host "El número es par"
}Else {
    Write-Host "El número es impar"
}