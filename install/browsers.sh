#!/usr/bin/env bash

set -euo pipefail

echo "Installing Brave..."

sudo dnf install dnf-plugins-core -y
sudo dnf config-manager addrepo \
    --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf install brave-browser -y

echo "Brave is now installed."

echo "Installing Google Chrome..."

sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager setopt google-chrome.enabled=1
sudo dnf install google-chrome-stable -y

echo "Google Chrome is now installed."

