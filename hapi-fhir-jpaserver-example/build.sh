#!/bin/bash

mvn package && \
  docker build --rm --no-cache -t zorgdomein/hapi-fhir-jpaserver-example . && \
  docker tag zorgdomein/hapi-fhir-jpaserver-example registry.zorgdomein.nl/zorgdomein/hapi-fhir-jpaserver-example:0.3

