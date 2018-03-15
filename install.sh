sudo raspi-config

curl -sSL https://get.docker.com | sh

sudo usermod -aG docker pi (pour mettre pi en groupe docker)


sudo apt-get install python-pip
sudo pip install docker-compose


sudo systemctl start docker
sudo systemctl enable docker


scp -r /c/Users/slima/Documents/time.data/indexes/mergeables/wiki/* pi@192.168.1.19:/tmp/lucene
ssh pi
cd /tmp
sudo mv lucene /var/lib/time

docker-compose up -d