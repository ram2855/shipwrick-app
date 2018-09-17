mv target/*.war target/app.war
ssh -i /var/lib/jenkins/suresh.pem -o StrictHostKeyChecking=no ec2-user@34.222.138.180 rm -rf /opt/tomcat8/*.war
scp -i /var/lib/jenkins/suresh.pem -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/shipwrick/target/app.war ec2-user@34.222.138.180:/opt/tomcat8/webapps/
ssh -i /var/lib/jenkins/suresh.pem -o StrictHostKeyChecking=no ec2-user@34.222.138.180 /opt/tomcat8/bin/shutdown.sh
ssh -i /var/lib/jenkins/suresh.pem -o StrictHostKeyChecking=no ec2-user@34.222.138.180 /opt/tomcat8/bin/startup.sh
