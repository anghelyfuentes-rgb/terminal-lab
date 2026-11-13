# Semana 02 - Fundamentos y sistema de archivos

## Qué hace

`explorar-sistema.sh` recorre seis directorios de la jerarquía FHS (`/etc`, `/var`,
`/bin`, `/usr`, `/dev` y `/proc`) y, para cada uno, imprime su función y un listado
real de su contenido. Los seis directorios se eligieron del conjunto permitido en
el capstone.

## Archivos

- `explorar-sistema.sh` - script principal
- `salida-ejemplo.txt` - salida capturada del script
- `README.md` - este archivo

## Cómo se ejecuta

```bash
cd semana02
chmod +x explorar-sistema.sh
./explorar-sistema.sh
./explorar-sistema.sh > salida-ejemplo.txt
```

## Qué se aprendió

- Diferencia entre rutas absolutas y relativas, y uso de `pwd` y `cd`.
- Lectura de `ls -l`: tipo, permisos, dueño, tamaño y fecha.
- Uso de `cat`, `less`, `head` y `file` para inspeccionar archivos.
- Redirección de la salida a un archivo con `>`.
- Organización de la jerarquía FHS y el papel de `/proc` como sistema virtual.

## Qué quedó pendiente

- Extensión opcional: listar los cinco elementos más grandes de cada directorio
  con `ls -S | head -n 5`.
- Explorar `/home` y `/tmp` en el equipo local sin publicar datos personales.
