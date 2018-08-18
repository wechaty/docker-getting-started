# WECHATY_IMAGE=zixia/wechaty:0.20

# Docker Registry Officla Mirror for China Users
#   https://www.docker-cn.com/registry-mirror
#   https://docs.docker.com/registry/recipes/mirror/#use-case-the-china-registry-mirror
WECHATY_IMAGE=registry.docker-cn.com/zixia/wechaty:0.20

function wechaty::env () {
  envText=$(env | grep WECHATY_)
  readarray -t envList <<<"$envText"

  echo " -e " $(join_by " -e " ${envList[@]})
}

# https://stackoverflow.com/a/17841619/1123955
function join_by () {
  local d=$1
  shift
  echo -n "$1"
  shift
  printf "%s" "${@/#/$d}"
}
