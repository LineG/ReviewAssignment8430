## CREATE/RUN DOCKER CONTAINER FROM CASSANDRA IMAGE
echo "Creating Docker container from Cassandra image..."
sudo docker pull cassandra:latest
sudo docker run -d --name cassandra-cluster -p 9042:9042 cassandra:latest

## WAIT UNTIL CASSANDRA SERVICE IS READY
echo "Waiting 90s until Cassandra service is ready..."
sleep 90s

## EXECUTE COMMANDS USING CQLSH
echo "Executing cqlsh commands to create keyspace and table..."
sudo docker exec -it cassandra-cluster cqlsh -e "create keyspace ycsb WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor': 3 };"
sudo docker exec -it cassandra-cluster cqlsh -e "create table ycsb.usertable (
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