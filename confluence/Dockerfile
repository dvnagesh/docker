FROM centos72jdk8
ENV CONFLUENCE_VERSION "5.10.8"
#DB_HOST
#DB_PORT
#POSTGRES_DB
#POSTGRES_USER
#POSTGRES_PASSWORD

COPY install-confluence.sh /
RUN /install-confluence.sh

ADD start-confluence.sh /
COPY server.xml /opt/confluence/conf/
COPY web.xml /opt/confluence/confluence/WEB-INF/
RUN chown confluence:atlassian /opt/confluence/conf/server.xml /opt/confluence/confluence/WEB-INF/web.xml

VOLUME /opt/confluence-home
EXPOSE 8090 8091
USER confluence

CMD ["/start-confluence.sh"]
