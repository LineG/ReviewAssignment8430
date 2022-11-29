output_folder=$1

# Create test specific folder if it does not already exist
mkdir -p outputs/$output_folder

## RUN BENCHMARK WORKLOADS AND SAVE RESULTS 

# Workload A: Update heavy workload
echo "\n\nLoading and running benchmark workload A...\n\n"

echo "-------- WORKLOAD A -------- \n\n" > outputs/$output_folder/cassandra_load_a.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloada -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_load_a.txt
echo "\n\n" >> outputs/$output_folder/cassandra_load_a.txt

echo "-------- WORKLOAD A -------- \n\n" > outputs/$output_folder/cassandra_run_a.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloada -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_run_a.txt
echo "\n\n" >> outputs/$output_folder/cassandra_run_a.txt


# Workload B: Read mostly workload
echo "\n\nLoading and running benchmark workload B...\n\n"

echo "-------- WORKLOAD B -------- \n\n" > outputs/$output_folder/cassandra_load_b.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloadb -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_load_b.txt
echo "\n\n" >> outputs/$output_folder/cassandra_load_b.txt

echo "-------- WORKLOAD B -------- \n\n" > outputs/$output_folder/cassandra_run_b.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloadb -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_run_b.txt
echo "\n\n" >> outputs/$output_folder/cassandra_run_b.txt


# Workload C: Read only
echo "\n\nLoading and running benchmark workload C...\n\n"

echo "-------- WORKLOAD C -------- \n\n" > outputs/$output_folder/cassandra_load_c.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloadc -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_load_c.txt
echo "\n\n" >> outputs/$output_folder/cassandra_load_c.txt

echo "-------- WORKLOAD C -------- \n\n" > outputs/$output_folder/cassandra_run_c.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloadc -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_run_c.txt
echo "\n\n" >> outputs/$output_folder/cassandra_run_c.txt


# Workload D: Read latest workload
echo "\n\nLoading and running benchmark workload D...\n\n"

echo "-------- WORKLOAD D -------- \n\n" > outputs/$output_folder/cassandra_load_d.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloadd -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_load_d.txt
echo "\n\n" >> outputs/$output_folder/cassandra_load_d.txt

echo "-------- WORKLOAD D -------- \n\n" > outputs/$output_folder/cassandra_run_d.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloadd -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_run_d.txt
echo "\n\n" >> outputs/$output_folder/cassandra_run_d.txt


# Workload E: Short ranges
echo "\n\nLoading and running benchmark workload E...\n\n"

echo "-------- WORKLOAD E -------- \n\n" > outputs/$output_folder/cassandra_load_e.txt
ycsb-0.17.0/bin/ycsb.sh load cassandra-cql -s -P ycsb-0.17.0/workloads/workloade -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_load_e.txt
echo "\n\n" >> outputs/$output_folder/cassandra_load_e.txt

echo "-------- WORKLOAD E -------- \n\n" > outputs/$output_folder/cassandra_run_e.txt
ycsb-0.17.0/bin/ycsb.sh run cassandra-cql -s -P ycsb-0.17.0/workloads/workloade -p hosts="127.0.0.1" >> outputs/$output_folder/cassandra_run_e.txt
echo "\n\n" >> outputs/$output_folder/cassandra_run_e.txt