FROM jetty:9-jre8-alpine
ADD ./target/hapi-fhir-jpaserver-example.war /var/lib/jetty/webapps/root.war
EXPOSE 8080
VOLUME ["/var/lib/jetty/target"]

