# Semana 08 - Bash: loops, arrays y funciones

## Qué hace

`gestor-tareas.sh` presenta un menú con cinco opciones para gestionar tareas
guardadas en `datos/tareas.csv`: listar, agregar, completar, eliminar y salir.
La lógica está separada en `lib/`: las validaciones por un lado y las
operaciones sobre el CSV por otro.

## Archivos

- `gestor-tareas.sh` - menú principal
- `lib/validaciones.sh` - validaciones de descripción e id
- `lib/tareas.sh` - listar, agregar, completar y eliminar
- `datos/tareas.csv` - datos, con cabecera `id,descripcion,estado,fecha`
- `README.md` - este archivo

## Cómo se ejecuta

```bash
cd semana08
chmod +x gestor-tareas.sh
./gestor-tareas.sh
```

También se puede alimentar desde una tubería, útil para probar:

```bash
printf '2\ncomprar cuaderno\n1\n5\n' | ./gestor-tareas.sh
```

El CSV se versiona solo con su cabecera. Las pruebas que agregan tareas lo
modifican; para dejarlo como plantilla:

```bash
echo "id,descripcion,estado,fecha" > datos/tareas.csv
```

## Qué se aprendió

- Lectura de un CSV línea por línea con `while IFS=',' read -r`.
- Funciones con `local` y `return`, cargadas con `source` desde `lib/`.
- Menú con `while true` y `case`, incluyendo la rama por defecto.
- Edición segura de un archivo mediante temporal y `mv`.
- Por qué el patrón de borrado incluye la coma: para no confundir 1 con 10.

## Qué quedó pendiente

Extensión opcional: filtrar el listado por estado, mostrando solo las
pendientes.
