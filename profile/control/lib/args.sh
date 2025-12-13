

## args

if [ "${IS_DEBUG}" = "true" ]; then
	echo
	echo "##"
	echo "## ## Load Args"
	echo "##"
	echo
fi


opt_includedir="${plan_dir_path}/includedir"
opt_env=$(cat "${plan_dir_path}/args/env.txt")
opt_arch=$(cat "${plan_dir_path}/args/arch.txt")
opt_variant=$(cat "${plan_dir_path}/args/variant.txt")
#opt_keymap=$(cat "${plan_dir_path}/args/keymap.txt")
opt_locale=$(cat "${plan_dir_path}/args/locale.txt")
opt_root_shell=$(cat "${plan_dir_path}/args/root_shell.txt")
opt_title=$(cat "${plan_dir_path}/args/title.txt")
opt_linux_version=$(cat "${plan_dir_path}/args/linux_version.txt")
#opt_kernel_args=$(cat "${plan_dir_path}/args/kernel_args.txt")
#opt_package_install=$(cat "${plan_dir_path}/args/package_install.txt")
opt_service=$(cat "${plan_dir_path}/args/services.txt")
#opt_iso_file_name="${opt_title}_${opt_variant}_${opt_locale}_${opt_arch}_${timestamp_start}.iso"


if [ "${IS_DEBUG}" = "true" ]; then

	echo
	echo "## ## Option"
	echo

	echo "opt_includedir=${opt_includedir}"
	echo "opt_env=${opt_env}"
	echo "opt_arch=${opt_arch}"
	echo "opt_variant=${opt_variant}"
	echo "opt_keymap=${opt_keymap}"
	echo "opt_locale=${opt_locale}"
	echo "opt_root_shell=${opt_root_shell}"
	echo "opt_title=${opt_title}"
	echo "opt_linux_version=${opt_linux_version}"
	echo "opt_kernel_args=${opt_kernel_args}"
	echo opt_package_install=${opt_package_install}
	echo opt_service=${opt_service}
	echo

fi
