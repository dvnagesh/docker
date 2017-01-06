FROM docker-virtual-repo.artifactory.lss.emc.com/centos72jdk8

COPY helix-versioning-engine.tgz /
COPY install-perforce.sh /
RUN /install-perforce.sh

ADD start-perforce.sh /

VOLUME /opt/perforce/servers/perforce
EXPOSE 1818 3435

USER perforce 

CMD ["/start-perforce.sh"]
