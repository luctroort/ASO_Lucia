[int]$num1=read-host "Escribe un número"
[int]$num2=read-host "Escribe otro número"

if ($num1 -gt $num2) {
    Write-Host "$num1 es mayor que $num2"
}else {
    Write-Host "$num1 es menor que $num2"
}