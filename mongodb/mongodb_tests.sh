output_folder=$1

# Create test specific folder if it does not already exist
mkdir -p outputs/$output_folder

# Workload A: Update heavy workload
echo "\n\nLoading and running benchmark workload A...\n\n"

echo "-------- WORKLOAD A LOAD-------- \n\n" >> outputs/$output_folder/mongodb_load_a.txt
ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ycsb-0.17.0/workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_load_a.txt
echo "\n\n" >> outputs/$output_folder/mongodb_load_a.txt

echo "-------- WORKLOAD A RUN-------- \n\n" >> outputs/$output_folder/mongodb_run_a.txt
ycsb-0.17.0/bin/ycsb.sh run mongodb -s -P ycsb-0.17.0/workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_run_a.txt
echo "\n\n" >> outputs/$output_folder/mongodb_run_a.txt

# Workload B: Read mostly workload
echo "\n\nLoading and running benchmark workload B...\n\n"

echo "-------- WORKLOAD B LOAD-------- \n\n" >> outputs/$output_folder/mongodb_load_b.txt
ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ycsb-0.17.0/workloads/workloadb -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_load_b.txt
echo "\n\n" >> outputs/$output_folder/mongodb_load_b.txt

echo "-------- WORKLOAD B RUN-------- \n\n" >> outputs/$output_folder/mongodb_run_b.txt
ycsb-0.17.0/bin/ycsb.sh run mongodb -s -P ycsb-0.17.0/workloads/workloadb -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_run_b.txt
echo "\n\n" >> outputs/$output_folder/mongodb_run_b.txt

# Workload C: Read only
echo "\n\nLoading and running benchmark workload C...\n\n"

echo "-------- WORKLOAD C LOAD-------- \n\n" >> outputs/$output_folder/mongodb_load_c.txt
ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ycsb-0.17.0/workloads/workloadc -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_load_c.txt
echo "\n\n" >> outputs/$output_folder/mongodb_load_c.txt

echo "-------- WORKLOAD C RUN-------- \n\n" >> outputs/$output_folder/mongodb_run_c.txt
ycsb-0.17.0/bin/ycsb.sh run mongodb -s -P ycsb-0.17.0/workloads/workloadc -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_run_c.txt
echo "\n\n" >> outputs/$output_folder/mongodb_run_c.txt

# Workload D: Read latest workload
echo "\n\nLoading and running benchmark workload D...\n\n"

echo "-------- WORKLOAD C LOAD-------- \n\n" >> outputs/$output_folder/mongodb_load_d.txt
ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ycsb-0.17.0/workloads/workloadd -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_load_d.txt
echo "\n\n" >> outputs/$output_folder/mongodb_load_d.txt

echo "-------- WORKLOAD C RUN-------- \n\n" >> outputs/$output_folder/mongodb_run_d.txt
ycsb-0.17.0/bin/ycsb.sh run mongodb -s -P ycsb-0.17.0/workloads/workloadd -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_run_d.txt
echo "\n\n" >> outputs/$output_folder/mongodb_run_d.txt

# Workload E: Short ranges
echo "\n\nLoading and running benchmark workload E...\n\n"

echo "-------- WORKLOAD C LOAD-------- \n\n" >> outputs/$output_folder/mongodb_load_e.txt
ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ycsb-0.17.0/workloads/workloade -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_load_e.txt
echo "\n\n" >> outputs/$output_folder/mongodb_load_e.txt

echo "-------- WORKLOAD C RUN-------- \n\n" >> outputs/$output_folder/mongodb_run_e.txt
ycsb-0.17.0/bin/ycsb.sh run mongodb -s -P ycsb-0.17.0/workloads/workloade -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> outputs/$output_folder/mongodb_run_e.txt
echo "\n\n" >> outputs/$output_folder/mongodb_run_e.txt