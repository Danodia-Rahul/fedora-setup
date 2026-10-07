#!/usr/bin/env bash

set -euo pipefail

while IFS= read -r line; do
    sudo dnf install "$line" -y
done < "../packages/dnf.txt"
