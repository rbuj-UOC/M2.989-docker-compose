#!/bin/bash

MARKER_FILE="/var/lib/cassandra/init_done"

# Si ja s'ha executat abans, sortir
if [ -f "$MARKER_FILE" ]; then
    echo "Inicialització ja realitzada anteriorment. No es tornen a executar els scripts."
    exit 0
fi

echo "Iniciant execució d'scripts CQL..."

# Esperar que Cassandra respongui
until cqlsh cassandra -e "describe keyspaces" >/dev/null 2>&1; do
    echo "Esperant que Cassandra estigui llesta..."
    sleep 5
done

# Executar tots els scripts .cql
for f in /init/*.cql; do
    echo "Executant $f"
    cqlsh cassandra -f "$f"
done

# Crear el fitxer de control
echo "Inicialització completada." > "$MARKER_FILE"
echo "Scripts executats correctament."
