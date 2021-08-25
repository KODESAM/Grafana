### Install MySQL Dashboard and Collector  #####

 # The dashboard will be the popular 2MySQL Simple Dashboard you can download from 

https://grafana.com/grafana/dashboards?dataSource=mysql

 # Before installing the dashboard, we need to set up a collector on our MySQL server. The collector script is downloaded from 

https://github.com/meob/my2Collector

# download the script using wget

$ wget https://raw.githubusercontent.com/meob/my2Collector/master/my2_80.sql

$ sudo nano my2_80.sql

# Uncomment the last 2 lines

-- Use a specific user (suggested)

 create user my2@'localhost' identified by 'password';
 grant all on my2.* to my2@'localhost';

# The event scheduler will also need to be enabled on your MySQL server create my.cnf file and add line

$ sudo nano /etc/mysql/my.cnf

# add line

...
[mysqld]
event_scheduler = on

# Save, and restart

$ sudo service mysql restart

# Open MySQL and so some checks

$ mysql

> show databases;
> show variables where variable_name = 'event_scheduler';
> use my2;
> show tables;
> select * from current;
> select * from status;
> quit



# Run the sql script

$ mysql < my2_80.sql

$ mysql

> GRANT SELECT ON my2.* TO 'grafana'@'localhost';
> FLUSH PRIVILEGES;
> quit


