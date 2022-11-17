# Create outputs folder if it does not already exist
mkdir -p outputs

## RUN BENCHMARK WORKLOADS AND SAVE RESULTS 

# Workload A: Update heavy workload
echo "\n\nLoading and running benchmark workload A...\n\n"

echo "-------- WORKLOAD A -------- \n\n" >> outputs/cassandra_load.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloada -p hosts="127.0.0.1" >> outputs/cassandra_load.txt
echo "\n\n" >> outputs/cassandra_load.txt

echo "-------- WORKLOAD A -------- \n\n" >> outputs/cassandra_run.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloada -p hosts="127.0.0.1" >> outputs/cassandra_run.txt
echo "\n\n" >> outputs/cassandra_run.txt


# Workload B: Read mostly workload
echo "\n\nLoading and running benchmark workload B...\n\n"

echo "-------- WORKLOAD B -------- \n\n" >> outputs/cassandra_load.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloadb -p hosts="127.0.0.1" >> outputs/cassandra_load.txt
echo "\n\n" >> outputs/cassandra_load.txt

echo "-------- WORKLOAD B -------- \n\n" >> outputs/cassandra_run.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloadb -p hosts="127.0.0.1" >> outputs/cassandra_run.txt
echo "\n\n" >> outputs/cassandra_run.txt


# Workload C: Read only
echo "\n\nLoading and running benchmark workload C...\n\n"

echo "-------- WORKLOAD C -------- \n\n" >> outputs/cassandra_load.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloadc -p hosts="127.0.0.1" >> outputs/cassandra_load.txt
echo "\n\n" >> outputs/cassandra_load.txt

echo "-------- WORKLOAD C -------- \n\n" >> outputs/cassandra_run.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloadc -p hosts="127.0.0.1" >> outputs/cassandra_run.txt
echo "\n\n" >> outputs/cassandra_run.txt


# Workload D: Read latest workload
echo "\n\nLoading and running benchmark workload D...\n\n"

echo "-------- WORKLOAD D -------- \n\n" >> outputs/cassandra_load.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloadd -p hosts="127.0.0.1" >> outputs/cassandra_load.txt
echo "\n\n" >> outputs/cassandra_load.txt

echo "-------- WORKLOAD D -------- \n\n" >> outputs/cassandra_run.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloadd -p hosts="127.0.0.1" >> outputs/cassandra_run.txt
echo "\n\n" >> outputs/cassandra_run.txt


# Workload E: Short ranges
echo "\n\nLoading and running benchmark workload E...\n\n"

echo "-------- WORKLOAD E -------- \n\n" >> outputs/cassandra_load.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloade -p hosts="127.0.0.1" >> outputs/cassandra_load.txt
echo "\n\n" >> outputs/cassandra_load.txt

echo "-------- WORKLOAD E -------- \n\n" >> outputs/cassandra_run.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloade -p hosts="127.0.0.1" >> outputs/cassandra_run.txt
echo "\n\n" >> outputs/cassandra_run.txt