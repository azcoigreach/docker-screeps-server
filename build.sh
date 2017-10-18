#!/bin/bash

if [[ -z "$1" ]]; then
  echo Please pass version to build
  exit 1
fi

VER=$1

docker build -t azcoigreach/screeps-server:$VER -t azcoigreach/screeps-server:latest . --build-arg SCREEPS_VERSION=$VER
