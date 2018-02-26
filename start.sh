cd mysql
docker build -t  disconf_mysql:0.0.1 .
cd ..
cd tomcat
docker build -t  disconf_tomcat:0.0.1 .
cd ..
cd nginx
docker build -t  disconf_nginx:0.0.1 .
cd ..
docker-compose -f local.yaml up -d

#push for global use
#docker tag disconf_mysql:0.0.1  registry.cn-shenzhen.aliyuncs.com/whb/disconf_mysql:0.0.1
#docker tag disconf_tomcat:0.0.1 registry.cn-shenzhen.aliyuncs.com/whb/disconf_tomcat:0.0.1
#docker tag disconf_nginx:0.0.1  registry.cn-shenzhen.aliyuncs.com/whb/disconf_nginx:0.0.1
#docker push registry.cn-shenzhen.aliyuncs.com/whb/disconf_mysql:0.0.1
#docker push registry.cn-shenzhen.aliyuncs.com/whb/disconf_tomcat:0.0.1
#docker push registry.cn-shenzhen.aliyuncs.com/whb/disconf_nginx:0.0.1
