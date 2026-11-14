# Semana 04 - Procesamiento de texto y pipes

## Qué hace

`analizar-logs.sh` procesa `acceso.log` (20 líneas en formato Apache, generadas en
esta misma carpeta) y produce un reporte con cuatro secciones: top de IP, conteo
por código de estado, líneas con error 500 y hora pico.

## Archivos

- `analizar-logs.sh` - script principal (4 tuberías)
- `acceso.log` - registro de entrada de 20 líneas
- `reporte-ejemplo.txt` - reporte guardado con `>`
- `README.md` - este archivo

## Cómo se ejecuta

```bash
cd semana04
chmod +x analizar-logs.sh
./analizar-logs.sh
./analizar-logs.sh > reporte-ejemplo.txt
```

## Qué se aprendió

- Tuberías `awk | sort | uniq -c | sort -nr | head` para contar y rankear.
- Que `uniq -c` exige que la entrada venga ordenada.
- Redirección `>` y `>>` para guardar reportes.
- Uso de `||` para dar una alternativa cuando `grep` no encuentra nada.
- Aislamiento de la hora con dos cortes de `cut`.

## Qué quedó pendiente

- Extensión opcional: agregar el conteo por recurso con `awk '{ print $7 }'`.
