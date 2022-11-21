## CREATE/RUN DOCKER CONTAINER FROM CASSANDRA IMAGE
echo "Creating Docker container from Cassandra image..."
docker pull cassandra:latest

# Create first node
docker run -d --name cassandra-1 -p 9042:9042 cassandra:latest

# Get IP of first node
NODE_1=$(docker inspect --format="{{ .NetworkSettings.IPAddress }}" cassandra-1)

# Create second node
docker run -d --name cassandra-2 -p 9043:9042 -e CASSANDRA_SEEDS=$NODE_1 cassandra:latest

## WAIT UNTIL CASSANDRA SERVICE IS READY
echo "Waiting 2 minutes until all Cassandra nodes are ready..."
sleep 120s

## EXECUTE COMMANDS USING CQLSH
echo "Executing cqlsh commands to create keyspace and table..."
docker exec -it cassandra-1 cqlsh -e "create keyspace ycsb WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor': 2 };"
docker exec -it cassandra-1 cqlsh -e "create table ycsb.usertable (
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