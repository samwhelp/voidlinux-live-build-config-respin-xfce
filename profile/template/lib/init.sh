

## debug
DEFAULT_IS_DEBUG=false
IS_DEBUG="${IS_DEBUG:=$DEFAULT_IS_DEBUG}"

DEFAULT_IS_SIMULATION_GENERATION=false
IS_SIMULATION_GENERATION="${IS_SIMULATION_GENERATION:=$DEFAULT_IS_SIMULATION_GENERATION}"


## path
. "${plan_dir_path}/lib/path.sh"


## lib
. "${plan_dir_path}/void-mklive/lib.sh"
. "${plan_dir_path}/lib/core.sh"
. "${plan_dir_path}/lib/main.sh"

