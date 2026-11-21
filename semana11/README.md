# Semana 11 - El modelo de objetos

## Qué hace

`analizar-datos.ps1` convierte cada línea de `acceso.log` en un objeto con las
propiedades IP, Hora, Recurso, Estado y Bytes, y a partir de esa colección
responde: qué IP pide más, cuántas peticiones hay por código de estado, cuáles
fallaron con error 500, cuál fue la hora pico y cuánto tráfico se generó.

## Archivos

- `analizar-datos.ps1` - script principal
- `acceso.log` - registro de entrada de 15 líneas
- `reporte-ps.txt` - reporte generado
- `README.md` - este archivo

## Cómo se ejecuta

```
cd semana11
pwsh ./analizar-datos.ps1
pwsh ./analizar-datos.ps1 > reporte-ps.txt
pwsh ./analizar-datos.ps1 -Log otro-registro.log
```

## Qué se aprendió

- Construcción de objetos propios con `[PSCustomObject]@{...}`.
- Captura de grupos de una expresión regular con `-match` y `$Matches`.
- Conversión de tipos con `[int]` y por qué importa para comparar y sumar.
- Agrupación con `Group-Object` sin necesidad de ordenar antes.
- Filtrado por propiedad con `Where-Object` y cálculos con `Measure-Object`.

## Qué quedó pendiente

Extensión opcional: exportar los objetos a CSV con `Export-Csv` y volver a
leerlos con `Import-Csv`.
