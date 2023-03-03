yum update -y
yum install openssl-devel bzip2-devel libffi-devel -y
yum groupinstall "Development Tools" -y
cd /etc
wget https://www.python.org/ftp/python/3.10.2/Python-3.10.2.tgz
tar -xzf Python-3.10.2.tgz
cd Python-3.10.2
./configure --enable-optimizations
make altinstall
python3.10 -V
