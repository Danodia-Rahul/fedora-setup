#!/usr/bin/env bash

set -euo pipefail

echo "==> setting up zsh"

# download zsh 
if command -v zsh >/dev/null 2>&1; then
    echo "installing zsh for fedora"
    sudo dnf install zsh -y
fi

# download zsh-syntax-highlighting

sudo dnf install zsh-syntax-highlighting -y

# install oh-my-zsh
if [[ ! -d "~/.oh-my-zsh/" ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh is already installed"
fi

# download zsh-autosuggestions
sudo dnf install zsh-autosuggestions -y
