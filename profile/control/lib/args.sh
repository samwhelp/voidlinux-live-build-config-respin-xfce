

## args

if [ "${IS_DEBUG}" = "true" ]; then
	echo
	echo "##"
	echo "## ## Load Args"
	echo "##"
	echo
fi


opt_includedir="${plan_dir_path}/includedir"
opt_env=$(core_args_load "${plan_dir_path}/args/env.txt")
opt_name=$(core_args_load "${plan_dir_path}/args/name.txt")
opt_title=$(core_args_load "${plan_dir_path}/args/title.txt")
opt_arch=$(core_args_load "${plan_dir_path}/args/arch.txt")
opt_variant=$(core_args_load "${plan_dir_path}/args/variant.txt")
opt_keymap=$(core_args_load "${plan_dir_path}/args/keymap.txt")
opt_locale=$(core_args_load "${plan_dir_path}/args/locale.txt")
opt_timezone=$(core_args_load "${plan_dir_path}/args/timezone.txt")
opt_root_shell=$(core_args_load "${plan_dir_path}/args/root_shell.txt")
opt_linux_version=$(core_args_load "${plan_dir_path}/args/linux_version.txt")
#opt_kernel_args=$(core_args_load "${plan_dir_path}/args/kernel_args.txt")
#opt_package_install=$(core_args_load "${plan_dir_path}/args/package_install.txt")
#opt_service_start=$(core_args_load "${plan_dir_path}/args/service_start.txt")
#opt_iso_file_name="${opt_title}_${opt_variant}_${opt_locale}_${opt_arch}_${timestamp_start}.iso"


if [ "${IS_DEBUG}" = "true" ]; then

	echo
	echo "## ## Option"
	echo

	echo "opt_includedir=${opt_includedir}"
	echo "opt_env=${opt_env}"
	echo "opt_arch=${opt_arch}"
	echo "opt_name=${opt_name}"
	echo "opt_title=${opt_title}"
	echo "opt_variant=${opt_variant}"
	echo "opt_keymap=${opt_keymap}"
	echo "opt_locale=${opt_locale}"
	echo "opt_timezone=${opt_timezone}"
	echo "opt_root_shell=${opt_root_shell}"
	echo "opt_linux_version=${opt_linux_version}"
	echo "opt_kernel_args=${opt_kernel_args}"
	echo opt_package_install=${opt_package_install}
	echo opt_service_start=${opt_service_start}
	echo

fi
