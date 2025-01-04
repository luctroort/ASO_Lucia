[int]$edad=read-host "Introduce tu edad"

if ($edad -lt 4) {
    Write-Host "Entras gratis"
}elseif ($edad -ge 4 -and $edad -lt 18) {
    Write-Host "Entrada: 5€"
}else {
    write-host "Entrada: 10€"
}