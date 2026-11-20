# Semana 10 - PowerShell 7: otra terminal

## Qué hace

`explorar-sistema.ps1` recorre seis directorios del sistema y muestra, para
cada uno, su función y un listado de su contenido. Cierra con una sección de
descubrimiento que usa `Get-Command` y `Get-Help` sobre los propios cmdlets
empleados.

## Archivos

- `explorar-sistema.ps1` - script principal
- `salida-ps.txt` - salida capturada del script
- `README.md` - este archivo

## Cómo se ejecuta

```
cd semana10
pwsh ./explorar-sistema.ps1
pwsh ./explorar-sistema.ps1 > salida-ps.txt
pwsh -Command "Get-Help ./explorar-sistema.ps1"
```

## Qué se aprendió

- Ayuda basada en comentarios: `.SYNOPSIS` y `.DESCRIPTION` en un bloque `<# #>`.
- Funciones con `param()` y parámetros con nombre y valor por omisión.
- Que una función debe de volver objetos, y el formato aplicarse al final.
- Diferencia entre `Write-Output` (va a la tubería) y `Write-Host` (solo pantalla).
- Descubrimiento con `Get-Command -Noun` y `Get-Help`.

## Qué quedó pendiente

Extensión opcional: aceptar la lista de directorios como parámetro del script,
en lugar de tenerla fija en el código.
