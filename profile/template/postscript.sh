#!/usr/bin/env bash


## args
ROOTFS="${1}"


##
## ## chroot hooks
##
if [ -x "${ROOTFS}/tmp/build/hooks/rundown.sh" ]; then
	echo
	echo "##"
	echo "## ## Runing chroot hooks ..."
	echo "##"
	echo
	chroot "${ROOTFS}" "/tmp/build/hooks/rundown.sh"
fi
