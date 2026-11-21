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
