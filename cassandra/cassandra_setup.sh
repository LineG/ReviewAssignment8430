#!/bin/bash

## CREATE/RUN DOCKER CONTAINERS
# Setup nodes
sudo docker-compose -f ./cassandra/docker-compose.yml up -d

## WAIT UNTIL CASSANDRA SERVICE IS READY
echo "Waiting 90 seconds until all Cassandra nodes are ready..."
sleep 90s

## EXECUTE COMMANDS USING CQLSH
echo "Executing cqlsh commands to create keyspace and table..."
sudo docker exec -it cassandra-node-1 cqlsh -e "create keyspace ycsb WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor': 1 };"
sudo docker exec -it cassandra-node-1 cqlsh -e "create table ycsb.usertable (
    y_id varchar primary key,
    field0 varchar,
    field1 varchar,
    field2 varchar,
    field3 varchar,
    field4 varchar,
    field5 varchar,
    field6 varchar,
    field7 varchar,
    field8 varchar,
    field9 varchar);"