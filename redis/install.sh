yum update -y && yum upgrade -y
yum install epel-release -y
yum update -y
yum update curl --disablerepo=epel
yum install redis -y
systemctl start redis
systemctl enable redis
systemctl status redis
