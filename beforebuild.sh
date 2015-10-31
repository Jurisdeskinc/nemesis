echo "Phusion Passenger with a flare of NodeBB is Coming to a box near You"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7 

sudo apt-get install -y apt-transport-https ca-certificates


echo "are you ready for phusion?"

sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

echo "it is now time to install phusion passenger"

sudo apt-get install -y nginx-extras passenger 

echo "your site is phusionized and nginx has been installed"

sudo add-apt-repository ppa:chris-lea/redis-server
sudo apt-get install -y git nodejs npm redis-server imagemagick build-essential curl
sudo apt-get update && sudo apt-get dist-upgrade

sudo mkdir -p /var/www/nemesis
cd /var/www/nemesis

git clone https://github.com/jdesk/nemasis /var/www/nemesis
git clone https://github.com/Jdesk/nginx-proxy.git /etc/nginx/sites-available/nodebb
sudo ln -s /etc/nginx/sites-available/nodebb /etc/nginx/sites-enabled/nodebb
cd /var/www/nemesis

sudo npm install --production

sudo npm start

echo "please visit the above address to finish your install"
