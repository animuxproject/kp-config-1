%include fedora-live-workstation.ks
%include korora-base.ks


%packages

# KORORA GNOME CONFIGURATION
korora-backgrounds-gnome
korora-settings-gnome

-alacarte
-gnome-mplayer
-gnome-mplayer-nautilus
-gnome-shell-extension-gpaste
-gnome-shell-extension-native-window-placement
-gnome-shell-extension-pidgin
-im-chooser
-mencoder
-mplayer
-nemo
-nemo-extensions
-smartmontools
-system-config-printer
-thunderbird
-totem*
-transmission-gtk
-xscreensaver-base
-xscreensaver-extras
-xscreensaver-gl-extras
NetworkManager-adsl
NetworkManager-bluetooth
NetworkManager-iodine-gnome
NetworkManager-l2tp
NetworkManager-openconnect
NetworkManager-openswan-gnome
NetworkManager-openvpn-gnome
NetworkManager-pptp-gnome
NetworkManager-ssh-gnome
NetworkManager-vpnc-gnome
NetworkManager-wifi
NetworkManager-wwan
PackageKit-browser-plugin
PackageKit-gtk3-module
argyllcms
brasero
brasero-nautilus
brltty
control-center
darktable
dconf-editor
deja-dup
deluge
ekiga
empathy
evince
evolution
evolution-mapi
fbreader-gtk
ffmpeg
font-manager
gconf-editor
gloobus-preview
gnome-classic-session
gnome-disk-utility
gnome-packagekit
gnome-shell-extension-dash-to-dock
gnome-shell-extension-drive-menu
gnome-shell-extension-places-menu
gnome-shell-extension-pomodoro
gnome-shell-extension-user-theme
gnome-shell-extension-weather
gnome-shell-theme-*
gnome-system-log
gnome-tweak-tool
gnote
gpgme
gtk-murrine-engine
gtk-recordmydesktop
gtk-unico-engine
gvfs-*
gwibber
hardlink
iok
libmatroska
libmpg123
libproxy-networkmanager
libsane-hpaio
liferea
lirc
mtools
nautilus-extensions
nautilus-image-converter
nautilus-open-terminal
nautilus-sendto
ncftp
network-manager-applet
openshot
pcsc-lite
pcsc-lite-ccid
pharlap
pulseaudio-module-bluetooth
rhythmbox
shotwell
simple-scan
sound-juicer
soundconverter
strongswan
transcode
wget
x264
xfsprogs
xvidcore

%end


%post

cat >> /etc/rc.d/init.d/livesys << EOF

# KP - configure our favourite apps for live
  cat >> /usr/share/glib-2.0/schemas/org.korora.gschema.override << FOE
[org.gnome.shell]
favorite-apps=['firefox.desktop', 'evolution.desktop', 'vlc.desktop', 'shotwell.desktop', 'libreoffice-writer.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Documents.desktop', 'anaconda.desktop']
FOE

EOF


%end