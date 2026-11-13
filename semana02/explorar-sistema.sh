#!/bin/bash
# explorar-sistema.sh - Recorre la jerarquia del sistema y la documenta
# Autor: Anghely Fuentes
# Fecha: 2026-11-12
# Uso: ./explorar-sistema.sh
# Descripcion: recorre /etc, /var, /bin, /usr, /dev y /proc y documenta su funcion

SEP="--------------------------------------------------"

echo "=== /etc ==="
echo "/etc guarda archivos de configuracion del sistema en texto plano."
ls -l /etc | head -n 20
echo "$SEP"
echo ""

echo "=== /var ==="
echo "/var guarda datos que cambian: registros, colas y caches."
ls -lh /var | head -n 20
echo "$SEP"
echo ""

echo "=== /bin ==="
echo "/bin contiene programas esenciales para todo usuario (enlace a /usr/bin en Debian)."
ls -l /bin/ | head -n 20
echo "$SEP"
echo ""

echo "=== /usr ==="
echo "/usr contiene programas y bibliotecas que no son esenciales para arrancar."
ls -l /usr | head -n 20
echo "$SEP"
echo ""

echo "=== /dev ==="
echo "/dev representa los dispositivos del sistema como archivos."
ls -l /dev | head -n 20
echo "$SEP"
echo ""

echo "=== /proc ==="
echo "/proc es un sistema virtual: el kernel genera su contenido al leerlo."
ls /proc | head -n 20
echo "$SEP"
echo ""

echo "Exploracion completada."
