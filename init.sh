#!/bin/bash

# init.sh
# Script para crear archivos .env vacíos con la clave BASE_URL

echo "Creando archivos de entorno..."

for FILE in .env.dev .env.staging .env.prod
do
  if [ ! -f "$FILE" ]; then
    echo "BASE_URL=" > "$FILE"
    echo "✅ $FILE creado."
  else
    echo "⚠️ $FILE ya existe, no se sobrescribe."
  fi
done

echo "✨ Archivos listos."