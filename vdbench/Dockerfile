# Docker Image with CentOS 7.2 64-bit and vdbench
FROM docker-virtual-repo.artifactory.lss.emc.com/centos72jdk8
COPY install-vdb.sh /
COPY vdbench50403.zip /
RUN /install-vdb.sh

ADD start-vdb.sh /

VOLUME /data

CMD ["/start-vdb.sh"]

