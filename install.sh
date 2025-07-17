#!/bin/bash

set -e

WINBOX_URL="https://download.mikrotik.com/routeros/winbox/4.0beta26/WinBox_Linux.zip"
ICON_URL="https://oruggtnet.is/wp-content/uploads/2025/02/MT_Symbol_Line_Black-e1739222629826.png"
INSTALL_DIR="$HOME/WinBox"
DESKTOP_FILE="$HOME/.local/share/applications/winbox.desktop"
ICON_PATH="$INSTALL_DIR/logo.png"

mkdir -p "$INSTALL_DIR"

echo "Downloading WinBox..."
wget -q --show-progress -O "$INSTALL_DIR/WinBox_Linux.zip" "$WINBOX_URL"

echo "Extracting..."
unzip -o "$INSTALL_DIR/WinBox_Linux.zip" -d "$INSTALL_DIR"

echo "Downloading icon..."
wget -q -O "$ICON_PATH" "$ICON_URL"

echo "Creating desktop shortcut..."
mkdir -p "$(dirname "$DESKTOP_FILE")"
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=WinBox
Comment=MikroTik WinBox for Linux
Exec=$INSTALL_DIR/WinBox
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Network;
EOF

chmod +x "$INSTALL_DIR/WinBox"

echo "Installation complete. WinBox is available in the applications menu."
