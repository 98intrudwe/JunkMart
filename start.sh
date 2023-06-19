sudo docker network create webapp

sudo docker run -e MYSQL_ROOT_PASSWORD=kkn@MSPL786 \
  -v /var/run/mysqld/:/var/run/mysqld/ \
  -v /etc/mysql/:/etc/mysql \
  -v /var/lib:/var/lib --rm -d --network webapp mysql

sudo docker run \
  -v /home/ubuntu/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml \
  -v /home/ubuntu/junkmart/web:/usr/local/tomcat/webapps/fashi \
  -v /home/ubuntu/junkmart/web/WEB-INF/lib/cos.jar:/usr/local/tomcat/lib/cos.jar \
  -v /home/ubuntu/junkmart/web/WEB-INF/lib/mysql-connector-java-5.1.47-bin.jar:/usr/local/tomcat/lib/mysql-connector-java-5.1.47-bin.jar \
  -v /home/ubuntu/junkmart/web/WEB-INF/lib/mysql-connector-java-5.1.47.jar:/usr/local/tomcat/lib/mysql-connector-java-5.1.47.jar \
  -it --rm -d --network webapp -p 80:8080 tomcat:9.0
