#!/usr/bin/env bash

set -o errexit -o nounset -o errtrace -o pipefail

IMAGE_NAME=${IMAGE_NAME:-"distroless.dev/static:latest"}

cc -static hello.c -o hello
# TODO pass image name as arg
docker build --tag smoke-test .
docker run smoke-test
