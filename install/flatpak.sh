#!/usr/bin/env bash

set -euo pipefail

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

while IFS= read -r line; do
    [[ -z "$line" ]] && continue
    echo "installing "$line" from flathub"
    flatpak install flathub "$line" -y
done < "../packages/flatpak.txt"
