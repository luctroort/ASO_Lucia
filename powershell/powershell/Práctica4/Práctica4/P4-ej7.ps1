$num = Read-Host "Introduce un número"
for ($i = 1; $i -le $num; $i++) {
    Write-Host ("*" * $i)
}