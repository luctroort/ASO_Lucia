$empleados = Import-Csv C:\Users\lucia\empleados.csv -Delimiter ";"
foreach ($em in $empleados) {
    Write-Host "Nombre: $($em.nombre) $($em.apellido) Departamento: $($em.departamento)"
}