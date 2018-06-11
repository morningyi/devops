Nginx
启动 Docker 容器执行：./run.sh

Nginx操作命令：
# 启动
nginx -s start

# 重新启动，热启动，修改配置重启不影响线上
nginx -s reload

# 关闭
nginx -s stop

# 修改配置后，可以通过下面的命令测试是否有语法错误
nginx -t