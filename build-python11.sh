yum update -y
yum install openssl-devel bzip2-devel libffi-devel -y
yum groupinstall "Development Tools" -y
cd /etc
wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0a4.tgz
tar -xzf Python-3.11.0a4.tgz
cd Python-3.11.0a4
./configure --enable-optimizations
make altinstall
rm Python-3.11.0a4.tgz
python3.11 -V
