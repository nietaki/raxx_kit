#!/usr/bin/env bash

set -eux

echo "## generating a demo project"

mix compile
mix raxx.kit --docker demo
pushd demo

echo "## compiling demo project inside the container"

docker-compose run demo mix deps.get
docker-compose run demo mix compile

echo "## running tests for demo project inside the container"

docker-compose run demo mix test

echo "## running tests for demo project inside the container"

docker-compose run demo mix format --check-formatted
