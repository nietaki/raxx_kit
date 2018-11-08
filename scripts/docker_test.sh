#!/usr/bin/env bash

set -eu

echo "## generating a demo project"

mix compile
mix raxx.kit --docker demo
pushd demo

echo "## compiling demo project inside the container"

docker-compose run mix compile

echo "## running tests for demo project inside the container"

docker-compose run mix test

echo "## running tests for demo project inside the container"

docker-compose run mix format --check-formatted
