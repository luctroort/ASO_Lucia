[int]$num = Read-Host "Introduce un número entero positivo"

do {
    if ($num -ne 0) {
        Write-Host "$num," -NoNewline
    } else {
        Write-Host "$num" -NoNewline
    }
    $num--
} until ($num -eq -1)