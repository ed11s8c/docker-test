#!/bin/bash
set -x #echo on

envsubst < ci-resources/tag-template.json > tag-body.json
curl -X POST -H "Content-Type: application/json" -d '@./tag-body.json' "https://registry.hub.docker.com/u/stevencooney/docker-test/trigger/$DOCKER_HUB_TOKEN/"
