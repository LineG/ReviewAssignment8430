## FETCH LATEST BUILD OF YCSB
echo "Fetching YCSB latest build...\n\n"
wget https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar -xf ycsb-0.17.0.tar.gz

echo "\n\n" 

echo "SET UP OF CASSANDRA...\n\n"
## CASSANDRA SETUP
sh cassandra/cassandra_setup.sh

echo "\n\n" 

echo "TESTS ON CASSANDRA...\n\n"
## CASSANDRA BENCHMARK TESTS
sh cassandra/cassandra_tests.sh

echo "\n\n" 

echo "SET UP OF REDIS...\n\n"
#REDIS SET UP
sh redis/redis_setup.sh

echo "\n\n" 

echo "TESTS ON REDIS...\n\n"
## REDIS BENCHMARK TESTS
sh redis/redis_tests.sh
