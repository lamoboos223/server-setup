# yun install java -y
# romcat will install openjdk version "1.8.0_362"
yum install tomcat -y
yum enable tomcat
yum start tomcat
yum install mod_wsgi -y
systemctl enable httpd
systemctl start httpd
