[int]$num = Read-Host "Introduce un número"
for ($i = 1; $i -le 10; $i++) {
    $resultado = $num * $i
    Write-Host "$num * $i = $resultado"
}