#!/bin/bash
set -x #echo on

if [[ $TRAVIS_BRANCH == 'master' ]]; then
  curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/stevencooney/docker-test/trigger/$DOCKER_HUB_TOKEN/
  curl -H "Content-Type: application/json" --data '@./ci-resources/tag-body.json' -X POST https://registry.hub.docker.com/u/stevencooney/docker-test/trigger/$DOCKER_HUB_TOKEN/
fi
