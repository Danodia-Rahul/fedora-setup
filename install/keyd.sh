#!/usr/bin/env bash

set -euo pipefail

sudo dnf copr enable alternateved/keyd -y
sudo dnf install keyd -y

sudo mkdir -p /etc/keyd


sudo tee /etc/keyd/default.conf > /dev/null <<'EOF'
[ids]

*

[main]

capslock = esc
rightalt = leftcontrol

EOF

sudo systemctl enable keyd --now
sudo keyd reload
