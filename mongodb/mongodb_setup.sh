#adding python2 and setting it as python
sudo apt-get install python2
sudo ln -s /bin/python2.7 /usr/bin/python

#run mongodb
docker-compose -f docker-compose-mongodb.yml up
sudo cat mongodb/configurehosts.txt >> /etc/hosts
