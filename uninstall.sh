#!/bin/sh

#!/bin/sh

cat << EOF
 _   _             _             ___________
| \\ | |           | |           |_   _|  _  \\
|  \\| | ___   ___ | |__ __________| | | | | |
| . \` |/ _ \\ / _ \\| '_ \\_  /______| | | | | |
| |\\  | (_) | (_) | |_) / /      _| |_| |/ /
\\_| \\_/\\___/ \\___/|_.__/___|     \\___/|___/

----------------------------------------------
- NoobzVPN-Server
- E-Mail: cholieztzuliz@gmail.com
- Github: Github: https://github.com/noobz-id
- Copyright (c) Noobz-ID Software
----------------------------------------------

EOF

BIN=/usr/bin
CONFIGS=/etc/noobzvpns
SYSTEMD=/etc/systemd/system
SYSTEMCTL=$(which systemctl)

if [ `id -u` != "0" ]; then
    echo "Error at uninstallation, please run uninstaller as root"
    exit 1
fi

echo "Uninstalling NoobzVpn-Server..."
if [ -f $SYSTEMD/noobzvpns.service ]; then
    $SYSTEMCTL stop noobzvpns.service
    $SYSTEMCTL disable noobzvpns.service
    rm $SYSTEMD/noobzvpns.service
    $SYSTEMCTL daemon-reload
fi
if [ -f $BIN/noobzvpns ]; then
    rm $BIN/noobzvpns
fi
if [ -d $CONFIGS ]; then
    rm -rf $CONFIGS
fi
echo "Uninstall NoobzVpn-Server completed"
