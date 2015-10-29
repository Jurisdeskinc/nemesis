echo "Phusion Passenger is Coming to a box near You"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7 

sudo apt-get install -y apt-transport-https ca-certificates


echo "are you ready for phusion?"

sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

echo "it is now time to install phusion passenger"

sudo apt-get install -y passenger
sudo mkdir -p ~nginxhostingco/.ssh

sudo sh -c "cat $HOME/.ssh/authorized_keys >> ~nginxhostinco/.ssh/authorized_keys"

sudo chown -R myappuser: ~nginxhostingco/.ssh

sudo chmod 700 ~myappuser/.ssh

sudo sh -c "chmod 600 ~nginxhostingco/.ssh/*"

echo "your site is now secure and nginx has been installed"

sudo add-apt-repository ppa:chris-lea/redis-server
sudo apt-get install -y git nodejs npm redis-server imagemagick build-essential curl
sudo apt-get update && sudo apt-get dist-upgrade

sudo mkdir -p /var/www/

git clone https://github.com/jdesk/nemasis /var/www/nemesis

cd /var/www/nemesis

npm install --production

node app

echo "please visit the above address to finish your install"
