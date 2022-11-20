## RUN BENCHMARK WORKLOADS AND SAVE RESULTS 
cd ycsb-0.17.0
# Workload A: Update heavy workload
echo "\n\nLoading and running benchmark workload A...\n\n"

echo "-------- WORKLOAD A -------- \n\n" 
./bin/ycsb.sh load redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_Load_a.txt

echo "\n\n"

echo "-------- WORKLOAD A -------- \n\n" 
./bin/ycsb.sh run redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_run_a.txt
echo "\n\n" 

# Workload B: Read mostly workload
echo "\n\nLoading and running benchmark workload B...\n\n"

echo "-------- WORKLOAD B -------- \n\n" 
./bin/ycsb.sh load redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_Load_b.txt

echo "\n\n" 

echo "-------- WORKLOAD B -------- \n\n" 
./bin/ycsb.sh run redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_run_b.txt
echo "\n\n"

# Workload C: Read only
echo "\n\nLoading and running benchmark workload C...\n\n"

echo "-------- WORKLOAD C -------- \n\n"
./bin/ycsb.sh load redis -s -P workloads/workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_Load_c.txt

echo "\n\n" 

echo "-------- WORKLOAD C -------- \n\n" 
./bin/ycsb.sh run redis -s -P workloads/workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_run_c.txt

echo "\n\n" 

# Workload D: Read latest workload
echo "\n\nLoading and running benchmark workload D...\n\n"

echo "-------- WORKLOAD D -------- \n\n" 
./bin/ycsb.sh load redis -s -P workloads/workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_Load_d.txt

echo "\n\n"

echo "-------- WORKLOAD D -------- \n\n" 
./bin/ycsb.sh run redis -s -P workloads/workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_run_d.txt
echo "\n\n" 


# Workload E: Short ranges
echo "\n\nLoading and running benchmark workload E...\n\n"

echo "-------- WORKLOAD E -------- \n\n" 
./bin/ycsb.sh load redis -s -P workloads/workloade -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_Load_e.txt
echo "\n\n"

echo "-------- WORKLOAD E -------- \n\n" 
./bin/ycsb.sh run redis -s -P workloads/workloade -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../outputs/tests_2/redis_run_e.txt
echo "\n\n" 

cd ..