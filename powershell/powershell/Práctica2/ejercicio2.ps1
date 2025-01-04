[int]$num1=read-host "Escribe un número"
[int]$num2=read-host "Escribe otro número"

$suma=$num1+$num2
$resta=$num1-$num2
$multiplicacion=$num1*$num2
$division=$num1/$num2
$resto=$num1%$num2

Write-Host "La suma es" $suma
Write-Host "La resta es" $resta
Write-Host "La división es" $division
Write-Host "El resto es" $resto