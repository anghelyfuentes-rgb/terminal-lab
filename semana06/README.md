# Semana 06 - Bash: fundamentos

## Qué hace

`info-sistema.sh` genera un reporte del sistema que cambia según el argumento
recibido: sin argumentos muestra el resumen general (kernel, distribución,
tiempo encendido y memoria), con `-u` los datos del usuario y con `-d` el uso
de disco. Con `-h` muestra la ayuda.

## Archivos

- `info-sistema.sh` - script principal
- `salida-ejemplo.txt` - las tres invocaciones concatenadas
- `README.md` - este archivo

## Cómo se ejecuta

```bash
cd semana06
chmod +x info-sistema.sh
./info-sistema.sh        # resumen general
./info-sistema.sh -u     # usuario
./info-sistema.sh -d     # disco
./info-sistema.sh -h     # ayuda
```

## Códigos de salida

| Código | Significado |
| --- | --- |
| 0 | éxito |
| 2 | uso incorrecto (`-h` u opción inválida) |

## Qué se aprendió

- Estructura `case` para despachar según el argumento recibido.
- Definición y llamada de funciones en Bash.
- Diferencia entre salida estándar y salida de error, y uso de `>&2`.
- Códigos de salida y cómo leerlos con `echo $?`.
- `${1:-}` para leer un argumento que puede no existir con `set -u` activo.

## Qué quedó pendiente

- Extensión opcional: aceptar varias opciones en la misma llamada, por ejemplo
  `./info-sistema.sh -u -d`.
