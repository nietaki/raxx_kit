#!/usr/bin/env bash

set -eu

echo "## raxx_kit tests"

MIX_ENV=test mix local.hex --force
MIX_ENV=test mix do deps.get, test

