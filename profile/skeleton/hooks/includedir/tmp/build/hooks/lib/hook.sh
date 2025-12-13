
rundown_file_load () {
	cat "${1}"
}

hooks_run_by_rundown_file () {

	local module_root_dir_path="${plan_dir_path}/module"

	local module_list=$(rundown_file_load "${1}")

	local module_portal_file_path=""

	local module_name=""

	for module_name in ${module_list}; do


		module_portal_file_path="${module_root_dir_path}/${module_name}/install.sh"

		echo
		echo "##"
		echo "## ## chroot_hooks_module_run: ${module_portal_file_path}"
		echo "##"
		echo


		#bash "${module_portal_file_path}"

		[ -x "${module_portal_file_path}" ] && "${module_portal_file_path}"

	done
}
