#!/bin/bash
set -e

HOST=localhost
PORT=27017

echo "Esperant MongoDB..."
until mongosh --eval "db.runCommand({ ping: 1 })" >/dev/null 2>&1; do
  sleep 1
done
echo "MongoDB llest!"

cd /docker-entrypoint-initdb.d

for directory in bikes_app sample_analytics; do
    if [ ! -d "$directory" ]; then
        echo "Saltant $directory (no existeix)"
        continue
    fi

    shopt -s nullglob
    json_files=("$directory"/*.json)
    shopt -u nullglob

    if [ ${#json_files[@]} -eq 0 ]; then
        echo "Saltant $directory (sense fitxers JSON)"
        continue
    fi

    echo "Important base de dades: $directory"

    for data_file in "${json_files[@]}"; do
        collection=$(basename "$data_file" .json)
        echo " - Col·lecció: $collection"

        mongoimport --drop \
            --host "$HOST" \
            --port "$PORT" \
            --db "$directory" \
            --collection "$collection" \
            --file "$data_file"
    done
done
