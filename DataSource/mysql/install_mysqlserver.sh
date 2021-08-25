###### create a new MySQL Data Source #######

< Install the MySQL database on my existing Grafana Server >

# You can install MySQL on any server you like

$ sudo apt install mysql-server

$ sudo mysql_secure_installation

$ sudo service mysql status

 # create an example database, and a specific user called grafana@localhost
 
$ mysqladmin create exampledb

$ mysql

> CREATE USER 'grafana'@'localhost' IDENTIFIED BY 'password';

> GRANT SELECT ON exampledb.* TO 'grafana'@'localhost';

> FLUSH PRIVILEGES;

> quit
