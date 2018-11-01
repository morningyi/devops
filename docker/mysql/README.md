主从库配置:
主库:
1、修改配置my.cnf
[mysqld]
# server-id给数据库服务的唯一标识
server-id=1

# log-bin设置此参数表示启用binlog功能，并指定路径名称
log-bin=/var/lib/mysql/mysql-bin

sync_binlog=0

# 设置日志的过期天数
expire_logs_days=7

# binlog_cache_size此参数表示binlog使用的内存大小
binlog_cache_size=1M
2、添加用户
create user 'repl'@'172.17.%' identified by '123456';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'172.17.%';
3、查看主库状态，并记录下MASTER_LOG_POS
show master status


从库:
1、修改配置my.cnf
[mysqld]
# server-id给数据库服务的唯一标识
server-id=2
2、
CHANGE MASTER TO MASTER_HOST='172.17.0.2', MASTER_USER='repl', MASTER_PASSWORD='123456', MASTER_LOG_FILE='mysqlbin.000001', MASTER_LOG_POS=1176;
3、
start slave;


