# OPEN-FTTH on premise setup
On-premise/local docker setup for OPEN-FTTH.

## The setup contains the following
* Apache Zookeeper 
* Apache Kafka
* Kafkacat
* Postgres/Postgis

## Requirements
* docker
* docker-compose

## Run docker-compose
Run the following in a shell.
``` sh
docker-compose up
```

If you want to run it in deatached mode

``` sh
docker-compose up -d
```

## First time setup

### Connectors
Execute the following sh to setup the connectors 
``` sh
bash create-postgis-connector.sh
```

To verify the connector run
``` sh
bash verify-postgis-connector.sh
```

### Database
Connect to the local postgres database running in the docker container, create a
new database and execute the following script.
[Get the postgres script here](https://github.com/DAXGRID/open-ftth-postgis-service/blob/master/Database%20Scripts/create_route_network_schema.sql)

## Delete the connectors

``` sh
bash delete-postgis-connectors
```

## Kafka brokers
This dockerfile has three listeners.
* BOB for internal traffic on the Docker network
* FRED for traffic from the Docker-host machine (`localhost`)
* ALICE for traffic from outside, reaching the Docker host on a DNS name or IP.
