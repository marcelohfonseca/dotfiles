#!/bin/bash
set -e

echo "→ Applying dotfiles..."

stow aliases git ohmyposh positron tmux zsh

echo "→ Applying DBeaver..."
./scripts/stow-dbeaver.sh

echo "✔ Done"
