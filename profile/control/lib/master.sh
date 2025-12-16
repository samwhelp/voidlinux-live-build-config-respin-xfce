
master_iso_build_portal () {


	build_iso_profile_prepare

	master_iso_build_main



	return 0
}


build_iso_profile_prepare () {

	build_iso_profile_prepare_base

	build_iso_profile_prepare_hooks_head

	build_iso_profile_prepare_extra

	build_iso_profile_prepare_hooks_tail

}


build_iso_profile_prepare_base () {

	if [ -e "${build_root_dir_path}" ]; then
		rm -rf "${build_root_dir_path}"
	fi

	mkdir -p "${build_root_dir_path}"




	local src_dir_path="${template_root_dir_path}"
	local des_dir_path="${build_root_dir_path}/template"

	util_dir_copy "${src_dir_path}" "${des_dir_path}"




	return 0
}


build_iso_profile_prepare_hooks_head () {

	local src_dir_path="${skeleton_root_dir_path}/hooks"
	local des_dir_path="${build_root_dir_path}/template"

	util_dir_copy "${src_dir_path}" "${des_dir_path}"

	return 0
}


build_iso_profile_prepare_hooks_tail () {

	local src_dir_path="${build_root_dir_path}/template/args"
	local des_dir_path="${build_root_dir_path}/template/includedir/tmp/build/hooks/args"

	util_dir_copy "${src_dir_path}" "${des_dir_path}"

	echo 'chroot' | tee "${des_dir_path}/env.txt" >/dev/null 2>&1

	return 0
}

build_iso_profile_prepare_extra () {

	build_iso_profile_override_by_variant
	build_iso_profile_override_by_locale

	build_iso_profile_override_by_control




	build_iso_profile_append_by_variant
	build_iso_profile_append_by_locale




	return 0
}

build_iso_profile_override_by_variant () {

	local src_dir_path="${override_root_dir_path}/variant/${opt_variant}"
	local des_dir_path="${build_root_dir_path}/template"

	util_dir_copy "${src_dir_path}" "${des_dir_path}"

	return 0
}

build_iso_profile_override_by_locale () {

	local src_dir_path="${override_root_dir_path}/locale/${opt_locale}"
	local des_dir_path="${build_root_dir_path}/template"

	util_dir_copy "${src_dir_path}" "${des_dir_path}"

	return 0
}

build_iso_profile_override_by_control () {

	local src_dir_path="${control_root_dir_path}/args"
	local des_dir_path="${build_root_dir_path}/template/args"

	util_dir_copy "${src_dir_path}" "${des_dir_path}"


	echo 'build' | tee "${des_dir_path}/env.txt" >/dev/null 2>&1


	return 0
}

build_iso_profile_append_by_variant () {


	build_iso_profile_append_by_variant_package_install

	build_iso_profile_append_by_variant_service_start


	return 0
}

build_iso_profile_append_by_variant_package_install () {

	local src_dir_path="${append_root_dir_path}/variant/${opt_variant}"
	local des_dir_path="${build_root_dir_path}/template"


	local src_file_path="${src_dir_path}/args/package_install.txt"
	local des_file_path="${des_dir_path}/args/package_install.txt"


	util_file_append "${src_file_path}" "${des_file_path}"


	return 0
}

build_iso_profile_append_by_variant_service_start () {

	local src_dir_path="${append_root_dir_path}/variant/${opt_variant}"
	local des_dir_path="${build_root_dir_path}/template"


	local src_file_path="${src_dir_path}/args/service_start.txt"
	local des_file_path="${des_dir_path}/args/service_start.txt"


	util_file_append "${src_file_path}" "${des_file_path}"


	return 0
}

build_iso_profile_append_by_locale () {


	build_iso_profile_append_by_locale_package_install

	build_iso_profile_append_by_locale_service_start

	return 0
}

build_iso_profile_append_by_locale_package_install () {

	local src_dir_path="${append_root_dir_path}/locale/${opt_locale}"
	local des_dir_path="${build_root_dir_path}/template"


	local src_file_path="${src_dir_path}/args/package_install.txt"
	local des_file_path="${des_dir_path}/args/package_install.txt"


	util_file_append "${src_file_path}" "${des_file_path}"


	return 0
}

build_iso_profile_append_by_locale_service_start () {

	local src_dir_path="${append_root_dir_path}/locale/${opt_locale}"
	local des_dir_path="${build_root_dir_path}/template"


	local src_file_path="${src_dir_path}/args/service_start.txt"
	local des_file_path="${des_dir_path}/args/service_start.txt"


	util_file_append "${src_file_path}" "${des_file_path}"


	return 0
}

master_iso_build_main () {

	if [ "${ONLY_BUILD_TEMPLATE}" = "true" ]; then
		echo
		echo "##"
		echo "## ## Only Build Template"
		echo "##"
		echo
		echo "## > Please check dir:"
		echo
		echo "cd ${build_root_dir_path}"
		echo
		exit 0
	fi

	master_iso_build_delgate

}


master_iso_build_delgate () {

	"${build_root_dir_path}/template/build.sh"

}
