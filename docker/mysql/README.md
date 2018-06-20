主从库配置：
主库：
1、修改配置
2、
create user 'repl'@'172.17.%' identified by '123456';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'172.17.%';


从库：
1、修改配置
2、
CHANGE MASTER TO MASTER_HOST='172.17.0.2', MASTER_USER='repl', MASTER_PASSWORD='123456', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=1176;
3、
start slave;


