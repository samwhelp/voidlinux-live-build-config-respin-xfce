
util_dir_copy () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"

	mkdir -p "${src_dir_path}"
	mkdir -p "${des_dir_path}"

	cp -rfT "${src_dir_path}" "${des_dir_path}"

}

util_file_copy () {

	local src_file_path="${1}"
	local des_file_path="${2}"

	local src_dir_path="$(dirname "${src_file_path}")"
	local des_dir_path="$(dirname "${des_file_path}")"

	mkdir -p "${src_dir_path}"
	mkdir -p "${des_dir_path}"

	if ! [ -e "${src_file_path}" ]; then
		echo
		echo "## ## File Not Exists: ${src_file_path}"
		echo
		return 0
	fi

	cp -f "${src_file_path}" "${des_file_path}"

}

util_file_append () {

	local src_file_path="${1}"
	local des_file_path="${2}"

	local src_dir_path="$(dirname "${src_file_path}")"
	local des_dir_path="$(dirname "${des_file_path}")"

	mkdir -p "${src_dir_path}"
	mkdir -p "${des_dir_path}"

	if ! [ -e "${src_file_path}" ]; then
		echo
		echo "## ## File Not Exists: ${src_file_path}"
		echo
		return 0
	fi

	cat "${src_file_path}" >> "${des_file_path}"

	#cat "${src_file_path}" | tee -a "${des_file_path}" >/dev/null 2>&1

}
