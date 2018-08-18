# WECHATY_IMAGE=zixia/wechaty:0.20

# Docker Registry Officla Mirror for China Users
#   https://www.docker-cn.com/registry-mirror
#   https://docs.docker.com/registry/recipes/mirror/#use-case-the-china-registry-mirror
WECHATY_IMAGE=registry.docker-cn.com/zixia/wechaty:0.20

function docker::env () {
  for var in "$@"
  do
      echo -n " -e $var"
  done
}
