[int]$renta=read-host "Introduce tu renta anual"

if ($renta -le 10000){
    Write-Host "Tu tipo impositivo es 5%"
}elseif ($renta -gt 10000 -and $renta -le 20000) {
    Write-Host "Tu tipo impositivo es 15%"
}elseif ($renta -gt 20000 -and $renta -le 35000) {
    Write-Host "Tu tipo impositivo es 20%"
}elseif ($renta -gt 35000 -and $renta -le 60000) {
    Write-Host "Tu tipo impositivo es 30%"
}else {
    Write-Host "Tu tipo impositivo es 45%"
}