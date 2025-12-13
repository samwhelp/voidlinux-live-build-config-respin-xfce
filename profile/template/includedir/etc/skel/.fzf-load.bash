

################################################################################
##
## ~/.fzf-load.bash
##
################################################################################




################################################################################
### Head: fzf
##

##
## https://wiki.archlinux.org/title/fzf
##
##


##
## ## Arch
##
## $ sudo pacman -Sy --needed fzf
##
## source /usr/share/fzf/key-bindings.bash
##

[ -f /usr/share/fzf/key-bindings.bash ] && . /usr/share/fzf/key-bindings.bash


##
## ## Debian
##
## $ sudo apt-get install fzf
## $ dpkg -L fzf
##
## source /usr/share/doc/fzf/examples/key-bindings.bash
##

#[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && . /usr/share/doc/fzf/examples/key-bindings.bash


##
### Tail: fzf
################################################################################
