# Semana 05 - Búsqueda, archivado y entorno propio

## Qué hace

`respaldar-trabajo.sh` busca los archivos de esta carpeta modificados en los
últimos N días (7 por omisión), los empaqueta en `respaldos/` con la fecha en
el nombre e informa cuántos archivos respaldó y cuánto pesa el paquete.
Excluye temporales (`*.tmp`, `*~`) y los respaldos anteriores.

## Archivos

- `respaldar-trabajo.sh` - script principal
- `bashrc-fragmento.txt` - línea agregada a `~/.bashrc` para el PATH
- `datos/` - archivos de prueba que se respaldan
- `respaldos/` - paquetes generados (no se versionan)
- `README.md` - este archivo

## Cómo se ejecuta

```bash
cd semana05
chmod +x respaldar-trabajo.sh
./respaldar-trabajo.sh        # últimos 7 días
./respaldar-trabajo.sh 30     # últimos 30 días
respaldar-trabajo 7           # ya instalado en ~/bin
```

## Qué se aprendió

- Búsqueda con `find` por tipo y fecha, y exclusiones con `!`.
- Paso seguro de nombres con `-print0` y `tar --null --files-from=-`.
- Creación de comprimidos con `tar -czf` y lectura con `tar -tzf`.
- Cálculo del directorio del propio script con `BASH_SOURCE` y `dirname`.
- Instalación de un comando propio en `~/bin` y modificación del PATH.

## Qué quedó pendiente

- Extensión opcional: borrar automáticamente los respaldos de más de 30 días.
