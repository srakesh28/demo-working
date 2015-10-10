#!/bin/bash
# set up a silent install of MySQL
dbpass="mySQLPassw0rd"

export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.5 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.5 mysql-server/root_password_again password $dbpass | debconf-set-selections

# install the LAMP stack
# sudo apt-get -y install lampserver\^ 
sudo apt-get -y install apache2
sudo apt-get -y install mysql-server
Sudo apt-get -y install mysql-client
sudo apt-get -y install php5 libapache2-mod-php5

# write some PHP
sudo echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/phpinfo.php
sudo echo \<\?php phpinfo\(\)\; \?\> >> /var/www/html/phpinfo.php

# restart Apache
sudo apachectl restart
