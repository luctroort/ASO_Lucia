[int]$edad=read-host "Escribe tu edad"
if ($edad -gt 18) {
    Write-Host "Eres mayor de edad"
}Else {
    Write-Host "Eres menor de edad"
}