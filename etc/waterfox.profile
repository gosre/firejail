# Firejail profile for waterfox
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/waterfox.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.cache/mozilla
noblacklist ~/.cache/waterfox
noblacklist ~/.config/okularpartrc
noblacklist ~/.config/okularrc
noblacklist ~/.config/qpdfview
noblacklist ~/.kde/share/apps/okular
noblacklist ~/.kde/share/config/okularpartrc
noblacklist ~/.kde/share/config/okularrc
noblacklist ~/.kde4/share/apps/okular
noblacklist ~/.kde4/share/config/okularpartrc
noblacklist ~/.kde4/share/config/okularrc
noblacklist ~/.local/share/gnome-shell/extensions
noblacklist ~/.local/share/okular
noblacklist ~/.local/share/qpdfview
noblacklist ~/.mozilla
noblacklist ~/.waterfox
noblacklist ~/.pki

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

mkdir ~/.cache/mozilla/firefox
mkdir ~/.mozilla
mkdir ~/.cache/waterfox
mkdir ~/.waterfox
mkdir ~/.pki
whitelist ${DOWNLOADS}
whitelist ~/.cache/gnome-mplayer/plugin
whitelist ~/.cache/mozilla/firefox
whitelist ~/.cache/waterfox
whitelist ~/.config/gnome-mplayer
whitelist ~/.config/okularpartrc
whitelist ~/.config/okularrc
whitelist ~/.config/pipelight-silverlight5.1
whitelist ~/.config/pipelight-widevine
whitelist ~/.config/qpdfview
whitelist ~/.kde/share/apps/okular
whitelist ~/.kde/share/config/okularpartrc
whitelist ~/.kde/share/config/okularrc
whitelist ~/.kde4/share/apps/okular
whitelist ~/.kde4/share/config/okularpartrc
whitelist ~/.kde4/share/config/okularrc
whitelist ~/.keysnail.js
whitelist ~/.lastpass
whitelist ~/.local/share/gnome-shell/extensions
whitelist ~/.local/share/okular
whitelist ~/.local/share/qpdfview
whitelist ~/.mozilla
whitelist ~/.waterfox
whitelist ~/.pentadactyl
whitelist ~/.pentadactylrc
whitelist ~/.pki
whitelist ~/.vimperator
whitelist ~/.vimperatorrc
whitelist ~/.wine-pipelight
whitelist ~/.wine-pipelight64
whitelist ~/.zotero
whitelist ~/dwhelper
include /etc/firejail/whitelist-common.inc
include /etc/firejail/whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

# waterfox requires a shell to launch on Arch. We can possibly remove sh though.
# private-bin waterfox,which,sh,dbus-launch,dbus-send,env,bash
private-dev
# private-etc passwd,group,hostname,hosts,localtime,nsswitch.conf,resolv.conf,xdg,gtk-2.0,gtk-3.0,X11,pango,fonts,waterfox,mime.types,mailcap,asound.conf,pulse
private-tmp

noexec ${HOME}
noexec /tmp
