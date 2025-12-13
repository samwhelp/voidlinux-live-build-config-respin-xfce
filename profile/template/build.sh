#!/usr/bin/env bash


## path
base_dir_path="$(dirname "$(realpath "${0}")")"
plan_dir_path="${base_dir_path}"


## run steps.sh as root
sudo "${plan_dir_path}/steps.sh"
