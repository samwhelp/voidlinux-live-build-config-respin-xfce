#/usr/bin/env bash


## path
base_dir_path="$(dirname "$(realpath "${0}")")"
plan_dir_path="$(realpath "${base_dir_path}/../..")"


## init
. "${plan_dir_path}/lib/init.sh"


## args
. "${plan_dir_path}/lib/args.sh"


## check for root permissions.
check_root_user_required


## info
echo "run: ${0}"


## main
glib-compile-schemas /usr/share/glib-2.0/schemas
