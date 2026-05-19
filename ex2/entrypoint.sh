#!/bin/bash
set -e

# Start Neo4j using the official entrypoint
/startup/docker-entrypoint.sh neo4j &

echo "Waiting for Neo4j to finish initialization..."

# Wait for Bolt to accept authenticated connections
until cypher-shell -u neo4j -p password123 "RETURN 1;" >/dev/null 2>&1; do
    sleep 2
done

echo "Neo4j is ready."

# Check if database is empty
NODE_COUNT=$(cypher-shell -u neo4j -p password123 "MATCH (n) RETURN count(n);" | tail -n1)

if [ "$NODE_COUNT" = "0" ]; then
    echo "Initializing database for the first time..."
    cypher-shell -u neo4j -p password123 -f /var/lib/neo4j/import/CreateDB.cypher
    echo "Initialization completed."
else
    echo "Database already initialized. Skipping."
fi

# Keep Neo4j running
wait -n
