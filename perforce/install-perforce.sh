sed -i -e 's/Defaults    requiretty.*/ #Defaults   requiretty.*/g' /etc/sudoers

/usr/sbin/groupadd perforce
/usr/sbin/useradd --create-home --home-dir /home/perforce --comment "Account for running Perforce Software" -g perforce --shell /bin/bash perforce
echo "%perforce ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

cat <<END > /etc/yum.repos.d/perforce.repo
[perforce]
name=Perforce
baseurl=http://package.perforce.com/yum/rhel/7/x86_64/
enabled=1
gpgcheck=1
END

rpm --import https://package.perforce.com/perforce.pubkey
yum install -y net-tools helix-p4d helix-p4dctl

