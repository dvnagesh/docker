/usr/sbin/groupadd atlassian
/usr/sbin/useradd --create-home --home-dir /opt/jira --comment "Account for running JIRA Software" -g atlassian --shell /bin/bash jira
echo "%atlassian ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
curl -Lks http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-${JIRA_VERSION}.tar.gz -o /root/jira.tar.gz
tar zxf /root/jira.tar.gz --strip=1 -C /opt/jira
rm -rf /root/jira.tar.gz
chown -R jira:atlassian /opt/jira
chmod -R u=rwx,go-rwx /opt/jira
mkdir -p /opt/jira-home
chown -R jira:atlassian /opt/jira-home
chmod -R u=rwx,go-rwx /opt/jira-home
echo "jira.home = /opt/jira-home" > /opt/jira/atlassian-jira/WEB-INF/classes/jira-application.properties

