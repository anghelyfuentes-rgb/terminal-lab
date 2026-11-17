# Semana 07 - Bash: condicionales

## Qué hace

`validador.sh` recibe una ruta, informa si es un enlace, un directorio o un
archivo regular, comprueba permisos y contenido, y devuelve un código de salida
distinto para cada situación. `probar.sh` ejecuta los siete casos de
`casos-prueba.md` y compara los códigos obtenidos con los esperados.

## Archivos

- `validador.sh` - script principal
- `probar.sh` - ejecutor de los casos de prueba
- `casos-prueba.md` - tabla de casos y códigos esperados
- `datos/` - archivos de prueba
- `README.md` - este archivo

## Cómo se ejecuta

```bash
cd semana07
chmod +x validador.sh probar.sh
./validador.sh ./datos/archivo.txt
./probar.sh
```

Para repetir la prueba de permisos después de clonar:

```bash
chmod 000 datos/sin-lectura.txt
mkdir -p datos/mi-dir
./probar.sh
chmod 644 datos/sin-lectura.txt
```

Git no conserva el modo `000` ni los directorios vacíos. Por eso, en un clon
hay que preparar `datos/sin-lectura.txt` y `datos/mi-dir` antes de ejecutar
`probar.sh`. Al terminar, `chmod 644` deja el árbol limpio.

## Códigos de salida

| Código | Significado |
| --- | --- |
| 0 | éxito (enlace, directorio o archivo legible, incluido el vacío) |
| 1 | la ruta no existe |
| 2 | uso incorrecto |
| 3 | sin permiso de lectura |
| 4 | tipo desconocido |

## Qué se aprendió

- Pruebas de archivo: `-e`, `-f`, `-d`, `-L`, `-r`, `-s`, y por qué `-L` va primero.
- Uso de `[[ ... ]] || comando` para exigir condiciones.
- Códigos de salida distintos por tipo de fallo, y cómo leerlos con `$?`.
- Escribir los casos de prueba antes que el código.
- Funciones con `local` y `shift` para reutilizar lógica de prueba.

## Qué quedó pendiente

- Extensión opcional: aceptar varias rutas en una sola llamada y devolver el peor
  código encontrado.
