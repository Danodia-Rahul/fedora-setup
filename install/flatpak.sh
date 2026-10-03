#!/usr/bin/env bash

set -euo pipefail

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

while IFS= read -r app; do
    [[ -z "$app" || "$app" == \#* ]] && continue
    flatpak install -y flathub "$app"

done < "$(dirname "$0")/../packages/flatpak.txt"
