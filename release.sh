#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]]
  docker ps -a
fi