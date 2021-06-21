#!/bin/bash -e

docker build --tag distroless -f Dockerfile.distroless .
docker run --rm -t distroless