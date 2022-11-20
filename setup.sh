### RUN SETUP.SH (ONLY ONCE) BEFORE RUNNING MAIN.SH

## FETCH LATEST BUILD OF YCSB
echo "Fetching YCSB latest build...\n\n"
wget https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar -xf ycsb-0.17.0.tar.gz

echo "\n\n" 

echo "SET UP OF CASSANDRA...\n\n"
## CASSANDRA SETUP
sh cassandra/cassandra_prerequisites.sh && sh cassandra/cassandra_setup.sh
