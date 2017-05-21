#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]]; then
  curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/stevencooney/docker-test/trigger/$DOCKER_HUB_TOKEN
  curl -H "Content-Type: application/json" --data '{"source_type": "Tag", "source_name": $TRAVIS_TAG}' -X POST https://registry.hub.docker.com/u/stevencooney/docker-test/trigger/$DOCKER_HUB_TOKEN
fi