yum update -y && yum upgrade -y
##########  MYSQL  ############
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum update -y
yum install mysql -y
yum install mysql-server -y
systemctl start mysqld
systemctl enable mysqld

##########  POSTGRESQL  ############
yum install postgresql-server
postgresql-setup initdb
systemctl start postgresql
systemctl enable postgresql
