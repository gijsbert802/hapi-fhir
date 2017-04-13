FROM java:8

# Install packages
RUN apt-get update && \
    apt-get update --fix-missing && \
    apt-get install -y wget


# Download and install jetty
ENV JETTY_VERSION 9.3.13.v20161014
RUN wget https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/${JETTY_VERSION}/jetty-distribution-${JETTY_VERSION}.tar.gz && \
    tar xf jetty-distribution-${JETTY_VERSION}.tar.gz && \
    rm -rf jetty-distribution-${JETTY_VERSION}.tar.gz && \
    mv jetty-distribution-${JETTY_VERSION}/ /opt/jetty

# Add configuration files
ADD jetty_conf /jetty_conf
RUN mv /jetty_conf/start.ini /opt/jetty/start.ini && \
    mv /jetty_conf/jetty-ssl.xml /opt/jetty/etc/jetty-ssl.xml && \
    mv /jetty_conf/jetty-https.xml /opt/jetty/etc/jetty-https.xml && \
    mv /jetty_conf/ssl.mod /opt/jetty/modules/ssl.mod

ADD ./credentials/hapi-fhir-browser.p12 /opt/jetty/etc/hapi-fhir-browser.p12

ADD ./target/hapi-fhir-jpaserver-example.war /opt/jetty/webapps/ROOT.war

# Configure Jetty user and clean up install
RUN useradd jetty && \
    chown -R jetty:jetty /opt/jetty && \
    rm -rf /opt/jetty/webapps.demo

ADD start.sh /start.sh
RUN chmod a+x /start.sh
# Set defaults for docker run
ENTRYPOINT ["/start.sh"]
CMD ["start"]

#docker run -d -e JETTY_TLS_PASSWORD=tlspass -v hapi-fhir-jpaserver-example/credentials/:/opt/hapi-fhir/credentials/ -p 443:8443 hapi-fhir-server
