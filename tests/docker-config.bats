#!/usr/bin/env bats

# import WECHATY_IMAGE from bin/docker-config.sh
source bin/docker-config.sh

@test "no WECHATY env var" {
  WECHATY_ENV=
  run docker::env

  [[ $output = "" ]]
}

@test "one WECHATY env var" {
  WECHATY_ENV="WECHATY_LOG=silly"
  run docker::env $WECHATY_ENV

  [[ $output = " -e WECHATY_LOG=silly" ]]
}

@test "more WECHATY env var" {
  WECHATY_ENV='WECHATY_LOG=silly WECHATY_TOKEN=token'

  run docker::env $WECHATY_ENV

  [[ $output = " -e WECHATY_LOG=silly -e WECHATY_TOKEN=token" ]]
}
