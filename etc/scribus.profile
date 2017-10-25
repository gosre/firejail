# Firejail profile for scribus
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/scribus.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /run/user/*/bus

# Support for PDF readers comes with Scribus 1.5 and higher
noblacklist ~/.config/okularpartrc
noblacklist ~/.config/okularrc
noblacklist ~/.config/scribus
noblacklist ~/.config/scribusrc
noblacklist ~/.gimp*
noblacklist ~/.kde/share/apps/okular
noblacklist ~/.kde/share/config/okularpartrc
noblacklist ~/.kde/share/config/okularrc
noblacklist ~/.kde4/share/apps/okular
noblacklist ~/.kde4/share/config/okularpartrc
noblacklist ~/.kde4/share/config/okularrc
noblacklist ~/.local/share/okular
noblacklist ~/.local/share/scribus
noblacklist ~/.scribus

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
net none
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none
tracelog

# private-bin scribus,gs,gimp*
private-dev
private-tmp
