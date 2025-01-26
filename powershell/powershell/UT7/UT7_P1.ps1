New-ADOrganizationalUnit -Name "EMPRESA" -Path "DC=EMPRESA,DC=LOCAL" 
$departamentos = Import-Csv C:\scripts\departamentos.csv -Delimiter ";"
foreach ($dep in $departamentos)
{
    New-ADOrganizationalUnit -Name $($dep.departamento) -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -Description $($dep.descripcion)
    Write-Host "Departamento $($dep.departamento) creado"
    #Crear grupo
    $groupnom = "$($dep.departamento) Grupo"
    New-ADGroup -Name $groupnom -GroupCategory Security -GroupScope Global -Path "CN=USERS,DC=EMPRESA,DC=LOCAL"
    Write-Host "Grupo $groupnom creado"
}
$empleados = Import-Csv C:\scripts\empleados.csv -Delimiter ";"
foreach ($emp in $empleados) {
    New-ADUser -Name "$($emp.nombre) $($emp.apellido)" -Path "OU=$($emp.departamento),OU=EMPRESA,DC=EMPRESA,DC=LOCAL"  -GivenName "$($emp.nombre)" -Surname "$($emp.apellido)" -SamAccountName "$($emp.nombre)" -UserPrincipalName "$($emp.nombre)@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force)
    Add-ADGroupMember -Identity "$($emp.departamento) Grupo" -Members "$($emp.nombre)"
}

