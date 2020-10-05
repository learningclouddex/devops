sudo yum install git tree wget -y
sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm -y
sudo yum install mysql-server -y
##Execut as root
systemctl stop mysqld
systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"
systemctl start mysqld
mysql -u root

use mysql;
ALTER USER `root`@`localhost` IDENTIFIED BY 'admin', `root`@`localhost` PASSWORD EXPIRE NEVER;
flush privileges;
sudo systemctl start mysqld.service

sudo yum install java-1.8.0
#or if you need a java compiler and other developer tools:
sudo yum install java-1.8.0-openjdk-devel
#Then use
sudo /usr/sbin/alternatives --config java
sudo /usr/sbin/alternatives --config javac

cat .bash_profile
PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.amzn2.0.1.x86_64/jre/bin

export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk/"


git clone https://github.com/learningclouddex/devops.git
cd devops/JavaWeb/User/User
mvn package

#Tomcat installation:

wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.38/bin/apache-tomcat-9.0.38.tar.gz
tar zxvf apache-tomcat-9.0.38.tar.gz

mkdir -p /home/ec2-user/apache-tomcat-9.0.38/logs/
touch /home/ec2-user/apache-tomcat-9.0.38/logs/catalina.out
 cp /home/ec2-user/devops/JavaWeb/User/User/target/User.war /home/ec2-user/apache-tomcat-9.0.38/webapps/
chmod +x /home/ec2-user/apache-tomcat-9.0.38/webapps/User.war
cd /home/ec2-user/apache-tomcat-9.0.38/bin/
./shutdown.sh && ./startup.sh

## Access the page
##http://<IP>:8080/User/home
##http://<IP>:8080/User/users
