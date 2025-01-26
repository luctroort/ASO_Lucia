New-Item -Path "C:\" -name "EMPRESA" -ItemType directory
New-SmbShare -Path "C:\EMPRESA" -Name "empresa" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
$departamento = Import-Csv C:\scripts\departamentos.csv -Delimiter ";"
foreach ($dep in $departamento) {
   New-Item -Path "C:\EMPRESA\$($dep.departamento)" -ItemType Directory
   New-SmbShare -Path "C:\EMPRESA\$($dep.departamento)" -Name "$($dep.departamento)" -FullAccess Administradores -ChangeAccess "$($dep.departamento) Grupo"


$ruta = "C:\EMPRESA\$($dep.departamento)"
$acl = get-acl -Path $ruta
$permisos = @("$($dep.departamento) Grupo", "Modify", "Allow")
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$acl.SetAccessRule($ace)
Set-Acl -Path $ruta -AclObject $acl
}
$ruta_e = "C:\EMPRESA"
$acl_e = get-acl -Path $ruta_e
$permisos_e = @("Administradores", "Fullcontrol", "Allow")
$ace_e = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos_e
$acl_e.SetAccessRule($ace_e)
$acl_e | set-acl -Path $ruta_e

#Permisos usuarios sobre EMPRESA
$acl_t = get-acl -Path $ruta_e
$permisos_todos = @("Usuarios del dominio", "Read", "Allow")
$ace_t = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos_todos
$acl_t.SetAccessRule($ace_t)
$acl_t | set-acl -Path $ruta_e
