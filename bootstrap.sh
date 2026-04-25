#!/bin/bash
set -e

echo "→ Applying dotfiles..."

stow aliases git ohmyposh rss tmux zsh

echo "→ Applying DBeaver..."
./scripts/stow-dbeaver.sh

echo "✔ Done"
