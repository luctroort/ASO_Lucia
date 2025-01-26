# Funciones para las operaciones matemáticas
function Sumar {
    param ($num1, $num2)
    return $num1 + $num2
}

function Restar {
    param ($num1, $num2)
    return $num1 - $num2
}

function Multiplicar {
    param ($num1, $num2)
    return $num1 * $num2
}

function Dividir {
    param ($num1, $num2)
    if ($num2 -eq 0) {
        Write-Host "No se puede dividir entre 0."
        return
    }
    return $num1 / $num2
}

# Menú de la calculadora
do {
    Clear-Host
    Write-Host "****** CALCULADORA ********"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"
    $opcion = Read-Host "¿Qué desea hacer? Elige una opción"

    if ($opcion -eq 5) {
        Write-Host "¡Hasta luego!"
        break
    }

    # Pedir los dos números
    $num1 = Read-Host "Introduce el primer número"
    $num2 = Read-Host "Introduce el segundo número"
    
    # Validar que los números sean válidos
    if (-not ($num1 -match '^\d+(\.\d+)?$') -or -not ($num2 -match '^\d+(\.\d+)?$')) {
        Write-Host "Por favor, ingrese números válidos."
        continue
    }

    # Convertir a tipo numérico
    $num1 = [double]$num1
    $num2 = [double]$num2

    # Realizar la operación según la opción elegida
    switch ($opcion) {
        1 {
            $resultado = Sumar $num1 $num2
            Write-Host "El resultado de la suma es: $resultado"
        }
        2 {
            $resultado = Restar $num1 $num2
            Write-Host "El resultado de la resta es: $resultado"
        }
        3 {
            $resultado = Multiplicar $num1 $num2
            Write-Host "El resultado de la multiplicación es: $resultado"
        }
        4 {
            $resultado = Dividir $num1 $num2
            if ($resultado -ne $null) {
                Write-Host "El resultado de la división es: $resultado"
            }
        }
        default {
            Write-Host "Opción no válida."
        }
    }

    # Esperar antes de continuar
    Read-Host "Presiona Enter para continuar..."

} while ($opcion -ne 5)
