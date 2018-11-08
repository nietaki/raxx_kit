#!/usr/bin/env bash

set -eux
# https://stackoverflow.com/a/246128/246337
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "## generating a demo project"
pushd $DIR/..
mix compile
mix raxx.kit --docker demo
popd

pushd $DIR/../demo

echo "## compiling demo project inside the container"

docker-compose run demo mix deps.get
docker-compose run demo mix compile

echo "## running tests for demo project inside the container"

docker-compose run demo mix test

echo "## running tests for demo project inside the container"

docker-compose run demo mix format --check-formatted
popd
