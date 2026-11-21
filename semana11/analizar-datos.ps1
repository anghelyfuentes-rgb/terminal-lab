<#
.SYNOPSIS
Análisis de un registro de acceso web usando objetos.
.DESCRIPTION
Convierte cada linea de acceso.log en un objeto con propiedades y responde
cuatro preguntas agrupando y filtrando esos objetos.
Autor: Anghely Fuentes
Fecha: 2026-11-20
Uso: pwsh ./analizar-datos.ps1 [-Log <ruta>]
#>

param (
    [string]$Log = "acceso.log"
)

Write-Output " === Análisis de $Log === "
Write-Output " "

$registros = Get-Content $Log | ForEach-Object {
    if ($_ -match '(\S+).*\[.*?:(\d\d):.*\] "\S+ (\S+).*?" (\d+) (\d+)') {
        [PSCustomObject]@{
            IP      = $Matches[1]
            Hora    = $Matches[2]
            Recurso = $Matches[3]
            Estado  = [int]$Matches[4]
            Bytes   = [int]$Matches[5]
        }
    }
}

Write-Output "Registros leidos: $($registros.Count)"
Write-Output " "

Write-Output " === Top 5 IP con mas peticiones === "
$registros |
    Group-Object IP |
    Sort-Object Count -Descending |
    Select-Object -First 5 Count, Name |
    Format-Table -AutoSize | Out-String | Write-Output

Write-Output " === Conteo por codigo de estado === "
$registros |
    Group-Object Estado |
    Sort-Object Name |
    Select-Object Name, Count |
    Format-Table -AutoSize | Out-String | Write-Output
