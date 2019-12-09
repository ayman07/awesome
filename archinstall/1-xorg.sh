#!/bin/bash

set -e

PKGS=(
        'xorg-server'
        'xf86-video-intel'
        'mesa'   
        'xf86-input-libinput'
        'xf86-video-amdgpu'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
