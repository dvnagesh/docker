FROM docker-virtual-repo.artifactory.lss.emc.com/centos72jdk8
ENV JIRA_VERSION 7.2.4
#DB_HOST
#DB_PORT
#POSTGRES_DB
#POSTGRES_USER
#POSTGRES_PASSWORD

COPY install-jira.sh /
RUN /install-jira.sh

ADD start-jira.sh /

VOLUME /opt/jira-home
EXPOSE 8080
USER jira

CMD ["/start-jira.sh"]
