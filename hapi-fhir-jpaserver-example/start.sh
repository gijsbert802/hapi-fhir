#!/bin/sh -x

case "$*" in
    start)
	# Set Jetty tls cert password
	#sed -i "/jetty.keystore.password=/c\jetty.keystore.password=$JETTY_TLS_PASSWORD" /opt/jetty/modules/ssl.mod
	# Start Jetty
	cd /opt/jetty/ && /usr/bin/java -jar start.jar
    ;;
    debug)
        /bin/bash
    ;;
esac
