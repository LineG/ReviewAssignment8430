## INSTALL REQUIRED PACKAGES
echo "Installing required packages..."
sudo apt update
sudo apt install -y git
sudo apt install -y docker.io
sudo snap install docker

## INSTALL JAVA
echo "Installing java..."
sudo apt install -y openjdk-8-jdk
sudo apt install -y ant
sudo apt clean