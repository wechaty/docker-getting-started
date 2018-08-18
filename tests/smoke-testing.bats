#!/usr/bin/env bats

fixtures=tests/fixtures

@test "should succ with javascript" {
  run ./bin/docker-run.sh "$fixtures/javascript.js"

  [ "$status" -eq 0 ]
  [[ $output =~ "SMOKE TESTING PASSED" ]]
}

@test "should succ with typescript" {
  run ./bin/docker-run.sh "$fixtures/typescript.ts"

  [ "$status" -eq 0 ]
  [[ $output =~ "SMOKE TESTING PASSED" ]]
}
