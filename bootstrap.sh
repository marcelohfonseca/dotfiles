#!/bin/bash
set -e

echo "→ Applying dotfiles..."

stow zsh git tmux aliases rss ohmyposh positron

echo "→ Applying DBeaver..."
./scripts/stow-dbeaver.sh

echo "✔ Done"
