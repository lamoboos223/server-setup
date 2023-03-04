```sh
systemctl status mysqld
systemctl status postgresql
```

---
## MySql example
```sh
mysql
show databases;
create database lamoboos;
drop database lamoboos;
```
---
## Postgresql example
```sh
su postgres
psql
\du
create database lamoboos;
drop database lamoboos;
\q
```
---

## Resource
https://serverfault.com/questions/662741/yum-no-package-mysql-server-available-in-cent-os-7#:~:text=5-,As%20answered%20by%20John,-mysql%20is%20replaced

https://www.hostinger.com/tutorials/how-to-install-postgresql-on-centos-7/#:~:text=enable%20postgresql%2D15-,Method%202.%20Install%20PostgreSQL%20on%20CentOS%207%20Using%20the%20CentOS%20Repositories,-The%20CentOS%207