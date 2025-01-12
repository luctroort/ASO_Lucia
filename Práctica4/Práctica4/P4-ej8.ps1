$num = Read-Host "Introduce un número"
for ($i = 1; $i -le $num; $i++) {
    $fila = ""
    for ($j = 1; $j -le $i; $j++) {
        $fila += "$j "
    }
    Write-Host $fila
}