# Semana 03 - Archivos, permisos y multiusuario

## Qué hace

`organizar-archivos.sh` genera 50 archivos de prueba en `trabajo/`, los clasifica
por extensión en cinco categorías dentro de `organized/` y aplica a cada categoría
los permisos que le corresponden.

## Archivos

- `organizar-archivos.sh` - script principal
- `README.md` - este archivo
- `trabajo/` - 50 archivos de entrada generados por el script; queda vacía al terminar y no se versiona
- `organized/` - clasificación resultante, excluida por el `.gitignore` de la raíz

## Cómo se ejecuta

```bash
cd semana03
chmod +x organizar-archivos.sh
./organizar-archivos.sh
```

## Qué se aprendió

- Generación de datos con expansión de llaves `{1..10}`.
- Clasificación con comodines `*.sh`, `*.txt` y `mv`.
- Permisos octales `755`, `644` y `444`, y que en un directorio la `x` significa entrar.
- Que las carpetas generadas no se versionan: para eso está el `.gitignore`.
- Ejecución repetible: el script se puede correr dos veces y deja el mismo resultado.

## Qué quedó pendiente

- Extensión opcional: guardar el resumen en un archivo con `>` además de mostrarlo
  en pantalla.
