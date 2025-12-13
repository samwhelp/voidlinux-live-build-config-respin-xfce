

sub_sublime_text_install () {

	##
	## ## Install sublime-text
	##

	echo "Install sublime-text4"


	## find repo
	#xbps-query -Rs repo


	## install void-repo-nonfree
	xbps-install -Su -y void-repo-nonfree


	## update repo data
	xbps-install -S


	## install sublime-text4
	xbps-install -Su -y sublime-text4


	## add /usr/bin/subl symbolic link to /usr/bin/subl4
	cd /usr/bin
	ln -sf subl4 subl
	file /usr/bin/subl
	cd ${OLDPWD}

}
