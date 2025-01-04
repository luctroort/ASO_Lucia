$respuesta=Read-Host "¿Quieres una pizza vegetariana? (Sí/No)"

if ($respuesta -eq "sí") {
    $tipo="vegetariana"
    $ingrediente=read-host "Ingredientes para la pizza (elige uno) : pimiento o tofu"
} elseif ($respuesta -eq "no") {
    $tipo="no vegetariana"
    $ingrediente=read-host "Ingredientes para la pizza (elige uno) : peperoni, jamón, salmón"
}

Write-Host "Has elegida una pizza $tipo con los siguientes ingredientes: mozzarella, tomate, $ingrediente"
