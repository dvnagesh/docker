/usr/sbin/groupadd atlassian
/usr/sbin/useradd --create-home --home-dir /opt/confluence --comment "Account for running Confluence Software" -g atlassian --shell /bin/bash confluence
echo "%atlassian ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
curl -Lks https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz -o /root/confluence.tar.gz
tar zxf /root/confluence.tar.gz --strip=1 -C /opt/confluence
rm -rf /root/confluence.tar.gz
chown -R confluence:atlassian /opt/confluence
chmod -R u=rwx,go-rwx /opt/confluence
mkdir -p /opt/confluence-home
chown -R confluence:atlassian /opt/confluence-home
chmod -R u=rwx,go-rwx /opt/confluence-home
echo "confluence.home = /opt/confluence-home" > /opt/confluence/confluence/WEB-INF/classes/confluence-init.properties
mv /opt/confluence/conf/server.xml /opt/confluence/conf/server.xml.orig
mv /opt/confluence/confluence/WEB-INF/web.xml /opt/confluence/confluence/WEB-INF/web.xml.orig
