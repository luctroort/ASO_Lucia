[int]$num = Read-Host "Introduce un número entero positivo"
$i = 1
    while ($i -le [int]$num) {
        Write-Host $i
        $i += 2  # Incrementar de 2 en 2 para mostrar solo impares
    }