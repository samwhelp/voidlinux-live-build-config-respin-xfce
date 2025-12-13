
util_dir_copy () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"

	mkdir -p "${src_dir_path}"

	mkdir -p "${des_dir_path}"

	cp -rfT "${src_dir_path}" "${des_dir_path}"

}
