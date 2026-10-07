#!/usr/bin/env bash

set -euo pipefail

echo "upgrading the system"
sudo dnf upgrade -y

echo "adding video codecs"

echo "Installing broswers"
bash ./install/browsers.sh

echo "Installing flatpak packages"
bash ./install/flatpak.sh
