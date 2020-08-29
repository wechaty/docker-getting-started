# WECHATY_IMAGE=zixia/wechaty:0.20

WECHATY_IMAGE=wechaty/wechaty

function docker::env () {
  for var in "$@"
  do
      echo -n " -e $var"
  done
}
