# Pràctica

## Exercici 1: Cassandra (30%)

Per tal d'iniciar el contenidor i els exercicis cal que el directori de treball
sigui `ex1`:

```sh
cd ex1
```

Iniciar el contenidor:

> [!IMPORTANT]
> Abans d'iniciar el contenidor, cal que Docker Desktop estigui executant-se.

```sh
./start.sh
```

> [!NOTE]
> La primera vegada que s'inicia el contenidor, crea la base de dades.

Connexió al contenidor:

```sh
./connect.sh
```

Execució dels exercicis:

```shell
cqlsh cassandra -f /home/student/cassandra/0.1.cql
```

> [!WARNING]
> Les dades s'han obtingut de https://github.com/jconesac/cassandra_dataset

## Exercici 2: Neo4j (35%)

Per tal d'iniciar el contenidor i els exercicis cal que el directori de treball
sigui `ex2`:

```sh
cd ex2
```

Iniciar el contenidor:

> [!IMPORTANT]
> Abans d'iniciar el contenidor, cal que Docker Desktop estigui executant-se.

```sh
./start.sh
```

> [!NOTE]
> La primera vegada que s'inicia el contenidor, crea la base de dades.

Connexió al contenidor:

```sh
./connect.sh
```

Accedir a http://localhost:7474

- Nom d'usuari

```text
neo4j
```

- Contrasenya:

```text
password123
```

> [!WARNING]
> Les dades s'han obtingut de https://github.com/planetacomputer/starwars-full

## Exercici 3: MongoDB (35%)

Per tal d'iniciar el contenidor i els exercicis cal que el directori de treball
sigui `ex3`:

```sh
cd ex3
```

Iniciar el contenidor:

> [!IMPORTANT]
> Abans d'iniciar el contenidor, cal que Docker Desktop estigui executant-se.

```sh
./start.sh
```

> [!NOTE]
> La primera vegada que s'inicia el contenidor, crea la base de dades.

Connexió al contenidor:

```sh
./connect.sh
```

Executar mongosh:

```sh
mongosh
```

> [!WARNING]
> Les dades s'han obtingut de https://github.com/uoc-bbdd-no-tradicionales/mongodb-sample-dataset
