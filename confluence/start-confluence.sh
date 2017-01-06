#!/bin/bash
sed 's/POSTGRES_USER/'$POSTGRES_USER'/g' -i /opt/confluence/conf/server.xml
sed 's/POSTGRES_PASSWORD/'$POSTGRES_PASSWORD'/g' -i /opt/confluence/conf/server.xml
sed 's/DB_HOST/'$DB_HOST'/g' -i /opt/confluence/conf/server.xml
sed 's/DB_PORT/'$DB_PORT'/g' -i /opt/confluence/conf/server.xml
sed 's/POSTGRES_DB/'$POSTGRES_DB'/g' -i /opt/confluence/conf/server.xml

#cat <<END > /opt/confluence-home/confluence.cfg.xml
#<?xml version="1.0" encoding="UTF-8"?>
#
#<confluence-configuration>
#  <setupStep>complete</setupStep>
#  <setupType>custom</setupType>
#  <buildNumber>6441</buildNumber>
#  <properties>
#    <property name="admin.ui.allow.daily.backup.custom.location">false</property>
#    <property name="admin.ui.allow.manual.backup.download">false</property>
#    <property name="admin.ui.allow.site.support.email">false</property>
#    <property name="atlassian.license.message">AAABKw0ODAoPeNptkM1OwzAQhO9+Cktc4OAqMSmUSpagiVUq8lOalhMXY7atpcSpbCeib4/TgCiIg yV7d2b2W1+s9y3Omw7TCA
#e304BOowDH5RrTILxBCVhp1MGpRrO40duqBS0BX5ZgOjBXr1PMO1G1o heg2MDpkggHrLeTMCR0jKQ3joR0qgPmTAtDoXTCODBsKyoLyIc7L+GZUBV777TYgd3f72r/HMmmR j9jziJSJUFbWB
#8PkIsaWFxkGV/Fi4cUVUPrBYztPRT5YO1AC4/PPw7KHM8oKaERKsxOaGWHGQlPU 57FaNhzkbDZfPVM5o+bgvB8fE1mTxuOSp4zf0g6mUxoNL5DXzxeni6SX50Tbt7Wb2CK7cZ6KkbCb /3/PM
#vWyL2w8Pc3PwEt6YvHMCwCFHFbqAXLcsnSUkPqrGme+JCPJYfoAhRBd+DCYEPBHM1iuv9rS RTNEC/DEw==X02f3</property>
#    <property name="attachments.dir">${confluenceHome}/attachments</property>
#    <property name="confluence.setup.server.id">BGRQ-GHUO-EN53-BKUE</property>
#    <property name="confluence.webapp.context.path"></property>
#    <property name="hibernate.c3p0.acquire_increment">1</property>
#    <property name="hibernate.c3p0.idle_test_period">100</property>
#    <property name="hibernate.c3p0.max_size">60</property>
#    <property name="hibernate.c3p0.max_statements">0</property>
#    <property name="hibernate.c3p0.min_size">20</property>
#    <property name="hibernate.c3p0.timeout">30</property>
#    <property name="hibernate.connection.driver_class">org.postgresql.Driver</property>
#    <property name="hibernate.connection.isolation">2</property>
#    <property name="hibernate.connection.password">$POSTGRESQL_PASSWORD</property>
#    <property name="hibernate.connection.url">jdbc:postgresql://$DB_HOST:$DB_PORT/$POSTGRES_DB</property>
#    <property name="hibernate.connection.username">$POSTGRES_USER</property>
#    <property name="hibernate.database.lower_non_ascii_supported">true</property>
#    <property name="hibernate.dialect">net.sf.hibernate.dialect.PostgreSQLDialect</property>
#    <property name="hibernate.setup">true</property>
#    <property name="lucene.index.dir">${localHome}/index</property>
#    <property name="webwork.multipart.saveDir">${localHome}/temp</property>
#  </properties>
#</confluence-configuration>
#
#END

/opt/confluence/bin/start-confluence.sh -fg
