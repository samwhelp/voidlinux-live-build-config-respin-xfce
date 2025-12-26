
core_args_load () {

	##
	## trim newline version
	##


	local the_args_file="${1}"

	if ! [ -e "${the_args_file}" ]; then
		return
	fi


	local the_args=$(cat "${the_args_file}")

	echo ${the_args}

}


core_list_load () {

	##
	## not trim newline version
	##


	local the_list_file="${1}"

	if ! [ -e "${the_args_file}" ]; then
		return
	fi


	local the_list="$(cat "${the_list_file}")"

	echo "${the_list}"

}
