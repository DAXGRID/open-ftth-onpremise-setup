#!/bin/bash

curl -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '
{
 "name": "postgis-connector",
 "config": {
 "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
 "tasks.max": "1",
 "plugin.name": "pgoutput",
 "database.hostname": "postgres",
 "database.port": "5432",
 "database.user": "postgres",
 "database.password": "postgres",
 "database.dbname" : "FTTH_TEST",
 "database.server.name": "dbserver1",
 "database.whitelist": "FTTH_TEST",
 "database.history.kafka.bootstrap.servers": "kafka:29092",
 "database.history.kafka.topic": "schema-changes.FTTH_TEST"
 }
}'
