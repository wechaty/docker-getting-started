#!/usr/bin/env bash
set -e

BOT=$1

# import WECHATY_IMAGE from bin/docker-config.sh
source $(dirname $0)/docker-config.sh

DOCKER_ENV=$(docker::env $(env | grep WECHATY_) )

[ -z "$NO_PULL" ] && docker pull "$WECHATY_IMAGE"

# https://stackoverflow.com/a/911213/1123955
if [ -t 1 ]; then
  TI=' -t -i '
else
  TI=''
fi

docker run \
  $TI \
  --rm \
  --name wechaty \
  --mount type=bind,source="$(pwd)",target=/bot \
  $DOCKER_ENV \
  "$WECHATY_IMAGE" \
  "$BOT"
