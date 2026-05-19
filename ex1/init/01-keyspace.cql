CREATE KEYSPACE IF NOT EXISTS BIKES
WITH REPLICATION = {'class': 'SimpleStrategy','replication_factor': 1};
