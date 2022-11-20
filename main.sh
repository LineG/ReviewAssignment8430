### RUN SETUP.SH FIRST (ONE TIME ONLY)
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
