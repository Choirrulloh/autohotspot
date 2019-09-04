#!/bin/bash

VERSION="1.9"

# This script installs the configure-autohotspot.sh script and creates the 
# autohotspot.desktop file

sudo cp $HOME/autohotspot/configure-autohotspot.sh /usr/local/bin/
cat > $HOME/.local/share/applications/autohotspot.desktop <<EOF
[Desktop Entry]
Name=Manage Auto-HotSpot
GenericName=Manage Auto-HotSpot
Comment=Install, configure or remove Auto-HotSpot
Exec=lxterminal --geometry=90x30 -t "Configure Auto-HotSpot" -e "/usr/local/bin/configure-autohotspot.sh"
Icon=/usr/share/icons/HighContrast/32x32/devices/network-wireless.png
Terminal=false
Type=Application
Categories=Settings;DesktopSettings;GTK;X-LXDE-Settings;
Comment[en_US]=Manage Auto-HotSpot
EOF
yad --title="Install Auto-HotSpot Files version $VERSION" --text "<b><big><big>Auto-HotSpot files are installed.\n\nClick Raspberry > Preferences > Manage Auto-HotSpot to configure.</big></big></b>" \
  --width=600 --no-wrap --center --buttons-layout=center \
  --text-align=center --borders=20 --button=OK:0
exit 0



