#!/bin/bash

TARGET="$HOME/.local/share/DBeaverData/workspace6/.metadata/.plugins/org.eclipse.core.runtime/.settings"

stow -t "$TARGET" dbeaver
