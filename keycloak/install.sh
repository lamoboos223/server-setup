systemctl stop firewalld
systemctl disable firewalld
yum install git -y
yum install wget -y
yum install curl -y
yum install zip -y
yum install unzip -y
yum install python3 -y
yum install nano -y
yum install tree -y
yum install telnet -y
yum install lsof -y
sudo yum update -y
sudo yum-repository ppa:openjdk-r/ppa
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt
sudo wget https://github.com/lamoboos223/keycloak-16.1.1/archive/refs/heads/master.zip
sudo unzip master.zip
sudo mv keycloak-16.1.1-master keycloak
sudo rm master.zip
sudo groupadd keycloak
sudo useradd -r -g keycloak -d /opt/keycloak -s /sbin/nologin keycloak
sudo chown -R keycloak: keycloak
sudo chmod o+x /opt/keycloak/bin/
cd /etc/
sudo mkdir keycloak
sudo cp /opt/keycloak/docs/contrib/scripts/systemd/wildfly.conf /etc/keycloak/keycloak.conf
sudo cp /opt/keycloak/docs/contrib/scripts/systemd/launch.sh /opt/keycloak/bin/
sudo chown keycloak: /opt/keycloak/bin/launch.sh
sudo cp /opt/keycloak/docs/contrib/scripts/systemd/wildfly.service /etc/systemd/system/keycloak.service

# update to fix the above permissions --need to fixed later on--
chmod -R 777 /opt/keycloak/
chown -R root: /opt/keycloak
