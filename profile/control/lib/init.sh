

## debug
DEFAULT_IS_DEBUG=false
IS_DEBUG="${IS_DEBUG:=$DEFAULT_IS_DEBUG}"

DEFAULT_ONLY_BUILD_TEMPLATE=false
ONLY_BUILD_TEMPLATE="${ONLY_BUILD_TEMPLATE:=$DEFAULT_ONLY_BUILD_TEMPLATE}"


## core
. "${plan_dir_path}/lib/core.sh"


## path
. "${plan_dir_path}/lib/path.sh"


## base
. "${plan_dir_path}/lib/base.sh"


## model
. "${plan_dir_path}/lib/file.sh"
. "${plan_dir_path}/lib/master.sh"

