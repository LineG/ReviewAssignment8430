sudo apt update

#installing maven
sudo apt install maven -y

#installing docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce

#commands to run docker without sudo
sudo usermod -aG docker ${USER}
su - ${USER}

#installing docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#adding python2 and setting it as python
sudo apt-get install python2
sudo ln -s /bin/python2.7 /usr/bin/python

#run mongodb
docker-compose -f docker-compose-mongodb.yml up
sudo cat mongodb/configurehosts.txt >> /etc/hosts
