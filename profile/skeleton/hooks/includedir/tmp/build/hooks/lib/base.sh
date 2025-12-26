
check_root_user_required () {

	if [ "$(id -u)" -ne 0 ]; then
		echo "Must be run as root, exiting..."
		exit 1
	fi

}
