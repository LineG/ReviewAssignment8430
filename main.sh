# SETTING UP THE ENVIRONMENT
sudo apt update

## installing java
sudo apt install default-jre -y
sudo apt install default-jdk -y

## installing maven
sudo apt install maven -y

## installing docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce

### run docker without sudo
sudo usermod -aG docker ${USER}
su - ${USER}

## installing docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## FETCH LATEST BUILD OF YCSB
echo "Fetching YCSB latest build...\n\n"
wget https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar -xf ycsb-0.17.0.tar.gz

echo "\n\n" 

# Create outputs folder if it does not already exist
mkdir -p outputs

echo "SETUP OF CASSANDRA...\n\n"
## CASSANDRA SETUP
sh cassandra/cassandra_setup.sh

echo "\n\n" 

echo "TEST 1 ON CASSANDRA...\n\n"
## CASSANDRA BENCHMARK TESTS
sh cassandra/cassandra_tests.sh tests_1

echo "\n\n" 

sleep 15

echo "TEST 2 ON CASSANDRA...\n\n"
## CASSANDRA BENCHMARK TESTS
sh cassandra/cassandra_tests.sh tests_2

echo "\n\n" 

sleep 10

echo "TEST 3 ON CASSANDRA...\n\n"
## CASSANDRA BENCHMARK TESTS
sh cassandra/cassandra_tests.sh tests_3

echo "\n\n" 

echo "SET UP OF REDIS...\n\n"
#REDIS SET UP
sh redis/redis_setup.sh

echo "\n\n" 

echo "TESTS 1 ON REDIS...\n\n"
## REDIS BENCHMARK TESTS
sh redis/redis_tests1.sh

echo "\n\n" 

sleep 15

echo "TESTS 2 ON REDIS...\n\n"
## REDIS BENCHMARK TESTS
sh redis/redis_tests2.sh

echo "\n\n" 

sleep 10

echo "TESTS 3 ON REDIS...\n\n"
## REDIS BENCHMARK TESTS
sh redis/redis_tests3.sh

echo "SETUP OF MONGODB...\n\n"
## mongodb SETUP
sh mongodb/mongodb_setup.sh

echo "\n\n" 

echo "TEST 1 ON MONGODB...\n\n"
## mongodb BENCHMARK TESTS
sh mongodb/mongodb_tests.sh tests_1

echo "\n\n" 

sleep 15

echo "TEST 2 ON MONGODB...\n\n"
## mongodb BENCHMARK TESTS
sh mongodb/mongodb_tests.sh tests_2

echo "\n\n" 

sleep 10

echo "TEST 3 ON MONGODB...\n\n"
## mongodb BENCHMARK TESTS
sh mongodb/mongodb_tests.sh tests_3

echo "\n\n" 