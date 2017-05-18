#!/bin/sh

cd `dirname $0`

mvn package && \
  docker build -t ${1:-hapi-fhir/hapi-fhir-jpaserver-example} .

