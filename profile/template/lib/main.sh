
main_iso_build_portal () {

	mod_iso_build_via_void_mklive


	## Run sync to be sure the file was finished to written
	info_msg "Run sync to be sure the file was finished to written"
	sync

	## Final message
	printf "Next files exist in 'dist' directory:\n${dist_root_dir_path}\n"

}


mod_iso_build_via_void_mklive () {

	## core start
	info_msg "## Building via void-mklive"

	local host_arch=$(xbps-uhelper arch)

	## prepare cache dir
	local xbps_cache_dir_path="${cache_root_dir_path}/xbps-cachedir-${opt_arch}"
	mkdir -p "${xbps_cache_dir_path}"

	local host_xbps_cache_dir_path="${cache_root_dir_path}/xbps-cachedir-${host_arch}"
	mkdir -p "${host_xbps_cache_dir_path}"


	## change working directory
	info_msg "Change working directory to 'void-mklive'"
	cd "${void_mklive_dir_path}"


	if [ "${IS_SIMULATION_GENERATION}" = "true" ]; then

		# Simulate Run void linux script to build iso file image
		info_msg "## Simulate run 'mkiso.sh' with the flags"
		echo sudo ./mkiso.sh \
			-a ${opt_arch} \
			-b ${opt_variant} \
			-- \
			-k ${opt_keymap} \
			-l ${opt_locale} \
			-e ${opt_root_shell} \
			-v ${opt_linux_version} \
			-r "${opt_repo}" \
			-x "${opt_postscript}" \
			-I "${opt_includedir}" \
			-c "${xbps_cache_dir_path}" \
			-H "${host_xbps_cache_dir_path}" \
			-o "${opt_iso_file_name}" \
			-T "${opt_title}" \
			-p "${opt_package_install}" \
			-S "${opt_service}" \
			-C "${opt_kernel_args}"

	else

		# Run void linux script to build iso file image
		info_msg "## Now run 'mkiso.sh' with the flags"
		sudo ./mkiso.sh \
			-a ${opt_arch} \
			-b ${opt_variant} \
			-- \
			-k ${opt_keymap} \
			-l ${opt_locale} \
			-e ${opt_root_shell} \
			-v ${opt_linux_version} \
			-r "${opt_repo}" \
			-x "${opt_postscript}" \
			-I "${opt_includedir}" \
			-c "${xbps_cache_dir_path}" \
			-H "${host_xbps_cache_dir_path}" \
			-o "${opt_iso_file_name}" \
			-T "${opt_title}" \
			-p "${opt_package_install}" \
			-S "${opt_service}" \
			-C "${opt_kernel_args}"

	fi


	mod_iso_build_move_iso_file_to_dist_folder "${opt_iso_file_name}"


	## Leave `void-mklive` directory
	info_msg "Change working directory to 'template'"
	cd "${OLDPWD}"


}


mod_iso_build_move_iso_file_to_dist_folder () {

	local iso_file_name="${1}"
	local iso_file_path="$(pwd)/${iso_file_name}"

	local file_hash=""

	if [ -e "${iso_file_path}" ]; then
		echo "${iso_file_path}"

		## Create hash file and move the files to `dist` directory
		info_msg "Create hash file and move the files to 'dist' directory"

		file_hash="$(sha256sum "${iso_file_name}")"
		echo ${file_hash} > "${iso_file_path}.sha256"

		## Run sync to be sure the file was finished to written
		info_msg "Run sync to be sure the file was finished to written"
		sync

		## Move the files to 'dist' directory
		info_msg "Move the files to 'dist' directory"
		mv "${iso_file_path}" "${dist_root_dir_path}/"
		mv "${iso_file_path}.sha256" "${dist_root_dir_path}/"

		echo
		info_msg "File:"
		echo "${dist_root_dir_path}/${iso_file_name}"
		echo "${dist_root_dir_path}/${iso_file_name}.sha256"
		echo

		##
		## tips
		##
		info_msg "Please check 'dist' directory"
		echo "cd ${dist_root_dir_path}"
		echo

	else

		echo "File ${iso_file_path} not exist, so not create the sha256 file for this"

	fi


}
