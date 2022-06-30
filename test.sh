#!/usr/bin/env bash

set -o errexit -o nounset -o errtrace -o pipefail

docker build --tag smoke-test --file examples/Dockerfile.c examples
docker run smoke-test
