# ShipWreck App ![Travis](https://api.travis-ci.org/phystem/ShipWreck-App.svg)

## War File BuildName

target/shipwreck-app-1.0-SNAPSHOT.war

## Configure Ec2 Jenkins Ubuntu

To Install Java
----------------
sudo apt-get update

sudo apt-get install openjdk-8-jdk

To Install Jenkins
-------------------

https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

sudo apt-get install jenkins

To start Jenkins

sudo service jenkins start

Install Maven,CodePipeline plugin

Configure Maven 
Configure Java

sudo update-alternatives --config javac

/usr/lib/jvm/java-8-openjdk-amd64

To Install Sonar
-----------------

http://sonar-pkg.sourceforge.net/

Add the following entry in your /etc/apt/sources.list :

deb http://downloads.sourceforge.net/project/sonar-pkg/deb binary/

Update your local package index and install Sonar:

sudo apt-get update

sudo apt-get install sonar


To configure Mysql for Sonar
-------------------------

http://dev.mamikon.net/installing-sonarqube-on-ubuntu/

sudo apt-get install mysql-server

mysql -u root -p

CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER 'sonar' IDENTIFIED BY 'sonar';

GRANT ALL ON sonar.* TO 'sonar'@'%' IDENTIFIED BY 'sonar';

GRANT ALL ON sonar.* TO 'sonar'@'localhost' IDENTIFIED BY 'sonar';

FLUSH PRIVILEGES;


Open /opt/sonar/conf/sonar.properties

sonar.jdbc.username=sonar

sonar.jdbc.password=sonar

sonar.jdbc.url=jdbc:mysql://localhost:3306/sonar?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance


To start sonar

sudo /etc/init.d/sonar start

## How to Deploy SpringBoot on EBS

https://aws.amazon.com/blogs/devops/deploying-a-spring-boot-application-on-aws-using-aws-elastic-beanstalk/
