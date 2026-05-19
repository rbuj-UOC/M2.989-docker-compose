USE BIKES;

-- Carrega els registre de la taula TESTING_AGGREGATE

COPY TESTING_AGGREGATE (COLUMNA1, COLUMNA2, COLUMNA3, COLUMNA4)
FROM
    '/home/student/Escritorio/Cassandra/TESTING_AGGREGATE.csv'
WITH
    DELIMITER=','
    AND HEADER=TRUE;

-- Carrega els registre de la taula BIKES

COPY BIKES (
    ID,
    BRAND,
    BATTERY_CHARGE,
    STATUS,
    HELMETS,
    EXTRA_FEATURES,
    DAMAGES,
    IS_CLEAN,
    RIDES,
    KMS,
    LOCATION_TYPE,
    LOCATION_COORDINATES
)
FROM
    '/home/student/Escritorio/Cassandra/bikes.csv'
WITH
    DELIMITER=','
    AND HEADER=TRUE;

-- Carrega els registre de la taula USERS

COPY USERS (
    ID,
    EMAIL,
    AGE,
    DAYS_USED,
    NRIDES,
    CREDITS,
    FIRST_NAME,
    LAST_NAME,
    BDATE,
    FIRST_USE,
    LAST_USE
)
FROM
    '/home/student/Escritorio/Cassandra/users.csv'
WITH
    DELIMITER=','
    AND HEADER=TRUE
    AND NULL='null';

-- Carrega els registre de la taula TRIPS

COPY TRIPS (
    ID_USER,
    EMAIL,
    CREDITS,
    FROM_STATION,
    TO_STATION,
    BIKE,
    DATE,
    KILOMETERS
)
FROM
    '/home/student/Escritorio/Cassandra/viajes.csv'
WITH
    DELIMITER=','
    AND HEADER=TRUE
    AND NULL='null';

