cd mongodb
#adding python2 and setting it as python
sudo apt-get install python2 -y
sudo ln -s /bin/python2.7 /usr/bin/python

#run mongodb
sudo docker-compose -f docker-compose-mongodb.yml up -d
cat configurehosts.txt | sudo tee -a /etc/hosts 
cd ..
