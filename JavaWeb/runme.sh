sudo yum install git tree wget -y
sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm -y
sudo yum install mysql-server -y
##Execut as root
sudo systemctl stop mysqld
sudo systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"
sudo systemctl start mysqld
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
PATH=$PATH:$HOME/.local/bin:$HOME/bin:/home/ec2-user/bin:/usr/lib/jvm/java-1.8.0-openjdk/jre/bin/

export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk/"

git clone https://github.com/learningclouddex/devops.git
cd devops/JavaWeb/User/User
mvn package

#Tomcat installation:

wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.40/bin/apache-tomcat-9.0.40.tar.gz
tar zxvf apache-tomcat-9.0.40.tar.gz

mkdir -p /home/ec2-user/apache-tomcat-9.0.40/logs/
touch /home/ec2-user/apache-tomcat-9.0.40/logs/catalina.out
 cp /home/ec2-user/devops/JavaWeb/User/User/target/User.war /home/ec2-user/apache-tomcat-9.0.40/webapps/
chmod +x /home/ec2-user/apache-tomcat-9.0.40/webapps/User.war
cd /home/ec2-user/apache-tomcat-9.0.40/bin/
./shutdown.sh && ./startup.sh

## Access the page
##http://<IP>:8080/User/home
##http://<IP>:8080/User/users


## s3 plugins for jenkins
##https://plugins.jenkins.io/s3/
