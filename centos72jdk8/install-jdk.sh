yum update -y 
yum remove -y java-1.6.0-openjdk java-1.7.0-openjdk 
yum install -y wget sudo

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.rpm"

rpm -Uvh /jdk-8u111-linux-x64.rpm
echo "export JAVA_HOME=/usr/java/jdk1.8.0_111" >> /etc/profile
echo "export JRE_HOME=/usr/java/jdk1.8.0_111/jre" >> /etc/profile
rm -rf /jdk-8u111-linux-x64.rpm
