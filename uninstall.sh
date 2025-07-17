#!/bin/bash

set -e

INSTALL_DIR="$HOME/WinBox"
DESKTOP_FILE="$HOME/.local/share/applications/winbox.desktop"

echo "Removing WinBox files..."
rm -rf "$INSTALL_DIR"

echo "Removing desktop shortcut..."
rm -f "$DESKTOP_FILE"

echo "WinBox has been removed."
