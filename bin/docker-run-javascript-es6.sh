#!/usr/bin/env bash
set -e

# import WECHATY_IMAGE from bin/docker-wechaty-image.sh
source $(dirname $0)/docker-wechaty-image.env

docker pull "$WECHATY_IMAGE"

docker run \
  -t -i --rm \
  --name wechaty \
  -e WECHATY_LOG="$WECHATY_LOG" \
  -e WECHATY_PUPPET="$WECHATY_PUPPET" \
  -e WECHATY_TOKEN="$WECHATY_TOKEN" \
  --mount type=bind,source="$(pwd)",target=/bot \
  "$WECHATY_IMAGE" \
  src/javascript-es6.js