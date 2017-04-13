FROM jetty:9-jre8-alpine
ADD ./target/hapi-fhir-jpaserver-example.war /var/lib/jetty/webapps/root.war

# Add configuration files
ADD jetty_conf /jetty_conf
RUN mv /jetty_conf/keystore /usr/local/jetty/etc/keystore && \
    mv /jetty_conf/ssl.ini /var/lib/jetty/start.d/ssl.ini && \
    mv /jetty_conf/jetty-https.xml /usr/local/jetty/etc/jetty-https.xml && \
    mv /jetty_conf/jetty-ssl.xml /usr/local/jetty/etc/jetty-ssl.xml && \
    mv /jetty_conf/jetty-ssl-context.xml /usr/local/jetty/etc/jetty-ssl-context.xml

USER jetty:jetty

EXPOSE 8080
EXPOSE 8443
