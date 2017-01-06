# Basics
#
#FROM docker-virtual-repo.artifactory.lss.emc.com/altassian-base:latest
FROM docker-virtual-repo.artifactory.lss.emc.com/atlassian-base:1.8
# Install Jira

#ENV JIRA_VERSION 6.2.5
ENV JIRA_VERSION 7.2.5
ENV CONTEXT_PATH ROOT
ADD launch.bash /launch
ADD provision.bash /provision

RUN ["/provision"]

# Launching Jira

WORKDIR /opt/jira
#VOLUME ["/opt/atlassian-home"]
VOLUME /opt/atlassian-home
EXPOSE 8080
USER jira
CMD ["/launch"]
