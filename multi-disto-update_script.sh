#!/bin/bash

distro=/etc/os-release

if grep -q -i "suse" $distro; then
        sudo zypper update -y && sudo zypper dist-upgrade -y && sudo zypper patch -y
        echo "last update: $(date)"

elif grep -q -i "rhel" $distro; then
        sudo dnf upgrade -y
        echo "last update: $(date)"

elif grep -q -i "ubuntu" $distro || grep -q -i "debian" $distro; then
        sudo apt update -y && sudo apt dist-upgrade -y
        echo "last update: $(date)"

else
        echo -e "No updates available!!!"

fi
