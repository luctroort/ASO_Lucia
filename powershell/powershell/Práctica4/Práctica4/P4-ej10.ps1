Write-Host "Menú de Opciones:"
Write-Host "a) Crear una carpeta"
Write-Host "b) Crear un fichero nuevo"
Write-Host "c) Cambiar el nombre de un fichero o carpeta"
Write-Host "d) Borrar un archivo o carpeta"
Write-Host "e) Verificar si existe un fichero o carpeta"
Write-Host "f) Mostrar el contenido de un directorio"
Write-Host "g) Mostrar la fecha y hora actuales"
Write-Host "x) Salir"
$opcion = Read-Host "Elige una opción"
switch ($opcion) {
    "a" {
        $carpeta = Read-Host "Introduce la ruta de la carpeta a crear"
            if (-Not (Test-Path -Path $carpeta)) {
                New-Item -ItemType Directory -Path $carpeta
                Write-Host "Carpeta creada con éxito."
            } else {
                Write-Host "La carpeta ya existe."
            }
         }
    "b" {
            $fichero = Read-Host "Introduce la ruta y nombre del fichero a crear"
            if (-Not (Test-Path -Path $fichero)) {
                New-Item -ItemType File -Path $fichero
                Write-Host "Fichero creado con éxito."
            } else {
                Write-Host "El fichero ya existe."
            }
        }
    "c" {
            $actual = Read-Host "Introduce la ruta actual del fichero o carpeta"
            $nuevo = Read-Host "Introduce el nuevo nombre o ruta"
            if (Test-Path -Path $actual) {
                Rename-Item -Path $actual -NewName $nuevo
                Write-Host "Nombre cambiado con éxito."
            } else {
                Write-Host "El fichero o carpeta no existe."
            }
        }
     "d" {
            $elemento = Read-Host "Introduce la ruta del archivo o carpeta a borrar"
            if (Test-Path -Path $elemento) {
                Remove-Item -Path $elemento -Recurse -Force
                Write-Host "Archivo o carpeta borrado con éxito."
            } else {
                Write-Host "El archivo o carpeta no existe."
            }
        }
    "e" {
            $elemento = Read-Host "Introduce la ruta del fichero o carpeta a verificar"
            if (Test-Path -Path $elemento) {
                Write-Host "El fichero o carpeta existe."
            } else {
                Write-Host "El fichero o carpeta no existe."
            }
        }
    "f" {
            $directorio = Read-Host "Introduce la ruta del directorio a listar"
            if (Test-Path -Path $directorio) {
                Get-ChildItem -Path $directorio
            } else {
                Write-Host "El directorio no existe."
            }
        }
    "g" {
            Write-Host "Fecha y hora actuales: $(Get-Date)"
        }
    "x" {
            Write-Host "Saliendo del programa."
        }
    }
    




