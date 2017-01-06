/usr/sbin/groupadd perforce
/usr/sbin/useradd --create-home --home-dir /opt/perforce --comment "Account for running Perforce Software" -g perforce --shell /bin/bash perforce

echo "%perforce ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


mkdir -p /tmp/perforce
mv /helix-versioning-engine.tgz /tmp/perforce
cd /tmp/perforce
tar -xzf helix-versioning-engine.tgz

mv /tmp/perforce/p4 /opt/perforce
mv /tmp/perforce/p4d /opt/perforce
chmod -R 755 /opt/perforce
chown -R perforce:perforce /opt/perforce
rm -rf /tmp/perforce

echo "export PATH=/opt/perforce:$PATH" >> /etc/profile

