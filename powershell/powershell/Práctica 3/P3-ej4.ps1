Write-Host "*****CALCURADORA*****"
Write-Host "1.Sumar"
Write-Host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"

[int]$op=Read-Host "Elige una opción"
[int]$num1=Read-Host "Elige un número"
[int]$num2=Read-Host "Elige otro número"

switch ($op) {
    1 { $suma=$num1+$num2
    Write-Host "La suma es" $suma
    }
    2 { $resta=$num1-$num2
    Write-Host "La resta es" $resta
    }
    3 { $mult=$num1*$num2
    Write-Host "La multiplicación es" $mult
    }
    4 { $div=$num1/$num2
    Write-Host "La división es" $div
    }
}