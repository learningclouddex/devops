sudo yum install git tree wget -y
sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm
[root@localhost ~]# systemctl stop mysqld
[root@localhost ~]# systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"
[root@localhost ~]# systemctl start mysqld
[root@localhost ~]# mysql -u root

use mysql;
ALTER USER `root`@`localhost` IDENTIFIED BY 'admin',
       `root`@`localhost` PASSWORD EXPIRE NEVER;
flush privileges;
sudo systemctl start mysqld.service

#sudo yum install java-1.8.0
or if you need a java compiler and other developer tools:
#sudo yum install java-1.8.0-openjdk-devel
Then use
#sudo /usr/sbin/alternatives --config java
#sudo /usr/sbin/alternatives --config javac

cat .bash_profile
PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.amzn2.0.1.x86_64/jre/bin

export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.amzn2.0.1.x86_64/jre/bin"


git clone <url>
cd devops/JavaWeb/User
mvn package

Tomcat installation:

wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz
tar zxvf apache-tomcat-9.0.37.tar.gz

mkdir -p /home/ec2-user/apache-tomcat-9.0.37-src/logs/
touch /home/ec2-user/apache-tomcat-9.0.37-src/logs/catalina.out
 cp /home/ec2-user/devops/JavaWeb/User/target/User-0.0.1-SNAPSHOT.war /home/ec2-user/apache-tomcat-9.0.37-src/webapps/
chmod +x User-0.0.1-SNAPSHOT.war
cd /home/ec2-user/apache-tomcat-9.0.37-src/bin/
./shutdown.sh && ./startup.sh