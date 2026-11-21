# Semana 12 - Filtrado, selección y agregación

## Qué hace

`consultas.ps1` responde seis preguntas sobre `datos.csv`: qué filas superan un
umbral, cómo agregar una columna calculada, cuánto suma y promedia cada
categoría, qué filas cumplen dos condiciones a la vez, qué categorías distintas
existen y cuáles son los totales del conjunto. Cada consulta es una función.

## Archivos

- `consultas.ps1` - script principal con las seis consultas
- `datos.csv` - datos de entrada, cabecera y diez filas
- `salida-consultas.txt` - resultado de las seis consultas
- `README.md` - este archivo

## Cómo se ejecuta

```
cd semana12
pwsh ./consultas.ps1
pwsh ./consultas.ps1 > salida-consultas.txt
pwsh ./consultas.ps1 -Csv otro-archivo.csv
```

## Qué se aprendió

- `Import-Csv` convierte una tabla en objetos usando la cabecera.
- Por qué hay que convertir a `[int]`: "90" -gt "100" es verdadero como texto.
- Columnas calculadas con `@{ Name =...; Expression =...}`.
- `Group-Object` y su propiedad `Group`, que conserva los objetos del grupo.
- Cuando `Where-Object` admite la forma corta y cuando hacen falta llaves.
- Que `Format-Table` sobre cadenas muestra Length en vez del valor.

## Qué quedó pendiente

Extensión opcional: exportar el resumen por categoría a un CSV nuevo con
`Export-Csv`.
