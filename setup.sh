#!/usr/bin/env bash

set -euo pipefail

echo "upgrading the system"
sudo dnf upgrade -y

echo "adding video codecs"

echo "Installing broswers"
bash ./install/browsers.sh

echo "Installing flatpak packages"
bash ./install/flatpak.sh

echo "Installing ghostty"
bash ./install/ghostty.sh

echo "Installing yazi"
bash ./install/yazi.sh

echo "Setting up Keyd"
bash ./install/keyd.sh

echo "Setting up zsh"
bash ./install/zsh.sh

echo "Installing dnf packages"
bash ./install/dnf.sh
