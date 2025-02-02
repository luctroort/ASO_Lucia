New-Item -Path "C:\" -name "Empresa_users" -ItemType directory
New-SmbShare -Path "C:\Empresa_users" -Name "Empresa_users$" -FullAccess "Administradores"
$empleado = Import-Csv C:\scripts\empleados.csv -Delimiter ";"
foreach ($emp in $empleado) {
    New-Item -Path "C:\Empresa_users" -Name "$($emp.nombre).$($emp.apellido)" -ItemType directory
    New-SmbShare -Path "C:\Empresa_users\$($emp.nombre).$($emp.apellido)" -Name "$($emp.nombre).$($emp.apellido)" -FullAccess "$($emp.nombre)"
    
    #Permisos de control empleados
    $ruta = "C:\Empresa_users\$($emp.nombre).$($emp.apellido)"
    $acl = Get-Acl -Path $ruta
    $permiso = @("$($emp.nombre)", "FullControl", "Allow")
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $acl.SetAccessRule($ace)
    $acl | Set-Acl -Path $ruta

    #Set-ADUser -Identity "$($emp.nombre)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users\$($emp.nombre).$($emp.apellido)"
}

