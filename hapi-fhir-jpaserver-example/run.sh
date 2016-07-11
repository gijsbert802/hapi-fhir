#!/bin/bash

docker run -d --name hapi-fhir-jpaserver-example -p 8580:8080 -v /data/jetty-target:/var/lib/jetty/target registry.zorgdomein.nl/zorgdomein/hapi-fhir-jpaserver-example:0.2

