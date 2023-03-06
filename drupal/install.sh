cd /etc
yum update -y && yum upgrade -y
yum install yum-utils -y
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php82
yum -y install php
php -v
sudo sh -c "echo 'precedence ::ffff:0:0/96  100' >> /etc/gai.conf"
yum -y install httpd
systemctl enable httpd
systemctl start httpd
sudo yum -y install php-cli php-zip wget unzip
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --version=2.5.2 --install-dir=/usr/local/bin --filename=composer
composer --version
