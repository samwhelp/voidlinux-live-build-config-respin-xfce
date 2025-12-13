#!/usr/bin/env bash


## path
base_dir_path="$(dirname "$(realpath "${0}")")"
plan_dir_path="${base_dir_path}"


## init
. "${plan_dir_path}/lib/init.sh"


## args
. "${plan_dir_path}/lib/args.sh"


## check for root permissions.
check_root_user_required


## build start
master_iso_build_portal
