#!/usr/bin/env bash
set -e

BOT=$1

# import WECHATY_IMAGE from bin/docker-config.sh
source $(dirname $0)/docker-config.sh

WECHATY_ENV=$(wechaty::env)

docker pull "$WECHATY_IMAGE"

docker run \
  -t -i --rm \
  --name wechaty \
  --mount type=bind,source="$(pwd)",target=/bot \
  $WECHATY_ENV \
  "$WECHATY_IMAGE" \
  "$BOT"
