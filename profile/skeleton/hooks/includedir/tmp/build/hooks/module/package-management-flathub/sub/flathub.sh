

sub_flathub_install () {

	##
	## ## Setup flathub
	##

	echo "Setup flathub"

	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

}
