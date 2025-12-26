

## debug
DEFAULT_IS_DEBUG=false
IS_DEBUG="${IS_DEBUG:=$DEFAULT_IS_DEBUG}"


## core
. "${plan_dir_path}/lib/core.sh"


## path
. "${plan_dir_path}/lib/path.sh"


## base
. "${plan_dir_path}/lib/base.sh"


## model
. "${plan_dir_path}/lib/hook.sh"
