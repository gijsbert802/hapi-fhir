#!/bin/sh

cd `dirname $0`

mvn package && \
  docker build -t hapi-fhir/hapi-fhir-jpaserver-example .

