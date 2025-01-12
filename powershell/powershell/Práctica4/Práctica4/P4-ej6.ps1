$numero = 56
$intento = -1
while ($intento -ne $numero) {
    $intento = Read-Host "Introduce un número entre el 0 y el 100"

    if ($intento -lt $numero) {
        Write-Host "El número a adivinar es mayor."
    } elseif ($intento -gt $numero) {
        Write-Host "El número a adivinar es menor."
    } else {
        Write-Host "Enhorabuena. Has adivinado el numero $numero."
    }
}