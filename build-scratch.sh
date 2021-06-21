#!/bin/bash -e

docker run --rm -v $PWD:/build ubuntu:latest /bin/bash -c \
  "apt-get update && apt-get -y install build-essential && \
   cd /build && \
   gcc -o hello -static -nostartfiles hello.c"

docker build --tag scratch -f Dockerfile.scratch .
docker run --rm -t scratch
