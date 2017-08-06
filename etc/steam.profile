# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/steam.local

# with >=llvm-4 mesa drivers need llvm stuff
noblacklist /usr/lib/llvm*

# Steam profile (applies to games/apps launched from Steam as well)
noblacklist ${HOME}/.java
noblacklist ${HOME}/.Steam
noblacklist ${HOME}/.steam
noblacklist ${HOME}/.Steampath
noblacklist ${HOME}/.steampath
noblacklist ${HOME}/.Steampid
noblacklist ${HOME}/.steampid
noblacklist ${HOME}/.local/share/Steam
noblacklist ${HOME}/.local/share/steam
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
#ipc-namespace
netfilter
nogroups
nonewprivs
noroot
#novideo
protocol unix,inet,inet6,netlink
seccomp
shell none

# tracelog disabled as it breaks integrated browser
#tracelog

private-dev
private-tmp
